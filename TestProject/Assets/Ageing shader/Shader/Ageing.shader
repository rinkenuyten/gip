// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33062,y:32780,varname:node_2865,prsc:2|diff-6343-OUT,spec-358-OUT,gloss-6067-OUT,normal-3847-OUT,difocc-920-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-1561-OUT,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31813,y:32824,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31290,y:32627,ptovrint:True,ptlb:Diffuse_New,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3383730c6ed069443bc976c0481c5725,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32120,y:33189,ptovrint:True,ptlb:Normal_New,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6f51364f0011ef648bb79b6d8736bd03,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:358,x:32237,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4497,x:30624,y:33031,ptovrint:False,ptlb:Age,ptin:_Age,varname:_Age_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:2117,x:30807,y:33225,ptovrint:False,ptlb:Trans_Map,ptin:_Trans_Map,varname:node_9416,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2870c427d3463f142bf713d568a6919b,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3449,x:31086,y:33087,varname:node_3449,prsc:2|A-4497-OUT,B-2117-RGB;n:type:ShaderForge.SFN_Lerp,id:3847,x:32414,y:33234,varname:node_3847,prsc:2|A-5964-RGB,B-857-RGB,T-5432-OUT;n:type:ShaderForge.SFN_Lerp,id:1561,x:31621,y:32892,varname:node_1561,prsc:2|A-7736-RGB,B-7174-RGB,T-5432-OUT;n:type:ShaderForge.SFN_Tex2d,id:7174,x:31277,y:32832,ptovrint:False,ptlb:Diffuse_Old,ptin:_Diffuse_Old,varname:node_7174,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:916cc8427bc1fec46b96a39e5a862ef3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:857,x:32137,y:33350,ptovrint:False,ptlb:Normal_Old,ptin:_Normal_Old,varname:node_857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:877044d8f71117a49992822bf8626b0d,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3319,x:31571,y:33194,ptovrint:False,ptlb:Gloss_New,ptin:_Gloss_New,varname:node_3319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:01340538d4e820843b458bfd85fc6679,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4229,x:31571,y:33389,ptovrint:False,ptlb:Gloss_Old,ptin:_Gloss_Old,varname:node_4229,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7253007a1d5788b43a5672eca725b99d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9531,x:32217,y:32976,varname:node_9531,prsc:2|A-3319-RGB,B-4229-RGB,T-5432-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6067,x:32679,y:32922,varname:node_6067,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2925-OUT;n:type:ShaderForge.SFN_Tex2d,id:4282,x:32379,y:33451,ptovrint:False,ptlb:AO_New,ptin:_AO_New,varname:node_4282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:20f012eab9dc2584a98b22724b5a0cfa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3978,x:32379,y:33630,ptovrint:False,ptlb:AO_Old,ptin:_AO_Old,varname:node_3978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:727255fa7175d784989efbc3394876c7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:3476,x:32568,y:33390,varname:node_3476,prsc:2|A-4282-RGB,B-3978-RGB,T-5432-OUT;n:type:ShaderForge.SFN_ComponentMask,id:920,x:32762,y:33365,varname:node_920,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3476-OUT;n:type:ShaderForge.SFN_Clamp01,id:5432,x:31277,y:33016,varname:node_5432,prsc:2|IN-3449-OUT;n:type:ShaderForge.SFN_Multiply,id:2925,x:32537,y:32986,varname:node_2925,prsc:2|A-9531-OUT,B-2933-OUT;n:type:ShaderForge.SFN_Slider,id:2933,x:32138,y:33133,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_2933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6832547,max:1;proporder:4497-358-6665-2117-7736-7174-3319-4229-5964-857-4282-3978-2933;pass:END;sub:END;*/

