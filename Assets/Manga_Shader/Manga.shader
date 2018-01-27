// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:True,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,dith:2,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:0,x:34250,y:31953,varname:node_0,prsc:2|emission-64-OUT,olwid-5118-OUT;n:type:ShaderForge.SFN_Dot,id:40,x:32973,y:32233,varname:node_40,prsc:2,dt:1|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:32709,y:32400,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:32709,y:32268,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Dot,id:52,x:32894,y:32839,varname:node_52,prsc:2,dt:1|A-41-OUT,B-62-OUT;n:type:ShaderForge.SFN_Add,id:55,x:33785,y:32259,varname:node_55,prsc:2|A-84-OUT,B-7279-OUT,C-734-OUT;n:type:ShaderForge.SFN_HalfVector,id:62,x:32741,y:32849,varname:node_62,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34056,y:32155,varname:node_64,prsc:2|A-9016-OUT,B-55-OUT,C-9034-RGB;n:type:ShaderForge.SFN_Tex2d,id:82,x:32800,y:32002,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,tex:a9d5d25212cc157409fff5c1f23a4f91,ntxv:0,isnm:False|UVIN-70-OUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33573,y:32128,cmnt:Diffuse Light,varname:node_84,prsc:2|A-2925-OUT,B-3519-OUT;n:type:ShaderForge.SFN_AmbientLight,id:187,x:33573,y:32280,varname:node_187,prsc:2;n:type:ShaderForge.SFN_Slider,id:239,x:32062,y:33156,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,min:0,cur:0.4511278,max:1;n:type:ShaderForge.SFN_Add,id:240,x:32573,y:33209,varname:node_240,prsc:2|A-242-OUT,B-241-OUT;n:type:ShaderForge.SFN_Vector1,id:241,x:32405,y:33297,varname:node_241,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:242,x:32405,y:33147,varname:node_242,prsc:2|A-239-OUT,B-243-OUT;n:type:ShaderForge.SFN_Vector1,id:243,x:32219,y:33226,varname:node_243,prsc:2,v1:10;n:type:ShaderForge.SFN_Exp,id:244,x:32842,y:33092,varname:node_244,prsc:2,et:1|IN-240-OUT;n:type:ShaderForge.SFN_TexCoord,id:272,x:32970,y:31250,varname:node_272,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:173,x:33396,y:31318,ptovrint:False,ptlb:Shadow,ptin:_Shadow,varname:node_173,prsc:2,tex:0475f420055aba9489906362f6a998a9,ntxv:0,isnm:False|UVIN-7062-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4337,x:33877,y:31361,varname:node_4337,prsc:2|A-5884-OUT,B-757-OUT;n:type:ShaderForge.SFN_LightVector,id:6505,x:32867,y:31649,varname:node_6505,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:1691,x:33542,y:31902,varname:node_1691,prsc:2|IN-7010-OUT;n:type:ShaderForge.SFN_NormalVector,id:4075,x:32851,y:31792,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7010,x:33089,y:31837,varname:node_7010,prsc:2,dt:0|A-6505-OUT,B-4075-OUT;n:type:ShaderForge.SFN_Multiply,id:9689,x:33194,y:31303,varname:node_9689,prsc:2|A-272-UVOUT,B-6013-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6013,x:33016,y:31431,ptovrint:False,ptlb:ShadowTile,ptin:_ShadowTile,varname:node_6013,prsc:2,glob:False,v1:20;n:type:ShaderForge.SFN_Floor,id:197,x:33620,y:31634,varname:node_197,prsc:2|IN-2066-OUT;n:type:ShaderForge.SFN_Multiply,id:2066,x:33589,y:31764,varname:node_2066,prsc:2|A-8456-OUT,B-1691-OUT;n:type:ShaderForge.SFN_Vector1,id:8456,x:33411,y:31678,varname:node_8456,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:9016,x:33839,y:32012,varname:node_9016,prsc:2|A-4378-OUT,B-84-OUT;n:type:ShaderForge.SFN_Desaturate,id:2616,x:32963,y:31962,varname:node_2616,prsc:2|COL-82-RGB;n:type:ShaderForge.SFN_Desaturate,id:5884,x:33656,y:31234,varname:node_5884,prsc:2|COL-173-RGB;n:type:ShaderForge.SFN_Multiply,id:4378,x:34171,y:31695,varname:node_4378,prsc:2|A-4337-OUT,B-6567-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6567,x:34032,y:31809,ptovrint:False,ptlb:ShadowBrightness,ptin:_ShadowBrightness,varname:node_6567,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:7949,x:33123,y:32026,varname:node_7949,prsc:2|A-2616-OUT,B-7258-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7258,x:32963,y:32114,ptovrint:False,ptlb:DiffuseBrightness,ptin:_DiffuseBrightness,varname:_ShadowBrightness_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3314,x:33214,y:32317,varname:node_3314,prsc:2|A-40-OUT,B-8609-OUT;n:type:ShaderForge.SFN_Clamp01,id:1542,x:33384,y:32302,varname:node_1542,prsc:2|IN-3314-OUT;n:type:ShaderForge.SFN_OneMinus,id:9085,x:33831,y:31775,varname:node_9085,prsc:2|IN-1542-OUT;n:type:ShaderForge.SFN_Add,id:7150,x:33831,y:31657,varname:node_7150,prsc:2|A-197-OUT,B-9085-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3519,x:33356,y:32174,ptovrint:False,ptlb:Diffuse_Soft_Edge,ptin:_Diffuse_Soft_Edge,varname:node_3519,prsc:2,on:True|A-5207-OUT,B-1542-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:757,x:33656,y:31445,ptovrint:False,ptlb:Shadow_Soft_Edge,ptin:_Shadow_Soft_Edge,varname:_Shadow_Soft_Edge_copy,prsc:2,on:True|A-197-OUT,B-9085-OUT;n:type:ShaderForge.SFN_TexCoord,id:8065,x:32546,y:33616,varname:node_8065,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:800,x:33019,y:33678,ptovrint:False,ptlb:GlossTex,ptin:_GlossTex,varname:_Shadow_copy,prsc:2,tex:3d81a826ffe96c64b9dead67dea5dc78,ntxv:0,isnm:False|UVIN-2321-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1937,x:32756,y:33837,varname:node_1937,prsc:2|A-8065-UVOUT,B-2638-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2638,x:32546,y:33797,ptovrint:False,ptlb:GlossTile,ptin:_GlossTile,varname:_ShadowTile_copy,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Desaturate,id:3341,x:33196,y:33664,varname:node_3341,prsc:2|COL-800-RGB;n:type:ShaderForge.SFN_Ceil,id:5207,x:33177,y:32191,varname:node_5207,prsc:2|IN-40-OUT;n:type:ShaderForge.SFN_TexCoord,id:5217,x:32291,y:32031,varname:node_5217,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:70,x:32519,y:32110,varname:node_70,prsc:2|A-5217-UVOUT,B-3348-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3348,x:32291,y:32212,ptovrint:False,ptlb:DiffuseTile,ptin:_DiffuseTile,varname:_GlossTile_copy,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5118,x:34004,y:32372,ptovrint:False,ptlb:Outline,ptin:_Outline,varname:node_5118,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_LightColor,id:9034,x:33785,y:32414,varname:node_9034,prsc:2;n:type:ShaderForge.SFN_Power,id:5605,x:33035,y:33228,varname:node_5605,prsc:2|VAL-52-OUT,EXP-8590-OUT;n:type:ShaderForge.SFN_Power,id:6743,x:33189,y:32870,varname:node_6743,prsc:2|VAL-52-OUT,EXP-244-OUT;n:type:ShaderForge.SFN_Multiply,id:207,x:33418,y:32833,varname:node_207,prsc:2|A-6743-OUT,B-9823-OUT;n:type:ShaderForge.SFN_Vector1,id:734,x:33631,y:32400,varname:node_734,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:8567,x:33536,y:33060,varname:node_8567,prsc:2|A-6542-OUT,B-1486-OUT;n:type:ShaderForge.SFN_Multiply,id:1486,x:33428,y:33298,varname:node_1486,prsc:2|A-3341-OUT,B-704-OUT;n:type:ShaderForge.SFN_Vector1,id:704,x:33248,y:33332,varname:node_704,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Slider,id:8609,x:32894,y:32396,ptovrint:False,ptlb:SoftEdge_Amound,ptin:_SoftEdge_Amound,varname:node_8609,prsc:2,min:1,cur:5,max:20;n:type:ShaderForge.SFN_Lerp,id:8503,x:33707,y:33041,varname:node_8503,prsc:2|A-8567-OUT,B-1984-OUT,T-8567-OUT;n:type:ShaderForge.SFN_Lerp,id:924,x:33626,y:32902,varname:node_924,prsc:2|A-207-OUT,B-2594-OUT,T-207-OUT;n:type:ShaderForge.SFN_Vector1,id:1984,x:33672,y:33220,varname:node_1984,prsc:2,v1:1;n:type:ShaderForge.SFN_Exp,id:8590,x:32816,y:33344,varname:node_8590,prsc:2,et:1|IN-240-OUT;n:type:ShaderForge.SFN_Vector1,id:2594,x:33455,y:32951,varname:node_2594,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Subtract,id:6571,x:34022,y:32978,varname:node_6571,prsc:2|A-8503-OUT,B-924-OUT;n:type:ShaderForge.SFN_Slider,id:9823,x:33060,y:33033,ptovrint:False,ptlb:Gloss_Ring_Inner,ptin:_Gloss_Ring_Inner,varname:node_9823,prsc:2,min:1,cur:2,max:10;n:type:ShaderForge.SFN_Multiply,id:6542,x:33312,y:33174,varname:node_6542,prsc:2|A-5605-OUT,B-3738-OUT;n:type:ShaderForge.SFN_Slider,id:3738,x:32972,y:33409,ptovrint:False,ptlb:Gloss_Ring_Outer,ptin:_Gloss_Ring_Outer,varname:_Gloss_Ring_copy,prsc:2,min:1,cur:1,max:10;n:type:ShaderForge.SFN_SwitchProperty,id:7279,x:33614,y:32551,ptovrint:False,ptlb:NoGloss,ptin:_NoGloss,varname:_Diffuse_Soft_Edge_copy,prsc:2,on:True|A-6571-OUT,B-9273-OUT;n:type:ShaderForge.SFN_Vector1,id:9273,x:33306,y:32608,varname:node_9273,prsc:2,v1:0;n:type:ShaderForge.SFN_Posterize,id:4776,x:33330,y:31762,varname:node_4776,prsc:2|IN-7949-OUT,STPS-4698-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2925,x:33355,y:32036,ptovrint:False,ptlb:Toonify,ptin:_Toonify,varname:node_2925,prsc:2,on:False|A-7949-OUT,B-4776-OUT;n:type:ShaderForge.SFN_Slider,id:4698,x:33241,y:31949,ptovrint:False,ptlb:ToonifySteps,ptin:_ToonifySteps,varname:node_4698,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Rotator,id:7062,x:33248,y:31125,varname:node_7062,prsc:2|UVIN-9689-OUT,PIV-5298-OUT,ANG-8771-OUT;n:type:ShaderForge.SFN_Vector2,id:5298,x:32987,y:30992,varname:node_5298,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Slider,id:8771,x:32860,y:31143,ptovrint:False,ptlb:Shadow_Angle,ptin:_Shadow_Angle,varname:node_8771,prsc:2,min:0,cur:0,max:1.567;n:type:ShaderForge.SFN_Rotator,id:2321,x:32855,y:34056,varname:node_2321,prsc:2|UVIN-1937-OUT,ANG-3838-OUT;n:type:ShaderForge.SFN_Slider,id:3838,x:32478,y:34099,ptovrint:False,ptlb:Gloss_Angle,ptin:_Gloss_Angle,varname:node_3838,prsc:2,min:0,cur:0,max:1.567;proporder:5118-2925-4698-82-3348-7258-3519-173-8771-6013-6567-757-8609-800-3838-239-2638-9823-3738-7279;pass:END;sub:END;*/

