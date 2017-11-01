// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6343-OUT,spec-2419-OUT,gloss-2419-OUT,emission-864-OUT,clip-5687-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32636,y:32503,varname:node_6343,prsc:2|A-8370-OUT,B-7736-R;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32216,y:32534,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:8370,x:32430,y:32385,varname:node_8370,prsc:2|A-3009-RGB,B-8865-RGB,T-7736-G;n:type:ShaderForge.SFN_Color,id:3009,x:32197,y:32173,ptovrint:False,ptlb:colorTop,ptin:_colorTop,varname:node_3009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6156863,c3:0.1647059,c4:1;n:type:ShaderForge.SFN_Color,id:8865,x:32197,y:32351,ptovrint:False,ptlb:ColorBottom,ptin:_ColorBottom,varname:node_8865,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9647059,c2:0.9411765,c3:0.8666667,c4:1;n:type:ShaderForge.SFN_Multiply,id:864,x:32487,y:32810,varname:node_864,prsc:2|A-4958-OUT,B-8914-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8914,x:32284,y:33014,ptovrint:False,ptlb:emissiveamount,ptin:_emissiveamount,varname:node_8914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3.3;n:type:ShaderForge.SFN_If,id:4958,x:32284,y:32762,varname:node_4958,prsc:2|A-9271-OUT,B-3718-R,GT-3979-RGB,EQ-5094-OUT,LT-5094-OUT;n:type:ShaderForge.SFN_If,id:9271,x:31866,y:32689,varname:node_9271,prsc:2|A-2209-OUT,B-4933-OUT,GT-3184-OUT,EQ-4933-OUT,LT-4933-OUT;n:type:ShaderForge.SFN_Color,id:3979,x:31894,y:32865,ptovrint:False,ptlb:glow_color,ptin:_glow_color,varname:node_3979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5529412,c2:0.9019608,c3:0.3333333,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3718,x:31907,y:33030,ptovrint:False,ptlb:Dissolve,ptin:_Dissolve,varname:node_3718,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:36cf8eab4ebc4de4c866e4d02d61d7cd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector3,id:5094,x:32150,y:32998,varname:node_5094,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:2209,x:31576,y:32810,ptovrint:False,ptlb:dissolve_amount,ptin:_dissolve_amount,varname:node_2209,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:4933,x:31574,y:32692,varname:node_4933,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:3184,x:31693,y:32959,varname:node_3184,prsc:2|A-2209-OUT,B-9596-OUT;n:type:ShaderForge.SFN_Divide,id:9596,x:31463,y:32994,varname:node_9596,prsc:2|A-5690-OUT,B-821-OUT;n:type:ShaderForge.SFN_Vector1,id:821,x:31407,y:33159,varname:node_821,prsc:2,v1:100;n:type:ShaderForge.SFN_ValueProperty,id:5690,x:31388,y:32890,ptovrint:False,ptlb:fringe,ptin:_fringe,varname:node_5690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_If,id:8978,x:31993,y:33230,varname:node_8978,prsc:2|A-2209-OUT,B-3718-R,GT-4443-OUT,EQ-4443-OUT,LT-8291-OUT;n:type:ShaderForge.SFN_If,id:5687,x:32209,y:33230,varname:node_5687,prsc:2|A-2209-OUT,B-3214-OUT,GT-8978-OUT,EQ-3214-OUT,LT-3214-OUT;n:type:ShaderForge.SFN_Vector1,id:3214,x:31962,y:33392,varname:node_3214,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4443,x:31740,y:33275,varname:node_4443,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8291,x:31719,y:33376,varname:node_8291,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2419,x:32426,y:32660,varname:node_2419,prsc:2,v1:0.5;proporder:7736-3009-8865-8914-3979-3718-2209-5690;pass:END;sub:END;*/

