//-----------------------------------------------------------------------------
// Torque
// Copyright GarageGames, LLC 2011
/*
(dw)
*/
//-----------------------------------------------------------------------------

#include "./../torque.hlsl"
#include "./postFx.hlsl"


Texture2D depthTex : register(t0);
Texture2D skyTex : register(t1);


cbuffer cbDefault: register(b0)
{
	float4x4	matProjInv;
	float4		fogColor;
	float2    targetSize;
	
	float2		envData; // x = 1 / visibility, y = fog exponent
	float2 		nearFar;

	float3		eyePosWorld;	
	float3		fogData;
};		


float4 main( PFXVertToPix IN ) : SV_Target
{   
	float2 ssc = IN.hpos.xy / targetSize;
	
	//float3 pos = reconstructPos(depthTex, ssc, matProjInv);	

  float depth = linearizeDepth(depthTex, ssc, nearFar);

  float len = depth*(nearFar.y - nearFar.x) + nearFar.x;

	// Skip fogging the extreme far plane so that 
   // the canvas clear color always appears.
   clip( nearFar.y - 20 - len );
  
   float4 skyColor = skyTex.Sample( samplerDefault,  ssc );
   
   //float len = abs(pos.z);
   float norlength = abs(len * envData.x);
         
   float f = len - fogData.y - 500.0; 

   float factor = exp( -fogData.x * f) * 1.2;
   
   // BC = BaseColor
   // FC = FogColor
   // SC = SkyColor
   // FF = FogFactor
   // GF = GlobalFogFactor
   // IFF = 1 - FF
   // IGF = 1 - GF
   // 
   // Epoxy res color == 
   // lerp(lerp(BC, FC, IFF), SC, GF) == 
   // (BC*FF + FC*IFF)*IGF + SC*GF == 
   // (BC * FF*IGF) + (FC*IFF*IGF + SC*GF)
   // ==>
   // PostFX res color
   // (BC * FF*IGF) + (FC*IFF*IGF + SC*GF)
   
   // LERP(FC*IFF; SC; GF) / (1 - FF * IGF)
   
   float gf     = saturate( pow(norlength , envData.y)  );
   float iff    = 1 - factor;
   float iffigf = 1.00000000 - saturate(factor * (1 - gf));
 // float iffigf = 1.00000001 - saturate(factor * (1));

   //return float4( lerp(fogColor.rgb * iff, skyColor.rgb, gf) / iffigf, iffigf );
   return float4( fogColor.rgb, iffigf*0.9 );
}
