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

		// we need to find the position of each vertex in world space.
		float4 worldPos = mul(unity_ObjectToWorld, v.vertex);

		// we only care about how close we are to the floor. for simplicity this is at y = 0;
		float floorY = 0;
		float distanceToMelt = 2;

		float distanceToFloor = (worldPos.y - floorY);

		float melt = distanceToFloor / distanceToMelt;

		// now we have a 'melt' value, but it's actually the reverse of what we want
		// also it will affect verts above the distance we melt by sucking them in

		melt = 1 - saturate(melt);

		// saturate is like Clamp01, giving us a nice value between 0 and 1,
		// then we flip it so it's greater the closer to the floor

		// we need to find the normal of the vertex in world space to know which way to push the verts
		// need to make normal a float4. opengl/metal wont build with mul(float4x4, float3)
		float4 worldNormal = mul(unity_ObjectToWorld, float4(v.normal, 0));

		// push the vert out forwards and sideways by how much 'melt' is
			worldPos.xz += worldNormal.xz * _Melt;
		//if (melt > distanceToFloor) {
			worldPos.y -= worldNormal.y * (_Melt / 2);
		//}


		// all that's left now is to update the actual vertex data that's sent to the surf function
		// we take our modified world space vert and put it back into object space

		v.vertex = mul(unity_WorldToObject, worldPos);

		// this covers the basics, next steps are
		//  - reorient the normals based on their new position (bonus points for fragment normal reorienation)
		//  - pass 'melt' value to the surf/frag function
		//  - giving the melt a nice curve rather than a straight line (*cough* 'pow(x,y)')
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