Shader "RakshiGames/Ageing" {
    Properties {
        _Age ("Age", Range(0, 1)) = 1
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _Trans_Map ("Trans_Map", 2D) = "gray" {}
        _MainTex ("Diffuse_New", 2D) = "white" {}
        _Diffuse_Old ("Diffuse_Old", 2D) = "white" {}
        _Gloss_New ("Gloss_New", 2D) = "white" {}
        _Gloss_Old ("Gloss_Old", 2D) = "white" {}
        _BumpMap ("Normal_New", 2D) = "bump" {}
        _Normal_Old ("Normal_Old", 2D) = "bump" {}
        _AO_New ("AO_New", 2D) = "white" {}
        _AO_Old ("AO_Old", 2D) = "white" {}
        _Gloss ("Gloss", Range(0, 1)) = 0.6832547
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Age;
            uniform sampler2D _Trans_Map; uniform float4 _Trans_Map_ST;
            uniform sampler2D _Diffuse_Old; uniform float4 _Diffuse_Old_ST;
            uniform sampler2D _Normal_Old; uniform float4 _Normal_Old_ST;
            uniform sampler2D _Gloss_New; uniform float4 _Gloss_New_ST;
            uniform sampler2D _Gloss_Old; uniform float4 _Gloss_Old_ST;
            uniform sampler2D _AO_New; uniform float4 _AO_New_ST;
            uniform sampler2D _AO_Old; uniform float4 _AO_Old_ST;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 _Normal_Old_var = UnpackNormal(tex2D(_Normal_Old,TRANSFORM_TEX(i.uv0, _Normal_Old)));
                float4 _Trans_Map_var = tex2D(_Trans_Map,TRANSFORM_TEX(i.uv0, _Trans_Map));
                float3 node_5432 = saturate((_Age*_Trans_Map_var.rgb));
                float3 normalLocal = lerp(_BumpMap_var.rgb,_Normal_Old_var.rgb,node_5432);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _Gloss_New_var = tex2D(_Gloss_New,TRANSFORM_TEX(i.uv0, _Gloss_New));
                float4 _Gloss_Old_var = tex2D(_Gloss_Old,TRANSFORM_TEX(i.uv0, _Gloss_Old));
                float gloss = (lerp(_Gloss_New_var.rgb,_Gloss_Old_var.rgb,node_5432)*_Gloss).r;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Diffuse_Old_var = tex2D(_Diffuse_Old,TRANSFORM_TEX(i.uv0, _Diffuse_Old));
                float3 diffuseColor = (lerp(_MainTex_var.rgb,_Diffuse_Old_var.rgb,node_5432)*_Color.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _AO_New_var = tex2D(_AO_New,TRANSFORM_TEX(i.uv0, _AO_New));
                float4 _AO_Old_var = tex2D(_AO_Old,TRANSFORM_TEX(i.uv0, _AO_Old));
                indirectDiffuse *= lerp(_AO_New_var.rgb,_AO_Old_var.rgb,node_5432).r; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Metallic;
            uniform float _Age;
            uniform sampler2D _Trans_Map; uniform float4 _Trans_Map_ST;
            uniform sampler2D _Diffuse_Old; uniform float4 _Diffuse_Old_ST;
            uniform sampler2D _Normal_Old; uniform float4 _Normal_Old_ST;
            uniform sampler2D _Gloss_New; uniform float4 _Gloss_New_ST;
            uniform sampler2D _Gloss_Old; uniform float4 _Gloss_Old_ST;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 _Normal_Old_var = UnpackNormal(tex2D(_Normal_Old,TRANSFORM_TEX(i.uv0, _Normal_Old)));
                float4 _Trans_Map_var = tex2D(_Trans_Map,TRANSFORM_TEX(i.uv0, _Trans_Map));
                float3 node_5432 = saturate((_Age*_Trans_Map_var.rgb));
                float3 normalLocal = lerp(_BumpMap_var.rgb,_Normal_Old_var.rgb,node_5432);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _Gloss_New_var = tex2D(_Gloss_New,TRANSFORM_TEX(i.uv0, _Gloss_New));
                float4 _Gloss_Old_var = tex2D(_Gloss_Old,TRANSFORM_TEX(i.uv0, _Gloss_Old));
                float gloss = (lerp(_Gloss_New_var.rgb,_Gloss_Old_var.rgb,node_5432)*_Gloss).r;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Diffuse_Old_var = tex2D(_Diffuse_Old,TRANSFORM_TEX(i.uv0, _Diffuse_Old));
                float3 diffuseColor = (lerp(_MainTex_var.rgb,_Diffuse_Old_var.rgb,node_5432)*_Color.rgb); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _Metallic, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metallic;
            uniform float _Age;
            uniform sampler2D _Trans_Map; uniform float4 _Trans_Map_ST;
            uniform sampler2D _Diffuse_Old; uniform float4 _Diffuse_Old_ST;
            uniform sampler2D _Gloss_New; uniform float4 _Gloss_New_ST;
            uniform sampler2D _Gloss_Old; uniform float4 _Gloss_Old_ST;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Diffuse_Old_var = tex2D(_Diffuse_Old,TRANSFORM_TEX(i.uv0, _Diffuse_Old));
                float4 _Trans_Map_var = tex2D(_Trans_Map,TRANSFORM_TEX(i.uv0, _Trans_Map));
                float3 node_5432 = saturate((_Age*_Trans_Map_var.rgb));
                float3 diffColor = (lerp(_MainTex_var.rgb,_Diffuse_Old_var.rgb,node_5432)*_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float4 _Gloss_New_var = tex2D(_Gloss_New,TRANSFORM_TEX(i.uv0, _Gloss_New));
                float4 _Gloss_Old_var = tex2D(_Gloss_Old,TRANSFORM_TEX(i.uv0, _Gloss_Old));
                float roughness = 1.0 - (lerp(_Gloss_New_var.rgb,_Gloss_Old_var.rgb,node_5432)*_Gloss).r;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
