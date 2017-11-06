// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Melt/Muh-Example" {
	Properties{
		_Color("Color", Color) = (1,1,1,1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}
	_Glossiness("Smoothness", Range(0,1)) = 0.5
		_Metallic("Metallic", Range(0,1)) = 0.0
		_Melt("Meltyness", Range(0,1)) = 0.0
	}
		SubShader{
		Tags{ "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
		// this pragma sets up the Lighting model. it's boilerplate new surface shader stuff.
		// here we add vertex:vert and addshadow
		//
		//  "vertex:vert" lets us modify the vertices before unity runs its lighting code
		//  "addshadow" lets unity know we've modified the verts and to run this code 
		//              when it calculates the shadows cast and shadows received
#pragma surface surf Standard fullforwardshadows vertex:vert addshadow
#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		half _Melt;
		fixed4 _Color;

	void vert(inout appdata_full v, out Input o)
	{
		UNITY_INITIALIZE_OUTPUT(Input, o);

		float4 worldPos = mul(unity_ObjectToWorld, v.vertex);


		float floorY = 0;
		float distanceToMelt = 2;
		float distanceToFloor = (worldPos.y - floorY);
		float melt = distanceToFloor / distanceToMelt;


		melt = 1 - saturate(melt);

		float4 worldNormal = mul(unity_ObjectToWorld, float4(v.normal, 0));
		worldPos.xz += worldNormal.xz * _Melt;
		worldPos.y -= worldNormal.y * (_Melt / 2);
		v.vertex = mul(unity_WorldToObject, worldPos);

	}

	void surf(Input IN, inout SurfaceOutputStandard o) {
		// Albedo comes from a texture tinted by color
		fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
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