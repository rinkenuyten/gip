Shader "Custom/Dissolve" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;

		struct FMaterialParticleParameters
		{
			/** Relative time [0-1]. */
			half RelativeTime;
			/** Fade amount due to motion blur. */
			half MotionBlurFade;
			/** Random value per particle [0-1]. */
			half Random;
			/** XYZ: Direction, W: Speed. */
			half4 Velocity;
			/** Per-particle color. */
			half4 Color;
			/** Particle translated world space position and size(radius). */
			float4 TranslatedWorldPositionAndSize;
			/** Macro UV scale and bias. */
			half4 MacroUV;
			/** Dynamic parameter used by particle systems. */
			half4 DynamicParameter;
			/** mesh particle orientation */
			float4x4 LocalToWorld;

			#if USE_PARTICLE_SUBUVS
			/** SubUV texture coordinates*/
			MaterialFloat2 SubUVCoords[2];
			/** SubUV interpolation value*/
			MaterialFloat SubUVLerp;
			#endif

			/** The size of the particle. */
			float2 Size;
		};

		float4 GetDynamicParameter(FMaterialParticleParameters Parameters, float4 Default)
		{
			#if PARTICLE_FACTORY
			return Parameters.DynamicParameter;
			#else
			return Default;
			#endif
		}

		/**
		* Parameters calculated from the pixel material inputs.
		*/
		struct FPixelMaterialInputs
		{
			float3 EmissiveColor;
			float3 Opacity;
			float3 OpacityMask;
			float3 BaseColor;
			float3 Metallic;
			float3 Specular;
			float3 Roughness;
			float3 Normal;
			float3 AmbientOcclusion;
			float3 Refraction;
			float3 PixelDepthOffset;

		};

		/**
		* Parameters needed by pixel shader material inputs, related to Geometry.
		* These are independent of vertex factory.
		*/
		struct FMaterialPixelParameters
		{
			#if NUM_TEX_COORD_INTERPOLATORS
			float2 TexCoords[NUM_TEX_COORD_INTERPOLATORS];
			#endif

			/** Interpolated vertex color, in linear color space. */
			half4 VertexColor;

			/** Normalized world space normal. */
			half3 WorldNormal;

			/** Normalized world space reflected camera vector. */
			half3 ReflectionVector;

			/** Normalized world space camera vector, which is the vector from the point being shaded to the camera position. */
			half3 CameraVector;

			/** World space light vector, only valid when rendering a light function. */
			half3 LightVector;

			/**
			* Like SV_Position (.xy is pixel position at pixel center, z:DeviceZ, .w:SceneDepth)
			* using shader generated value SV_POSITION
			* Note: this is not relative to the current viewport.  RelativePixelPosition = MaterialParameters.SvPosition.xy - View.ViewRectMin.xy;
			*/
			float4 SvPosition;

			/** Post projection position reconstructed from SvPosition, before the divide by W. left..top -1..1, bottom..top -1..1  within the viewport, W is the SceneDepth */
			float4 ScreenPosition;

			half UnMirrored;

			half TwoSidedSign;

			/**
			* Orthonormal rotation-only transform from tangent space to world space
			* The transpose(TangentToWorld) is WorldToTangent, and TangentToWorld[2] is WorldVertexNormal
			*/
			half3x3 TangentToWorld;

			/**
			* Interpolated worldspace position of this pixel
			* todo: Make this TranslatedWorldPosition and also rename the VS/DS/HS WorldPosition to be TranslatedWorldPosition
			*/
			float3 AbsoluteWorldPosition;

			/**
			* Interpolated worldspace position of this pixel, centered around the camera
			*/
			float3 WorldPosition_CamRelative;

			/**
			* Interpolated worldspace position of this pixel, not including any world position offset or displacement.
			* Only valid if shader is compiled with NEEDS_WORLD_POSITION_EXCLUDING_SHADER_OFFSETS, otherwise just contains 0
			*/
			float3 WorldPosition_NoOffsets;

			/**
			* Interpolated worldspace position of this pixel, not including any world position offset or displacement.
			* Only valid if shader is compiled with NEEDS_WORLD_POSITION_EXCLUDING_SHADER_OFFSETS, otherwise just contains 0
			*/
			float3 WorldPosition_NoOffsets_CamRelative;

			/** Offset applied to the lighting position for translucency, used to break up aliasing artifacts. */
			half3 LightingPositionOffset;

			float AOMaterialMask;

			#if LIGHTMAP_UV_ACCESS
			float2    LightmapUVs;
			#endif

			#if USE_INSTANCING
			half4 PerInstanceParams;
			#endif

			/** Per-particle properties. Only valid for particle vertex factories. */
			FMaterialParticleParameters Particle;

			#if (ES2_PROFILE || ES3_1_PROFILE)
			float4 LayerWeights;
			#endif

			#if TEX_COORD_SCALE_ANALYSIS
			/** Parameters used by the MaterialTexCoordScales shader. */
			FTexCoordScalesParams TexCoordScalesParams;
			#endif

			#if POST_PROCESS_MATERIAL && (FEATURE_LEVEL <= FEATURE_LEVEL_ES3_1)
			/** Used in mobile custom pp material to preserve original SceneColor Alpha */
			half BackupSceneColorAlpha;
			#endif

			#if COMPILER_HLSL
			// Workaround for "error X3067: 'GetObjectWorldPosition': ambiguous function call"
			// Which happens when FMaterialPixelParameters and FMaterialVertexParameters have the same number of floats with the HLSL compiler ver 9.29.952.3111
			// Function overload resolution appears to identify types based on how many floats / ints / etc they contain
			uint Dummy;
			#endif
		};

		// @todo compat hack
		FMaterialPixelParameters MakeInitializedMaterialPixelParameters()
		{
			FMaterialPixelParameters MPP;
			MPP = (FMaterialPixelParameters)0;
			MPP.TangentToWorld = float3x3(1, 0, 0, 0, 1, 0, 0, 0, 1);
			return MPP;
		}

		/**
		* Parameters needed by domain shader material inputs.
		* These are independent of vertex factory.
		*/
		struct FMaterialTessellationParameters
		{
			// Note: Customized UVs are only evaluated in the vertex shader, which is not really what you want with tessellation, but keeps the code simpler 
			// (tessellation texcoords are the same as pixels shader texcoords)
			#if NUM_TEX_COORD_INTERPOLATORS
			float2 TexCoords[NUM_TEX_COORD_INTERPOLATORS];
			#endif
			float4 VertexColor;
			// TODO: Non translated world position
			float3 WorldPosition;
			float3 TangentToWorldPreScale;

			// TangentToWorld[2] is WorldVertexNormal, [0] and [1] are binormal and tangent
			float3x3 TangentToWorld;
		};


		/**
		* Parameters needed by vertex shader material inputs.
		* These are independent of vertex factory.
		*/
		struct FMaterialVertexParameters
		{
			// Position in the translated world (VertexFactoryGetWorldPosition).
			// Previous position in the translated world (VertexFactoryGetPreviousWorldPosition) if
			//    computing material's output for previous frame (See {BasePassVertex,Velocity}Shader.usf).
			float3 WorldPosition;
			// TangentToWorld[2] is WorldVertexNormal
			half3x3 TangentToWorld;
			#if USE_INSTANCING
			/** Per-instance properties. */
			float4x4 InstanceLocalToWorld;
			float3 InstanceLocalPosition;
			float4 PerInstanceParams;
			#elif IS_MESHPARTICLE_FACTORY 
			/** Per-particle properties. */
			float4x4 InstanceLocalToWorld;
			#endif
			float3 PreSkinnedPosition;
			float3 PreSkinnedNormal;

			half4 VertexColor;
			#if NUM_MATERIAL_TEXCOORDS_VERTEX
			float2 TexCoords[NUM_MATERIAL_TEXCOORDS_VERTEX];
			#if (ES2_PROFILE || ES3_1_PROFILE)
			float2 TexCoordOffset; // Offset for UV localization for large UV values
			#endif
			#endif

								   /** Per-particle properties. Only valid for particle vertex factories. */
			FMaterialParticleParameters Particle;
		};


		float3 GetTranslatedWorldPosition(FMaterialVertexParameters Parameters)
		{
			return Parameters.WorldPosition;
		}

		float3 GetPrevTranslatedWorldPosition(FMaterialVertexParameters Parameters)
		{
			// Previous world position and current world position are sharing the
			// same attribute in Parameters, because in BasePassVertexShader.usf
			// and in VelocityShader.usf, we are regenerating a Parameters from
			// VertexFactoryGetPreviousWorldPosition() instead of
			// VertexFactoryGetWorldPosition().
			return GetTranslatedWorldPosition(Parameters);
		}

		/*
		float3 GetWorldPosition(FMaterialVertexParameters Parameters)
		{
			return GetTranslatedWorldPosition(Parameters) - ResolvedView.PreViewTranslation;
		}*/

		/*
		float3 GetPrevWorldPosition(FMaterialVertexParameters Parameters)
		{
			return GetPrevTranslatedWorldPosition(Parameters) - ResolvedView.PrevPreViewTranslation;
		}*/

		//TODO(bug UE-17131): We should compute world displacement for the previous frame
		float3 GetWorldPosition(FMaterialTessellationParameters Parameters)
		{
			return Parameters.WorldPosition;
		}
		 
		/*
		float3 GetTranslatedWorldPosition(FMaterialTessellationParameters Parameters)
		{
			return Parameters.WorldPosition + ResolvedView.PreViewTranslation;
		}*/

		float3 GetWorldPosition(FMaterialPixelParameters Parameters)
		{
			return Parameters.AbsoluteWorldPosition;
		}

		float3 GetWorldPosition_NoMaterialOffsets(FMaterialPixelParameters Parameters)
		{
			return Parameters.WorldPosition_NoOffsets;
		}

		float3 GetTranslatedWorldPosition(FMaterialPixelParameters Parameters)
		{
			return Parameters.WorldPosition_CamRelative;
		}

		float3 GetTranslatedWorldPosition_NoMaterialOffsets(FMaterialPixelParameters Parameters)
		{
			return Parameters.WorldPosition_NoOffsets_CamRelative;
		}

		/*
		float4 GetScreenPosition(FMaterialVertexParameters Parameters)
		{
			return mul(float4(Parameters.WorldPosition, 1.0f), ResolvedView.TranslatedWorldToClip);
		}*/

		float4 GetScreenPosition(FMaterialPixelParameters Parameters)
		{
			return Parameters.ScreenPosition;
		}

		/*
		float2 GetSceneTextureUV(FMaterialVertexParameters Parameters)
		{
			return ScreenAlignedPosition(GetScreenPosition(Parameters));
		}*/
		
		/*
		float2 GetSceneTextureUV(FMaterialPixelParameters Parameters)
		{
			return SvPositionToBufferUV(Parameters.SvPosition);
		}

		float2 GetViewportUV(FMaterialVertexParameters Parameters)
		{
			return BufferUVToViewportUV(GetSceneTextureUV(Parameters));
		}

		float2 GetViewportUV(FMaterialPixelParameters Parameters)
		{
			return SvPositionToViewportUV(Parameters.SvPosition);
			
		}*/

		
		#if DECAL_PRIMITIVE && NUM_MATERIAL_TEXCOORDS
		/*
		* Material node DecalMipmapLevel's code designed to avoid the 2x2 pixels artefacts on the edges around where the decal
		* is projected to. The technique is fetched from (http://www.humus.name/index.php?page=3D&ID=84).
		*
		* The problem around edges of the meshes, is that the hardware computes the mipmap level according to ddx(uv) and ddy(uv),
		* but since the pixel shader are invocated by group of 2x2 pixels, then on edges some pixel might be getting the
		* current depth of an differet mesh that the other pixel of the same groups. If this mesh is very far from the other
		* mesh of the same group of pixel, then one of the delta might be very big, leading to choosing a low mipmap level for this
		* group of 4 pixels, causing the artefacts.
		*/
		float2 ComputeDecalUVFromSvPosition(float4 SvPosition)
		{
			half DeviceZ = LookupDeviceZ(SvPositionToBufferUV(SvPosition));

			SvPosition.z = DeviceZ;

			float4 DecalVector = mul(float4(SvPosition.xyz, 1), SvPositionToDecal);
			DecalVector.xyz /= DecalVector.w;
			DecalVector = DecalVector * 0.5f + 0.5f;
			DecalVector.xyz = DecalVector.zyx;
			return DecalVector.xy;
		}

		float2 ComputeDecalDDX(FMaterialPixelParameters Parameters)
		{
			/*
			* Assuming where in a pixel shader invocation, then we compute manualy compute two d(uv)/d(x)
			* with the pixels's left and right neighbours.
			*/
			float4 ScreenDeltaX = float4(1, 0, 0, 0);
			float2 UvDiffX0 = Parameters.TexCoords[0] - ComputeDecalUVFromSvPosition(Parameters.SvPosition - ScreenDeltaX);
			float2 UvDiffX1 = ComputeDecalUVFromSvPosition(Parameters.SvPosition + ScreenDeltaX) - Parameters.TexCoords[0];

			/*
			* So we have two diff on the X axis, we want the one that has the smallest length
			* to avoid the 2x2 pixels mipmap artefacts on the edges.
			*/
			return dot(UvDiffX0, UvDiffX0) < dot(UvDiffX1, UvDiffX1) ? UvDiffX0 : UvDiffX1;
		}

		float2 ComputeDecalDDY(FMaterialPixelParameters Parameters)
		{
			// do same for the Y axis
			float4 ScreenDeltaY = float4(0, 1, 0, 0);
			float2 UvDiffY0 = Parameters.TexCoords[0] - ComputeDecalUVFromSvPosition(Parameters.SvPosition - ScreenDeltaY);
			float2 UvDiffY1 = ComputeDecalUVFromSvPosition(Parameters.SvPosition + ScreenDeltaY) - Parameters.TexCoords[0];

			return dot(UvDiffY0, UvDiffY0) < dot(UvDiffY1, UvDiffY1) ? UvDiffY0 : UvDiffY1;
		}

		float ComputeDecalMipmapLevel(FMaterialPixelParameters Parameters, float2 TextureSize)
		{
			float2 UvPixelDiffX = ComputeDecalDDX(Parameters) * TextureSize;
			float2 UvPixelDiffY = ComputeDecalDDY(Parameters) * TextureSize;

			// Computes the mipmap level
			float MaxDiff = max(dot(UvPixelDiffX, UvPixelDiffX), dot(UvPixelDiffY, UvPixelDiffY));
			return 0.5 * log2(MaxDiff);
		}
		#else // DECAL_PRIMITIVE && NUM_MATERIAL_TEXCOORDS
		float2 ComputeDecalDDX(FMaterialPixelParameters Parameters)
		{
			return 0.0f;
		}

		float2 ComputeDecalDDY(FMaterialPixelParameters Parameters)
		{
			return 0.0f;
		}

		float ComputeDecalMipmapLevel(FMaterialPixelParameters Parameters, float2 TextureSize)
		{
			return 0.0f;
		}
#endif // DECAL_PRIMITIVE && NUM_MATERIAL_TEXCOORDS





		// Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
		// See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
		// #pragma instancing_options assumeuniformscaling
		UNITY_INSTANCING_CBUFFER_START(Props)
			// put more per-instance properties here
		UNITY_INSTANCING_CBUFFER_END

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
