xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 56;
 -1.83194;-2.48177;0.19578;,
 1.60820;-2.47787;0.18897;,
 -1.20157;-2.44869;-4.09726;,
 -0.00597;-2.47172;-5.16156;,
 1.06446;-2.51419;-4.15199;,
 1.13483;-2.51988;2.50748;,
 -1.45880;-2.52854;2.38789;,
 1.67436;-1.15931;0.60081;,
 1.10888;-1.23084;-3.90506;,
 0.04915;-1.17349;-4.59785;,
 -1.06287;-1.17922;-3.91022;,
 -1.65067;-1.15751;0.30833;,
 1.05168;-1.19956;2.32768;,
 -1.24033;-1.19551;2.23368;,
 1.56690;-0.16096;0.67226;,
 1.04268;-0.05797;-1.27408;,
 0.06469;0.31517;-1.68595;,
 -1.00499;-0.05159;-0.92639;,
 -1.22032;0.19700;0.55084;,
 -0.73822;-0.23069;1.77396;,
 0.87299;-0.24287;1.90175;,
 0.73315;1.03571;1.50314;,
 1.29505;1.14958;1.18205;,
 -0.28732;1.03965;1.39839;,
 -1.11860;1.16193;0.96206;,
 -0.77287;0.98397;-0.53966;,
 0.08960;1.37744;-1.67405;,
 0.94084;0.97183;-0.68116;,
 -0.37460;2.44379;0.37147;,
 -0.23864;2.37381;-0.21908;,
 -0.04770;2.39570;0.54305;,
 0.10052;2.52854;-0.66517;,
 0.35359;2.39415;0.58425;,
 0.43527;2.36903;-0.27472;,
 0.57456;2.43893;0.45798;,
 0.67461;1.35357;1.36281;,
 1.18308;1.45661;1.07225;,
 0.86255;1.29576;-0.61375;,
 0.09228;1.66280;-1.51219;,
 -0.68815;1.30676;-0.48570;,
 -1.00101;1.46779;0.87319;,
 -0.24879;1.35713;1.26802;,
 0.59833;1.68640;1.17887;,
 1.03779;1.77546;0.92775;,
 0.76076;1.63644;-0.52944;,
 0.09502;1.95367;-1.30596;,
 -0.57950;1.64594;-0.41878;,
 -0.84989;1.78512;0.75570;,
 -0.19976;1.68948;1.09694;,
 0.49574;2.03472;0.93027;,
 0.84320;2.10514;0.73172;,
 0.62417;1.99522;-0.42041;,
 0.09780;2.24604;-1.03436;,
 -0.43551;2.00273;-0.33291;,
 -0.64930;2.11277;0.59569;,
 -0.13527;2.03716;0.86549;;
 
 58;
 3;2,1,0;,
 3;3,1,2;,
 3;3,4,1;,
 4;6,0,1,5;,
 4;1,4,8,7;,
 4;4,3,9,8;,
 4;2,0,11,10;,
 4;5,1,7,12;,
 4;0,6,13,11;,
 4;6,5,12,13;,
 4;7,8,15,14;,
 4;8,9,16,15;,
 4;10,11,18,17;,
 4;11,13,19,18;,
 4;13,12,20,19;,
 4;12,7,14,20;,
 4;10,17,16,9;,
 4;2,10,9,3;,
 4;20,14,22,21;,
 4;19,20,21,23;,
 4;18,19,23,24;,
 4;17,18,24,25;,
 4;17,25,26,16;,
 4;15,16,26,27;,
 4;14,15,27,22;,
 3;30,29,28;,
 3;30,31,29;,
 3;32,31,30;,
 3;32,33,31;,
 3;32,34,33;,
 4;22,36,35,21;,
 4;27,37,36,22;,
 4;26,38,37,27;,
 4;25,39,38,26;,
 4;24,40,39,25;,
 4;23,41,40,24;,
 4;21,35,41,23;,
 4;36,43,42,35;,
 4;37,44,43,36;,
 4;38,45,44,37;,
 4;39,46,45,38;,
 4;40,47,46,39;,
 4;41,48,47,40;,
 4;35,42,48,41;,
 4;43,50,49,42;,
 4;44,51,50,43;,
 4;45,52,51,44;,
 4;46,53,52,45;,
 4;47,54,53,46;,
 4;48,55,54,47;,
 4;42,49,55,48;,
 4;50,34,32,49;,
 4;51,33,34,50;,
 4;52,31,33,51;,
 4;53,29,31,52;,
 4;54,28,29,53;,
 4;55,30,28,54;,
 4;49,32,30,55;;
 
 MeshMaterialList {
  7;
  58;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.408000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.040000;0.112000;0.152000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.328000;0.056000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.760000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.760000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  82;
  0.001866;-0.999908;-0.013468;,
  -0.007437;-0.999971;-0.001932;,
  -0.034931;-0.999346;0.009391;,
  -0.053858;-0.998434;0.015102;,
  -0.016535;-0.999861;-0.002040;,
  0.002613;-0.999809;-0.019395;,
  0.989773;0.104376;0.097236;,
  0.836673;0.355408;-0.416729;,
  0.542746;0.560869;-0.625182;,
  -0.798604;0.446047;-0.404072;,
  -0.964010;0.260876;0.051279;,
  0.933607;0.093203;0.345963;,
  -0.931729;0.261524;0.251963;,
  0.963125;0.187749;0.192719;,
  0.803753;0.423835;-0.417547;,
  0.261434;0.762434;-0.591901;,
  -0.808209;0.450133;-0.379708;,
  -0.936431;0.311980;0.160517;,
  -0.820862;0.284291;0.495342;,
  0.212939;0.269191;0.939252;,
  0.898281;0.292502;0.327924;,
  0.249557;0.306981;0.918414;,
  -0.337842;0.329939;0.881478;,
  -0.892131;0.329158;0.309446;,
  -0.870121;0.265099;-0.415467;,
  -0.769335;0.256595;-0.585049;,
  0.855644;0.275328;-0.438256;,
  0.362994;0.472829;0.802912;,
  0.139987;0.462855;0.875311;,
  0.869857;0.320233;-0.375233;,
  0.778916;0.331414;-0.532404;,
  -0.868669;0.321530;-0.376872;,
  -0.917050;0.312178;-0.248122;,
  -0.232381;0.433199;0.870826;,
  0.320949;0.563257;0.761402;,
  0.120353;0.551537;0.825423;,
  0.850210;0.386627;-0.357299;,
  0.770444;0.398176;-0.497867;,
  -0.848734;0.385746;-0.361732;,
  -0.891870;0.376921;-0.249997;,
  -0.212847;0.521069;0.826549;,
  0.262681;0.667754;0.696493;,
  0.093983;0.654863;0.749881;,
  0.816266;0.474140;-0.330000;,
  0.751764;0.485609;-0.446134;,
  -0.814648;0.471222;-0.338081;,
  -0.849783;0.463756;-0.250598;,
  -0.184390;0.626702;0.757129;,
  0.001363;0.941733;0.336359;,
  0.075126;0.943668;0.322253;,
  0.508454;0.840009;-0.189363;,
  0.230286;0.970824;-0.066851;,
  -0.499392;0.845626;-0.188476;,
  -0.043346;0.937483;0.345320;,
  -0.110717;0.936710;0.332140;,
  0.869463;0.106968;-0.482278;,
  0.997190;-0.006811;0.074601;,
  0.610163;0.207827;-0.764532;,
  -0.989277;0.143928;0.024821;,
  -0.841421;0.213973;-0.496212;,
  0.962711;-0.002661;0.270518;,
  -0.970901;0.146871;0.189157;,
  -0.048607;0.276968;0.959649;,
  -0.043256;0.127291;0.990922;,
  -0.068997;0.359187;0.930711;,
  0.889819;0.187601;0.415967;,
  -0.516938;0.592992;-0.617362;,
  -0.574323;0.258366;-0.776789;,
  -0.725098;0.213872;-0.654593;,
  0.719647;0.272926;-0.638451;,
  0.932003;0.298456;-0.205655;,
  -0.803778;0.324771;-0.498462;,
  -0.369215;0.429930;0.823918;,
  0.907648;0.364929;-0.207366;,
  -0.793354;0.389007;-0.468255;,
  -0.336553;0.518020;0.786376;,
  0.866251;0.454246;-0.208017;,
  -0.772224;0.474473;-0.422547;,
  -0.288958;0.624556;0.725557;,
  0.838163;0.504422;-0.207464;,
  -0.756399;0.522151;-0.393978;,
  -0.821530;0.512498;-0.249869;;
  58;
  3;1,4,0;,
  3;2,4,1;,
  3;2,3,4;,
  4;5,0,4,5;,
  4;56,55,7,6;,
  4;55,57,8,7;,
  4;59,58,10,9;,
  4;60,56,6,11;,
  4;58,61,12,10;,
  4;63,63,62,62;,
  4;6,7,14,13;,
  4;7,8,15,14;,
  4;9,10,17,16;,
  4;10,12,18,17;,
  4;62,62,19,64;,
  4;11,6,13,65;,
  4;9,16,15,66;,
  4;59,9,66,67;,
  4;19,13,20,21;,
  4;64,19,21,22;,
  4;17,18,22,23;,
  4;16,17,23,24;,
  4;16,24,25,68;,
  4;14,15,69,26;,
  4;13,14,26,20;,
  3;54,52,53;,
  3;54,51,52;,
  3;49,51,54;,
  3;49,50,51;,
  3;49,48,50;,
  4;20,27,28,21;,
  4;26,29,70,20;,
  4;69,30,29,26;,
  4;24,31,71,25;,
  4;23,32,31,24;,
  4;22,33,72,23;,
  4;21,28,33,22;,
  4;27,34,35,28;,
  4;29,36,73,70;,
  4;30,37,36,29;,
  4;31,38,74,71;,
  4;32,39,38,31;,
  4;33,40,75,72;,
  4;28,35,40,33;,
  4;34,41,42,35;,
  4;36,43,76,73;,
  4;37,44,43,36;,
  4;38,45,77,74;,
  4;39,46,45,38;,
  4;40,47,78,75;,
  4;35,42,47,40;,
  4;41,48,49,42;,
  4;43,50,79,76;,
  4;44,51,50,43;,
  4;45,52,80,77;,
  4;46,81,52,45;,
  4;47,54,53,78;,
  4;42,49,54,47;;
 }
 MeshTextureCoords {
  56;
  0.375000;0.875000;,
  0.463115;0.875000;,
  0.375000;0.937500;,
  0.375000;0.968750;,
  0.375000;1.000000;,
  0.375000;0.750000;,
  0.375000;0.812500;,
  0.463115;0.875000;,
  0.375000;1.000000;,
  0.375000;0.968750;,
  0.375000;0.937500;,
  0.375000;0.875000;,
  0.375000;0.750000;,
  0.375000;0.812500;,
  0.463115;0.875000;,
  0.375000;1.000000;,
  0.375000;0.968750;,
  0.375000;0.937500;,
  0.375000;0.875000;,
  0.375000;0.812500;,
  0.375000;0.750000;,
  0.375000;0.750000;,
  0.463115;0.875000;,
  0.375000;0.812500;,
  0.375000;0.875000;,
  0.375000;0.937500;,
  0.375000;0.968750;,
  0.375000;1.000000;,
  0.375000;0.875000;,
  0.375000;0.937500;,
  0.375000;0.812500;,
  0.375000;0.968750;,
  0.375000;0.750000;,
  0.375000;1.000000;,
  0.463115;0.875000;,
  0.375000;0.750000;,
  0.463115;0.875000;,
  0.375000;1.000000;,
  0.375000;0.968750;,
  0.375000;0.937500;,
  0.375000;0.875000;,
  0.375000;0.812500;,
  0.375000;0.750000;,
  0.463115;0.875000;,
  0.375000;1.000000;,
  0.375000;0.968750;,
  0.375000;0.937500;,
  0.375000;0.875000;,
  0.375000;0.812500;,
  0.375000;0.750000;,
  0.463115;0.875000;,
  0.375000;1.000000;,
  0.375000;0.968750;,
  0.375000;0.937500;,
  0.375000;0.875000;,
  0.375000;0.812500;;
 }
}