Shader "Shader Forge/testshader2" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _colorTop ("colorTop", Color) = (1,0.6156863,0.1647059,1)
        _ColorBottom ("ColorBottom", Color) = (0.9647059,0.9411765,0.8666667,1)
        _emissiveamount ("emissiveamount", Float ) = 3.3
        _glow_color ("glow_color", Color) = (0.5529412,0.9019608,0.3333333,1)
        _Dissolve ("Dissolve", 2D) = "white" {}
        _dissolve_amount ("dissolve_amount", Float ) = 0.4
        _fringe ("fringe", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            
            
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _colorTop;
            uniform float4 _ColorBottom;
            uniform float _emissiveamount;
            uniform float4 _glow_color;
            uniform sampler2D _Dissolve; uniform float4 _Dissolve_ST;
            uniform float _dissolve_amount;
            uniform float _fringe;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_3214 = 0.0;
                float node_5687_if_leA = step(_dissolve_amount,node_3214);
                float node_5687_if_leB = step(node_3214,_dissolve_amount);
                float4 _Dissolve_var = tex2D(_Dissolve,TRANSFORM_TEX(i.uv0, _Dissolve));
                float node_8978_if_leA = step(_dissolve_amount,_Dissolve_var.r);
                float node_8978_if_leB = step(_Dissolve_var.r,_dissolve_amount);
                float node_4443 = 0.0;
                clip(lerp((node_5687_if_leA*node_3214)+(node_5687_if_leB*lerp((node_8978_if_leA*1.0)+(node_8978_if_leB*node_4443),node_4443,node_8978_if_leA*node_8978_if_leB)),node_3214,node_5687_if_leA*node_5687_if_leB) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_2419 = 0.5;
                float gloss = node_2419;
                float perceptualRoughness = 1.0 - node_2419;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
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
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_2419;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (lerp(_colorTop.rgb,_ColorBottom.rgb,_MainTex_var.g)*_MainTex_var.r); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_4933 = 0.0;
                float node_9271_if_leA = step(_dissolve_amount,node_4933);
                float node_9271_if_leB = step(node_4933,_dissolve_amount);
                float node_4958_if_leA = step(lerp((node_9271_if_leA*node_4933)+(node_9271_if_leB*(_dissolve_amount+(_fringe/100.0))),node_4933,node_9271_if_leA*node_9271_if_leB),_Dissolve_var.r);
                float node_4958_if_leB = step(_Dissolve_var.r,lerp((node_9271_if_leA*node_4933)+(node_9271_if_leB*(_dissolve_amount+(_fringe/100.0))),node_4933,node_9271_if_leA*node_9271_if_leB));
                float3 node_5094 = float3(0,0,0);
                float3 emissive = (lerp((node_4958_if_leA*node_5094)+(node_4958_if_leB*_glow_color.rgb),node_5094,node_4958_if_leA*node_4958_if_leB)*_emissiveamount);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _colorTop;
            uniform float4 _ColorBottom;
            uniform float _emissiveamount;
            uniform float4 _glow_color;
            uniform sampler2D _Dissolve; uniform float4 _Dissolve_ST;
            uniform float _dissolve_amount;
            uniform float _fringe;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float node_3214 = 0.0;
                float node_5687_if_leA = step(_dissolve_amount,node_3214);
                float node_5687_if_leB = step(node_3214,_dissolve_amount);
                float4 _Dissolve_var = tex2D(_Dissolve,TRANSFORM_TEX(i.uv0, _Dissolve));
                float node_8978_if_leA = step(_dissolve_amount,_Dissolve_var.r);
                float node_8978_if_leB = step(_Dissolve_var.r,_dissolve_amount);
                float node_4443 = 0.0;
                clip(lerp((node_5687_if_leA*node_3214)+(node_5687_if_leB*lerp((node_8978_if_leA*1.0)+(node_8978_if_leB*node_4443),node_4443,node_8978_if_leA*node_8978_if_leB)),node_3214,node_5687_if_leA*node_5687_if_leB) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_2419 = 0.5;
                float gloss = node_2419;
                float perceptualRoughness = 1.0 - node_2419;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_2419;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = (lerp(_colorTop.rgb,_ColorBottom.rgb,_MainTex_var.g)*_MainTex_var.r); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
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
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Dissolve; uniform float4 _Dissolve_ST;
            uniform float _dissolve_amount;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_3214 = 0.0;
                float node_5687_if_leA = step(_dissolve_amount,node_3214);
                float node_5687_if_leB = step(node_3214,_dissolve_amount);
                float4 _Dissolve_var = tex2D(_Dissolve,TRANSFORM_TEX(i.uv0, _Dissolve));
                float node_8978_if_leA = step(_dissolve_amount,_Dissolve_var.r);
                float node_8978_if_leB = step(_Dissolve_var.r,_dissolve_amount);
                float node_4443 = 0.0;
                clip(lerp((node_5687_if_leA*node_3214)+(node_5687_if_leB*lerp((node_8978_if_leA*1.0)+(node_8978_if_leB*node_4443),node_4443,node_8978_if_leA*node_8978_if_leB)),node_3214,node_5687_if_leA*node_5687_if_leB) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _colorTop;
            uniform float4 _ColorBottom;
            uniform float _emissiveamount;
            uniform float4 _glow_color;
            uniform sampler2D _Dissolve; uniform float4 _Dissolve_ST;
            uniform float _dissolve_amount;
            uniform float _fringe;
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
                
                float node_4933 = 0.0;
                float node_9271_if_leA = step(_dissolve_amount,node_4933);
                float node_9271_if_leB = step(node_4933,_dissolve_amount);
                float4 _Dissolve_var = tex2D(_Dissolve,TRANSFORM_TEX(i.uv0, _Dissolve));
                float node_4958_if_leA = step(lerp((node_9271_if_leA*node_4933)+(node_9271_if_leB*(_dissolve_amount+(_fringe/100.0))),node_4933,node_9271_if_leA*node_9271_if_leB),_Dissolve_var.r);
                float node_4958_if_leB = step(_Dissolve_var.r,lerp((node_9271_if_leA*node_4933)+(node_9271_if_leB*(_dissolve_amount+(_fringe/100.0))),node_4933,node_9271_if_leA*node_9271_if_leB));
                float3 node_5094 = float3(0,0,0);
                o.Emission = (lerp((node_4958_if_leA*node_5094)+(node_4958_if_leB*_glow_color.rgb),node_5094,node_4958_if_leA*node_4958_if_leB)*_emissiveamount);
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffColor = (lerp(_colorTop.rgb,_ColorBottom.rgb,_MainTex_var.g)*_MainTex_var.r);
                float specularMonochrome;
                float3 specColor;
                float node_2419 = 0.5;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_2419, specColor, specularMonochrome );
                float roughness = 1.0 - node_2419;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