Shader "Crowsfield/Manga" {
    Properties {
        _Outline ("Outline", Float ) = 0
        [MaterialToggle] _Toonify ("Toonify", Float ) = 1
        _ToonifySteps ("ToonifySteps", Range(0, 10)) = 0
        _Diffuse ("Diffuse", 2D) = "white" {}
        _DiffuseTile ("DiffuseTile", Float ) = 1
        _DiffuseBrightness ("DiffuseBrightness", Float ) = 1
        [MaterialToggle] _Diffuse_Soft_Edge ("Diffuse_Soft_Edge", Float ) = 0
        _Shadow ("Shadow", 2D) = "white" {}
        _Shadow_Angle ("Shadow_Angle", Range(0, 1.567)) = 0
        _ShadowTile ("ShadowTile", Float ) = 20
        _ShadowBrightness ("ShadowBrightness", Float ) = 2
        [MaterialToggle] _Shadow_Soft_Edge ("Shadow_Soft_Edge", Float ) = 1
        _SoftEdge_Amound ("SoftEdge_Amound", Range(1, 20)) = 5
        _GlossTex ("GlossTex", 2D) = "white" {}
        _Gloss_Angle ("Gloss_Angle", Range(0, 1.567)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.4511278
        _GlossTile ("GlossTile", Float ) = 5
        _Gloss_Ring_Inner ("Gloss_Ring_Inner", Range(1, 10)) = 2
        _Gloss_Ring_Outer ("Gloss_Ring_Outer", Range(1, 10)) = 1
        [MaterialToggle] _NoGloss ("NoGloss", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float _Outline;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(float4(v.vertex.xyz + v.normal*_Outline,1));
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Gloss;
            uniform sampler2D _Shadow; uniform float4 _Shadow_ST;
            uniform float _ShadowTile;
            uniform float _ShadowBrightness;
            uniform float _DiffuseBrightness;
            uniform fixed _Diffuse_Soft_Edge;
            uniform fixed _Shadow_Soft_Edge;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _GlossTile;
            uniform float _DiffuseTile;
            uniform float _SoftEdge_Amound;
            uniform float _Gloss_Ring_Inner;
            uniform float _Gloss_Ring_Outer;
            uniform fixed _NoGloss;
            uniform fixed _Toonify;
            uniform float _ToonifySteps;
            uniform float _Shadow_Angle;
            uniform float _Gloss_Angle;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float node_7062_ang = _Shadow_Angle;
                float node_7062_spd = 1.0;
                float node_7062_cos = cos(node_7062_spd*node_7062_ang);
                float node_7062_sin = sin(node_7062_spd*node_7062_ang);
                float2 node_7062_piv = float2(0,0);
                float2 node_7062 = (mul((i.uv0*_ShadowTile)-node_7062_piv,float2x2( node_7062_cos, -node_7062_sin, node_7062_sin, node_7062_cos))+node_7062_piv);
                float4 _Shadow_var = tex2D(_Shadow,TRANSFORM_TEX(node_7062, _Shadow));
                float node_197 = floor((1.0*(1.0 - dot(lightDirection,normalDirection))));
                float node_40 = max(0,dot(lightDirection,normalDirection));
                float node_1542 = saturate((node_40*_SoftEdge_Amound));
                float node_9085 = (1.0 - node_1542);
                float2 node_70 = (i.uv0*_DiffuseTile);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(node_70, _Diffuse));
                float node_7949 = (dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11))*_DiffuseBrightness);
                float node_84 = (lerp( node_7949, floor(node_7949 * _ToonifySteps) / (_ToonifySteps - 1), _Toonify )*lerp( ceil(node_40), node_1542, _Diffuse_Soft_Edge )); // Diffuse Light
                float node_52 = max(0,dot(normalDirection,halfDirection));
                float node_240 = ((_Gloss*10.0)+1.0);
                float node_2321_ang = _Gloss_Angle;
                float node_2321_spd = 1.0;
                float node_2321_cos = cos(node_2321_spd*node_2321_ang);
                float node_2321_sin = sin(node_2321_spd*node_2321_ang);
                float2 node_2321_piv = float2(0.5,0.5);
                float2 node_2321 = (mul((i.uv0*_GlossTile)-node_2321_piv,float2x2( node_2321_cos, -node_2321_sin, node_2321_sin, node_2321_cos))+node_2321_piv);
                float4 _GlossTex_var = tex2D(_GlossTex,TRANSFORM_TEX(node_2321, _GlossTex));
                float node_8567 = ((pow(node_52,exp2(node_240))*_Gloss_Ring_Outer)*(dot(_GlossTex_var.rgb,float3(0.3,0.59,0.11))*0.8));
                float node_207 = (pow(node_52,exp2(node_240))*_Gloss_Ring_Inner);
                float3 emissive = ((((dot(_Shadow_var.rgb,float3(0.3,0.59,0.11))*lerp( node_197, node_9085, _Shadow_Soft_Edge ))*_ShadowBrightness)+node_84)*(node_84+lerp( (lerp(node_8567,1.0,node_8567)-lerp(node_207,0.3,node_207)), 0.0, _NoGloss )+1.0)*_LightColor0.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH_PROBE ( defined (LIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Gloss;
            uniform sampler2D _Shadow; uniform float4 _Shadow_ST;
            uniform float _ShadowTile;
            uniform float _ShadowBrightness;
            uniform float _DiffuseBrightness;
            uniform fixed _Diffuse_Soft_Edge;
            uniform fixed _Shadow_Soft_Edge;
            uniform sampler2D _GlossTex; uniform float4 _GlossTex_ST;
            uniform float _GlossTile;
            uniform float _DiffuseTile;
            uniform float _SoftEdge_Amound;
            uniform float _Gloss_Ring_Inner;
            uniform float _Gloss_Ring_Outer;
            uniform fixed _NoGloss;
            uniform fixed _Toonify;
            uniform float _ToonifySteps;
            uniform float _Shadow_Angle;
            uniform float _Gloss_Angle;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
