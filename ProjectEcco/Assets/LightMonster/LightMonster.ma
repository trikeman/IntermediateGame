//Maya ASCII 2012 scene
//Name: LightMonster.ma
//Last modified: Tue, Dec 03, 2013 04:31:26 AM
//Codeset: 1252
requires maya "2012";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.523250514332585 1.6277986756438327 4.4003975834786395 ;
	setAttr ".r" -type "double3" -5.40000000000013 -691.19999999999095 2.2684372049011073e-016 ;
	setAttr ".rpt" -type "double3" -4.3893666638228737e-013 -3.6842058365483259e-013 
		1.6261787431972395e-013 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 4.7959040657230032;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0052359700202934184 1.0071282768369132 -0.025334984064102173 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 4000.0999999999999 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 4000.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 4000.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 4000.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4000.0999999999999 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 4000.0999999999999;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 1.2138770594471251 0 ;
createNode transform -n "transform2" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[4:5]" -type "float3" 0.19203328 -0.27770618 0  -0.19203328 
		-0.27770618 0 ;
	setAttr ".pt[36:51]" -type "float3" 0.31095392 0 0.41263533  0.22456631 
		0 0.41263533  0.22456622 0 0.29366496  0.31095392 0 0.29366493  -0.24033685 0 -0.26466423  
		-0.24033678 0 -0.41263539  -0.31095392 0 -0.2646642  -0.31095392 0 -0.41263539  0.22456573 
		0 -0.26466432  0.31095386 0 -0.26466438  0.22456563 0 -0.41263524  0.31095386 0 -0.41263524  
		-0.24033698 0 0.2936652  -0.31095392 0 0.29366523  -0.24033701 0 0.41263539  -0.31095392 
		0 0.41263539 ;
	setAttr ".dr" 1;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" -0.45573778828760292 1.6772593586728168 0.41223730562188216 ;
	setAttr ".s" -type "double3" 0.012771357567569367 0.012771357567569367 0.012771357567569367 ;
createNode transform -n "transform1" -p "pSphere1";
	setAttr ".v" no;
createNode mesh -n "pSphereShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
createNode transform -n "transform4" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere2";
	setAttr ".t" -type "double3" 0.4596262390770276 1.6725190400049419 0.4738498505309035 ;
	setAttr ".s" -type "double3" 0.11520987931204671 0.11520987931204671 0.11520987931204671 ;
createNode transform -n "transform3" -p "pSphere2";
	setAttr ".v" no;
createNode mesh -n "pSphereShape2" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
createNode transform -n "transform6" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone1";
	setAttr ".t" -type "double3" 0 0.92221759219780686 0.62041878027539821 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.49919473762707539 0.49919473762707539 0.49919473762707539 ;
createNode transform -n "transform5" -p "pCone1";
	setAttr ".v" no;
createNode mesh -n "pConeShape1" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3";
	setAttr ".s" -type "double3" 0.83285660520287741 1 1 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33576148956468033 0.81783685386180771 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".pt";
	setAttr ".pt[0:32]" -type "float3" -0.10933627 -1.3217498e-005 -0.021814337  
		0.17390208 -3.0192602e-008 -0.040474076  0.16066477 -0.06654942 -0.040474076  -0.10101368 
		0.041827932 -0.021814337  -0.10101368 -0.041854486 -0.021814337  0.16066472 0.066549473 
		-0.040474076  -0.077312484 -0.077325679 -0.021814337  0.12296738 0.12296735 -0.040474076  
		-0.041841168 -0.10102689 -0.021814337  0.066549443 0.16066471 -0.040474076  1.6292379e-008 
		-0.10934952 -0.021814337  -2.5913437e-008 0.17390206 -0.040474076  0.04184125 -0.10102689 
		-0.021814337  -0.066549517 0.16066468 -0.040474076  0.077312492 -0.077325679 -0.021814337  
		-0.12296744 0.12296735 -0.040474076  0.10101368 -0.041854341 -0.021814337  -0.16066475 
		0.066549383 -0.040474076  0.10933627 -1.3217498e-005 -0.021814337  -0.17390208 -5.5327831e-008 
		-0.040474076  0.10101366 0.041827999 -0.021814337  -0.16066471 -0.066549622 -0.040474076  
		0.077312477 0.077299207 -0.021814337  -0.12296732 -0.12296752 -0.040474076  0.041841149 
		0.10100041 -0.021814337  -0.066549391 -0.16066478 -0.040474076  -5.5394086e-008 0.10934956 
		0.021814341  8.8105729e-008 -0.17390205 -0.040474076  -0.041841276 0.10100041 -0.021814337  
		0.066549592 -0.16066472 -0.040474076  -0.077312514 0.077299096 -0.021814337  0.12296748 
		-0.1229673 -0.040474076  0 0 0 ;
	setAttr ".pt[34:35]" -type "float3" 0 0 0  0 0 0 ;
	setAttr ".pt[77:79]" -type "float3" 0 -0.074621394 0.072704919  0 -0.047780931 
		0.072704919  0 -0.01884144 0.072704919 ;
	setAttr ".pt[97]" -type "float3" 0 -0.21192119 0.27953592 ;
	setAttr ".pt[101]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[138]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[140:141]" -type "float3" 1.4901161e-008 0 0  1.4901161e-008 0 
		0 ;
	setAttr ".pt[146:149]" -type "float3" 0 -0.21192119 0.27953592  0 0 0  0 0 
		0  0 0 0 ;
	setAttr ".pt[152]" -type "float3" 0 -0.056356538 0.072704919 ;
	setAttr ".pt[162:165]" -type "float3" 0 0.0053410335 0.072704919  0 -0.018210558 
		0.072704919  0 -0.044306368 0.072704919  0 -0.070402198 0.072704919 ;
	setAttr ".pt[197:213]" -type "float3" 0.1190088 -3.0192602e-008 0.040474076  
		0.10994985 -0.040275589 0.040474076  0.10994983 0.040275544 0.040474076  0.084151931 
		0.074419513 0.040474076  0.045542717 0.09723381 0.040474076  -3.0908229e-008 0.10524511 
		0.040474076  -0.045542777 0.09723375 0.040474076  -0.084151983 0.074419513 0.040474076  
		-0.10994985 0.040275544 0.040474076  -0.11900885 -5.5327831e-008 0.040474076  -0.10994984 
		-0.040275682 0.040474076  -0.084151931 -0.074419647 0.040474076  -0.045542702 -0.097233899 
		0.040474076  4.7120047e-008 -0.10524505 0.040474076  0.04554278 -0.09723381 0.040474076  
		0.084151976 -0.074419461 0.040474076  7.8544538e-008 -3.0192602e-008 0.040474076 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".pc" -type "double3" -0.33770995504514129 1.1158055266984006 0.57070661407782242 ;
	setAttr ".ro" -type "double3" 77.231693092737771 90.000326010881821 85.600007662142673 ;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".pc" -type "double3" 0.37261621889302649 1.1158055898280825 0.54103664076760882 ;
	setAttr ".ro" -type "double3" -85.180961612436164 89.999673989119188 -94.399992352822579 ;
	setAttr ".ps" -type "double2" 1 1.0000000596046448 ;
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".pc" -type "double3" -0.6413876078279962 1.1158035629837797 0.26179337812828879 ;
	setAttr ".ro" -type "double3" 6.5051444392074513 2.5011336457849938e-005 2.5011194295169307e-005 ;
	setAttr ".ps" -type "double2" 1 1.0000000596046448 ;
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".pc" -type "double3" -0.5715769329200695 1.1158003260382494 -0.31414679449150706 ;
	setAttr ".ro" -type "double3" -7.7922155997269291 2.5011336457849891e-005 2.5011193755204177e-005 ;
	setAttr ".ps" -type "double2" 1 1.0000000596046448 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[53]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[39]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[18]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[25]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[52]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "e[36]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "e[38]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "e[51]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "e[23]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "e[16]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "e[32]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "e[30]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "e[27]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 3 "vtx[9:10]" "vtx[16:17]" "vtx[26:27]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "vtx[10:11]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[7:8]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.99030221 0 ;
	setAttr ".rs" 46118;
	setAttr ".lt" -type "double3" 5.2405240232353918e-017 -2.4342930563676811e-030 0.27888314049889185 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 0.99030215778314523 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 0.99030224719011239 0.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[7:8]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.49030221738779 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.00523597 0.71141911 -0.025334984 ;
	setAttr ".rs" 43583;
	setAttr ".lt" -type "double3" 1.8811590612937226e-016 5.6670315819575337e-017 0.39940091686648543 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64537894725799561 0.71141905822717599 -0.72951066493988037 ;
	setAttr ".cbx" -type "double3" 0.65585088729858398 0.71141911783182077 0.67884069681167603 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[8]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[12]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[14]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[20:35]" -type "float3" -0.1453788 0 -0.22951065  -0.1453788 
		0 -0.22951065  -0.1453788 0 -0.22951065  -0.1453788 0 -0.22951065  0.15585089 0 0.1788407  
		0.15585089 0 0.1788407  0.15585089 0 0.1788407  0.15585089 0 0.1788407  -0.1453788 
		0 0.1788407  -0.1453788 0 0.1788407  -0.1453788 0 0.1788407  -0.1453788 0 0.1788407  
		0.15585089 0 -0.22951065  0.15585089 0 -0.22951065  0.15585089 0 -0.22951065  0.15585089 
		0 -0.22951065 ;
createNode polySphere -n "polySphere1";
	setAttr ".r" 10;
	setAttr ".sa" 12;
	setAttr ".sh" 10;
createNode polyBoolOp -n "polyBoolOp1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:45]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:97]";
createNode polySphere -n "polySphere2";
	setAttr ".sa" 12;
	setAttr ".sh" 10;
createNode polyBoolOp -n "polyBoolOp2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".uth" yes;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:119]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:142]";
createNode polyCone -n "polyCone1";
	setAttr ".ax" -type "double3" 0 0 1 ;
	setAttr ".r" 0.5;
	setAttr ".h" 1;
	setAttr ".sa" 16;
	setAttr ".cuv" 3;
createNode polyBoolOp -n "polyBoolOp3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".uth" yes;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:16]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[112]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.92221761 0.87001616 ;
	setAttr ".rs" 56411;
	setAttr ".lt" -type "double3" 3.3087224502121107e-023 0 -0.11618278482412844 ;
	setAttr ".ls" -type "double3" 0.68434385890162408 0.60519738214610286 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24959737062454224 0.67262023687362671 0.87001615762710571 ;
	setAttr ".cbx" -type "double3" 0.24959737062454224 1.1718149185180664 0.87001615762710571 ;
createNode polySplit -n "polySplit1";
	setAttr -s 15 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 16;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 16;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 16;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.64884555339813232 9.3033122539054602e-007 
		0.35115352272987366 ;
	setAttr ".sps[0].sp[3].f" 16;
	setAttr ".sps[0].sp[3].t" 2;
	setAttr ".sps[0].sp[3].bc" -type "double3" 1.860662450781092e-006 0.49999815225601196 
		0.5 ;
	setAttr ".sps[0].sp[4].f" 16;
	setAttr ".sps[0].sp[4].t" 4;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.56645530462265015 0.43354472517967224 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[5].f" 16;
	setAttr ".sps[0].sp[5].t" 4;
	setAttr ".sps[0].sp[5].bc" -type "double3" 1.2165564555743913e-007 0.49999964237213135 
		0.5000002384185791 ;
	setAttr ".sps[0].sp[6].f" 16;
	setAttr ".sps[0].sp[6].t" 6;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.51978325843811035 0.48021665215492249 
		8.9406967163085938e-008 ;
	setAttr ".sps[0].sp[7].f" 16;
	setAttr ".sps[0].sp[7].t" 6;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0 0.49999955296516418 0.5000004768371582 ;
	setAttr ".sps[0].sp[8].f" 16;
	setAttr ".sps[0].sp[8].t" 8;
	setAttr ".sps[0].sp[8].bc" -type "double3" 0.48021730780601501 0.51978272199630737 
		-5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[9].f" 16;
	setAttr ".sps[0].sp[9].t" 9;
	setAttr ".sps[0].sp[9].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[10].f" 16;
	setAttr ".sps[0].sp[10].t" 10;
	setAttr ".sps[0].sp[10].bc" -type "double3" 0.43354547023773193 0.56645452976226807 
		0 ;
	setAttr ".sps[0].sp[11].f" 16;
	setAttr ".sps[0].sp[11].t" 11;
	setAttr ".sps[0].sp[11].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[12].f" 16;
	setAttr ".sps[0].sp[12].t" 12;
	setAttr ".sps[0].sp[12].bc" -type "double3" 0.35115322470664978 0.64884603023529053 
		7.152557373046875e-007 ;
	setAttr ".sps[0].sp[13].f" 16;
	setAttr ".sps[0].sp[13].t" 12;
	setAttr ".sps[0].sp[13].bc" -type "double3" 0 0.4999992847442627 0.5000007152557373 ;
	setAttr ".sps[0].sp[14].f" 16;
	setAttr ".sps[0].sp[14].t" 13;
	setAttr ".sps[0].sp[14].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 210;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0 1 ;
	setAttr ".sps[0].sp[1].f" 194;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.50000041723251343 0.49999958276748657 
		0 ;
	setAttr ".sps[0].sp[2].f" 203;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1 0 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 199;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 211;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[2].f" 213;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1 0 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 209;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 213;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[2].f" 215;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1 0 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 216;
	setAttr ".sps[0].sp[0].t" 4;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0 1 ;
	setAttr ".sps[0].sp[1].f" 215;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[2].f" 217;
	setAttr ".sps[0].sp[2].t" 4;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0 1 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit6";
	setAttr -s 4 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 218;
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 1 0 ;
	setAttr ".sps[0].sp[1].f" 218;
	setAttr ".sps[0].sp[1].t" 3;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.031541164964437485 0.96845883131027222 
		0 ;
	setAttr ".sps[0].sp[2].f" 217;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[3].f" 219;
	setAttr ".sps[0].sp[3].t" 3;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 4 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 218;
	setAttr ".sps[0].sp[0].t" 2;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 1 0 ;
	setAttr ".sps[0].sp[1].f" 218;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.76940703392028809 0.23059296607971191 ;
	setAttr ".sps[0].sp[2].f" 221;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[3].f" 219;
	setAttr ".sps[0].sp[3].t" 2;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit8";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 218;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 1 0 ;
	setAttr ".sps[0].sp[1].f" 223;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[2].f" 219;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0.012792317 0.11293547 ;
	setAttr ".tk[79]" -type "float3" 0 -0.012792315 -0.067774087 ;
	setAttr ".tk[97:99]" -type "float3" 0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[134:137]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[140:143]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[162]" -type "float3" 0 -0.011495641 -0.058615401 ;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyMapCut -n "polyMapCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[151]" "e[156]" "e[206]" "e[209]" "e[211]" "e[213]" "e[216]" "e[218]" "e[220:221]" "e[224]" "e[226]" "e[228]" "e[231]" "e[233]" "e[235]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[6:7]" -type "float2" -0.5385049 -0.074853778  -0.77286303 
		-0.074853778 ;
	setAttr ".uvtk[16]" -type "float2" -0.74970627 -0.074853778 ;
	setAttr ".uvtk[25:26]" -type "float2" -0.5385049 0.12419033  -0.77286303 
		0.12419039 ;
	setAttr ".uvtk[30:61]" -type "float2" -0.5385049 0.15458493  -0.56683302 
		0.15458499  -0.56683308 0.12419033  -0.5385049 0.12419033  -0.74970627 -0.074853778  
		-0.74970627 -0.037050009  -0.77286303 -0.037050009  -0.77286303 -0.074853778  -0.5385049 
		-0.037050068  -0.5668332 -0.037050068  -0.56683326 -0.074853778  -0.5385049 -0.074853778  
		-0.77286303 0.12419039  -0.74970639 0.12419039  -0.74970639 0.15458499  -0.77286303 
		0.15458493  -0.5385049 0.15458493  -0.56683302 0.15458499  -0.56683308 0.12419033  
		-0.5385049 0.12419033  -0.74970627 -0.074853778  -0.74970627 -0.037050009  -0.77286303 
		-0.037050009  -0.77286303 -0.074853778  -0.5385049 -0.037050068  -0.5668332 -0.037050068  
		-0.56683326 -0.074853778  -0.5385049 -0.074853778  -0.77286303 0.12419039  -0.74970639 
		0.12419039  -0.74970639 0.15458499  -0.77286303 0.15458493 ;
	setAttr ".uvtk[398:400]" -type "float2" -0.5385049 0.15458493  -0.56683302 
		0.15458499  -0.56683308 0.12419033 ;
	setAttr ".uvtk[404:405]" -type "float2" -0.74970627 -0.037050009  -0.77286303 
		-0.037050009 ;
	setAttr ".uvtk[409:411]" -type "float2" -0.5385049 -0.037050068  -0.5668332 
		-0.037050068  -0.56683326 -0.074853778 ;
	setAttr ".uvtk[415:417]" -type "float2" -0.74970639 0.12419039  -0.74970639 
		0.15458499  -0.77286303 0.15458493 ;
createNode polyMapCut -n "polyMapCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyMapCut -n "polyMapCut21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[153]" "e[211]" "e[213]" "e[218]" "e[220]" "e[226]" "e[228]" "e[231]" "e[233]" "e[237]" "e[240]" "e[242]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" -0.59293646 -0.15510234 ;
	setAttr ".uvtk[17]" -type "float2" -0.71388412 0.025014654 ;
	setAttr ".uvtk[19:20]" -type "float2" -0.56037998 -0.10961971  -0.74049699 
		-0.10961959 ;
	setAttr ".uvtk[22:23]" -type "float2" -0.5929364 -0.10961971  -0.713884 
		-0.10961959 ;
	setAttr ".uvtk[28:29]" -type "float2" -0.59293628 -0.011553917  -0.71388412 
		-0.011553857 ;
	setAttr ".uvtk[402:403]" -type "float2" -0.56037998 -0.011553917  -0.713884 
		-0.15510234 ;
	setAttr ".uvtk[413]" -type "float2" -0.74049699 -0.011553857 ;
	setAttr ".uvtk[419]" -type "float2" -0.59293622 0.025014654 ;
createNode polyMapCut -n "polyMapCut22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyMapCut -n "polyMapCut28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 28 "e[39]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[127]" "e[130:131]" "e[133]" "e[135:136]" "e[138:139]" "e[142]" "e[144:146]" "e[150:151]" "e[153]" "e[155:157]" "e[206]" "e[209]" "e[224]" "e[235]" "e[237]" "e[240]" "e[245:248]" "e[250:253]" "e[266:267]" "e[269:271]" "e[273]" "e[275:277]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 69 ".uvtk";
	setAttr ".uvtk[2:5]" -type "float2" -0.71330678 0.2454107  -0.89810205 
		0.2454107  -0.71330678 0.060615301  -0.89810205 0.060615301 ;
	setAttr ".uvtk[8:11]" -type "float2" -1.0828974 0.61500132  -1.0828974 
		0.43020597  -0.5285114 0.61500132  -0.5285114 0.43020597 ;
	setAttr ".uvtk[14]" -type "float2" -0.74670863 0.060615361 ;
	setAttr ".uvtk[18]" -type "float2" -0.66664279 0.61500132 ;
	setAttr ".uvtk[21]" -type "float2" -0.94476616 0.61500132 ;
	setAttr ".uvtk[24]" -type "float2" -0.56602991 0.61500132 ;
	setAttr ".uvtk[27]" -type "float2" -1.045379 0.61500132 ;
	setAttr ".uvtk[153:177]" -type "float2" -0.6792295 0.44567832  -0.68454218 
		0.4540979  -0.68590963 0.45547542  -0.68713999 0.45637283  -0.67431641 0.43020603  
		-0.67511547 0.43498787  -0.68713987 0.45637283  -0.69123518 0.45790026  -0.69123518 
		0.45790032  -0.69236624 0.45832214  -0.6970886 0.45896694  -0.70181108 0.45832214  
		-0.70666409 0.456512  -0.71330678 0.45152876  -0.70666409 0.456512  -0.70785904 0.45606628  
		-0.71125579 0.45357969  -0.7139647 0.39103803  -0.71330678 0.39121559  -0.73604345 
		0.43020597  -0.74025083 0.42535904  -0.74161422 0.41398785  -0.73822451 0.40583929  
		-0.73642373 0.402266  -0.7260735 0.3939999 ;
	setAttr ".uvtk[265:278]" -type "float2" -0.92343271 0.43020603  -0.9181931 
		0.45029703  -0.9218632 0.44076017  -0.92348969 0.43102625  -0.91817629 0.45032993  
		-0.91593754 0.45258489  -0.91589725 0.45262507  -0.90496171 0.45737091  -0.90724206 
		0.45705959  -0.91256821 0.45507297  -0.90496182 0.45737091  -0.89810205 0.45686379  
		-0.89862704 0.45705959  -0.90293455 0.45764771 ;
	setAttr ".uvtk[292:298]" -type "float2" -0.87029004 0.42637572  -0.87222981 
		0.43020597  -0.89810205 0.40487543  -0.89554346 0.40414771  -0.88396704 0.40710399  
		-0.87465942 0.41499934  -0.87016487 0.42537358 ;
	setAttr ".uvtk[397]" -type "float2" -0.5285114 0.61500132 ;
	setAttr ".uvtk[401]" -type "float2" -0.56602991 0.61500132 ;
	setAttr ".uvtk[406:408]" -type "float2" -0.94476616 0.61500132  -0.89810205 
		0.61500132  -0.66664279 0.61500132 ;
	setAttr ".uvtk[412]" -type "float2" -0.71330678 0.61500132 ;
	setAttr ".uvtk[414]" -type "float2" -1.045379 0.61500132 ;
	setAttr ".uvtk[418]" -type "float2" -1.0828974 0.61500132 ;
	setAttr ".uvtk[420]" -type "float2" -0.87079799 0.060615361 ;
createNode polyMapCut -n "polyMapCut29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:39]" "e[245:248]" "e[251:252]" "e[254:267]" "e[269:271]" "e[275:278]";
createNode polyMapCut -n "polyMapCut30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:39]" "e[245:248]" "e[251:252]" "e[254:267]" "e[269:271]" "e[275:278]";
createNode polyMapCut -n "polyMapCut31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:39]" "e[245:248]" "e[251:252]" "e[254:267]" "e[269:271]" "e[275:278]";
createNode polyMapCut -n "polyMapCut32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:39]" "e[245:248]" "e[251:252]" "e[254:267]" "e[269:271]" "e[275:278]";
createNode polyMapCut -n "polyMapCut33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[38:39]" "e[245:248]" "e[251:252]" "e[254:267]" "e[269:271]" "e[275:278]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 81 ".uvtk";
	setAttr ".uvtk[185:264]" -type "float2" -0.58284205 0.13782293  -0.64026827 
		0.13782293  -0.69769448 0.13782293  -0.75512075 0.13782293  -0.81254697 0.13782293  
		-0.86997312 0.13782293  -0.9273994 0.13782293  -1.1571041 0.13782293  -1.2145305 
		0.13782293  -1.2719567 0.13782293  -0.64026827 0.068911478  -0.69769448 0.068911478  
		-0.75512075 0.068911478  -0.81254697 0.068911478  -0.86997312 0.068911478  -0.69769448 
		0  -0.75512075 0  -0.81254697 0  -0.86997312 0  -0.69769448 -0.068911463  -0.75512075 
		-0.068911463  -0.81254697 -0.068911463  -0.86997312 -0.068911463  -0.69769448 -0.1378229  
		-0.75512075 -0.1378229  -0.81254697 -0.1378229  -0.86997312 -0.1378229  -0.61155522 
		0.20673439  -0.66898137 0.20673439  -0.72640765 0.20673439  -0.7838338 0.20673439  
		-0.84126008 0.20673439  -0.89868629 0.20673439  -0.9561125 0.20673439  -1.0135386 
		0.20673439  -1.0709649 0.20673439  -1.128391 0.20673439  -1.1858172 0.20673439  -1.2432436 
		0.20673439  -1.2499198 0.12127708  -1.2145305 0.127584  -1.2719567 0.11418264  -1.1571041 
		0.11418264  -1.2145303 0.12758401  -1.1040381 0.14828736  -1.1203105 0.13782291  
		-1.0498745 0.15611775  -1.0953177 0.14828734  -0.98918581 0.14828734  -1.0346289 
		0.15611775  -0.96419311 0.13782293  -0.98046541 0.14828736  -0.9273994 0.10199393  
		-0.96419311 0.13782291  -0.9143244 0.068911433  -0.9273994 0.10199395  -0.90219617 
		0  -0.9143244 0.068911478  -0.89738369 -0.068911433  -0.90219617 0  -0.89604217 -0.1378229  
		-0.89738375 -0.068911493  -0.86997312 -0.20381939  -0.89604217 -0.1378229  -0.89738375 
		-0.20673439  -0.87565726 -0.20673439  -0.81254697 -0.17364281  -0.86997312 -0.20381939  
		-0.75512069 -0.15067691  -0.81108594 -0.17364281  -0.69769448 -0.14207757  -0.75459641 
		-0.15067691  -0.66976041 -0.068911493  -0.68289638 -0.1378229  -0.64800054 -0.00038224459  
		-0.66976041 -0.068911493  -0.64045262 0.033097833  -0.64794457 0  -0.58284205 0.11418264  
		-0.6251756 0.068911493 ;
createNode polyMapCut -n "polyMapCut34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[105]" "e[107]" "e[109]" "e[111]" "e[113:114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124:128]" "e[130:131]" "e[133]" "e[135:140]" "e[142]" "e[144:146]";
createNode polyMapCut -n "polyMapCut40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[39]" "e[245:248]" "e[251]" "e[254:264]" "e[266:267]" "e[269:271]" "e[273]" "e[275:276]";
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 79 ".tk";
	setAttr ".tk[26]" -type "float3" 0 -0.012776664 -0.087162293 ;
	setAttr ".tk[32:38]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0  0 -3.7252903e-008 
		0  0 0 0  0 0 0 ;
	setAttr ".tk[40:64]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 
		0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  
		0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[68:84]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 
		0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  1.8626451e-009 0.012776664 0.087162293  0 
		0 0  0 0 0  0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[93:100]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 
		0 0  0 0 0  0 0 0 ;
	setAttr ".tk[136:138]" -type "float3" 0 0 0  0 0 0  0 0 0 ;
	setAttr ".tk[147:153]" -type "float3" 0 -3.7252903e-008 0  0 -3.7252903e-008 
		0  0 -3.7252903e-008 0  0 -0.0021981373 -0.00034815073  0.0007930696 -0.0032917634 
		-0.00030884147  -0.0029327869 -0.0057561398 0  0 -3.7252903e-008 0 ;
	setAttr ".tk[162:163]" -type "float3" 0 0.011481569 0.078327224  0 0 0 ;
	setAttr ".tk[171:172]" -type "float3" 0 -3.7252903e-008 0  0 -3.7252903e-008 
		0 ;
createNode polyMapCut -n "polyMapCut41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[39]" "e[245:248]" "e[251]" "e[254:264]" "e[266:267]" "e[269:271]" "e[273]" "e[275:276]";
createNode polyMapCut -n "polyMapCut42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[39]" "e[245:248]" "e[251]" "e[254:264]" "e[266:267]" "e[269:271]" "e[273]" "e[275:276]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 421 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.35669205 0.027276451 0.35669205 0.027276451
		 1.019660711 -0.085966736 1.09531343 -0.085966736 1.019660711 -0.010314126 1.09531343
		 -0.010314126 1.051293373 0.056581076 1.12118542 0.056581076 1.17096603 -0.23727214
		 1.17096603 -0.16161948 0.94400811 -0.23727214 0.94400811 -0.16161948 0.35669205 0.027276451
		 0.57328176 -0.56693262 1.03333497 -0.010314126 0.35669205 0.027276451 1.059605122
		 0.056581076 0.68261129 -0.72974789 1.00055718422 -0.23727214 0.54385263 -0.60804629
		 0.70666772 -0.60804629 1.11441708 -0.23727214 0.57328165 -0.60804629 0.68261129 -0.60804629
		 0.95936763 -0.23727214 1.051293373 0.055691 1.12118542 0.055690762 1.15560651 -0.23727214
		 0.57328153 -0.69669193 0.68261129 -0.69669211 1.051293373 -0.035292372 1.12662601
		 -0.035292372 1.12662613 0.055691 1.051293373 0.055691 1.059605122 0.056581076 1.059605122
		 -0.056581065 1.12118542 -0.056581065 1.12118542 0.056581076 1.051293373 -0.056580886
		 1.12662649 -0.056580886 1.12662649 0.056581076 1.051293373 0.056581076 1.12118542
		 0.055690762 1.059605122 0.055690762 1.059605122 -0.035292372 1.12118542 -0.035292372
		 1.051293373 -0.035292372 1.12662601 -0.035292372 1.12662613 0.055691 1.051293373
		 0.055691 1.059605122 0.056581076 1.059605122 -0.056581065 1.12118542 -0.056581065
		 1.12118542 0.056581076 1.051293373 -0.056580886 1.12662649 -0.056580886 1.12662649
		 0.056581076 1.051293373 0.056581076 1.12118542 0.055690762 1.059605122 0.055690762
		 1.059605122 -0.035292372 1.12118542 -0.035292372 0.28696755 0.69436002 0.23004746
		 0.69436002 0.17312737 0.69436002 0.1162073 0.69436002 0.05928725 0.69436002 0.0023670793
		 0.69436002 -0.054552972 0.69436002 -0.11147302 0.69436002 -0.16839308 0.69436002
		 -0.22531313 0.69436002 -0.28223318 0.69436002 -0.33915323 0.69436002 -0.39607328
		 0.69436002 0.28696755 0.62605596 0.23004746 0.62605596 0.17312737 0.62605596 0.1162073
		 0.62605596 -0.11147302 0.62605596 -0.16839308 0.62605596 -0.22531313 0.62605596 -0.28223318
		 0.62605596 -0.33915323 0.62605596 -0.39607328 0.62605596 0.28696755 0.55775189 0.23004746
		 0.55775189 0.17312737 0.55775189 -0.28223318 0.55775189 -0.33915323 0.55775189 -0.39607328
		 0.55775189 0.28696755 0.4894478 0.23004746 0.4894478 0.17312737 0.4894478 -0.28223318
		 0.4894478 -0.33915323 0.4894478 -0.39607328 0.4894478 -0.28223318 0.42114371 -0.33915323
		 0.42114371 0.25850752 0.76266414 0.20158744 0.76266414 0.14466733 0.76266414 0.087747276
		 0.76266414 0.030827224 0.76266414 -0.026092947 0.76266414 -0.083012998 0.76266414
		 -0.13993305 0.76266414 -0.1968531 0.76266414 -0.25377327 0.76266414 -0.31069332 0.76266414
		 -0.36761338 0.76266414 0.23004746 0.45193666 0.17312737 0.4596402 0.28658852 0.43043727
		 0.23004746 0.45193666 -0.37845844 0.42114371 -0.39607328 0.43043733 -0.33915323 0.39995006
		 -0.37845832 0.42114368 -0.28223318 0.37037501 -0.33915323 0.39995006 -0.25312454
		 0.42114371 -0.28223318 0.37037501 -0.2479139 0.35776857 -0.24762517 0.4894478 -0.25312454
		 0.42114371 -0.2278977 0.55775189 -0.24762517 0.4894478 -0.22640556 0.56254542 -0.2278977
		 0.55775189 -0.16839308 0.59536719 -0.22531313 0.56254554 -0.1114729 0.59352583 -0.16839308
		 0.59536719 -0.11962527 0.56669629 -0.092632115 0.6351378 -0.054552972 0.67202097
		 -0.097535312 0.62605596 0.0023670793 0.68515778 -0.054552972 0.67202097 0.041120708
		 0.67202097 0.0023670793 0.68515778 0.096429765 0.63230109 0.10684973 0.62605596 0.05928725
		 0.67202097 0.067325652 0.66342467 0.14566123 0.55775189 0.11620735 0.61800778 0.16418216
		 0.48944777 0.14566125 0.55775189 0.16961774 0.45917821 0.17312737 0.45964015 0.16418216
		 0.48944777 1.0057098866 -0.16795364 1.00788486 -0.17140049 1.0084446669 -0.17196447
		 1.0089483261 -0.17233175 1.0036985874 -0.16161942 1.0040256977 -0.16357702 1.0089484453
		 -0.17233181 1.010624886 -0.17295712 1.010624766 -0.17295712 1.011088014 -0.17312986
		 1.013021231 -0.17339373 1.014954448 -0.17312986 1.016941309 -0.17238879 1.019660711
		 -0.1703487 1.016941309 -0.17238879 1.017430544 -0.17220634 1.01882112 -0.17118824
		 1.019930124 -0.14558458 1.01966083 -0.14565736 1.028968811 -0.16161948 1.030691385
		 -0.15963522 1.031249523 -0.15498006 1.029861689 -0.15164399 1.029124379 -0.15018123
		 1.024887323 -0.14679718 0.35669205 0.027276466 0.35669205 0.027276466 0.35669205
		 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276466 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703
		 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703
		 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.478387
		 0.65043849 0.478387 0.65043849 0.478387 0.65043849 0.478387 0.65043849 0.478387 0.65043849
		 0.478387 0.65043849 0.478387 0.65043849 0.478387 0.65043849 0.478387 0.65043849 0.47838703
		 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838697
		 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697
		 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697
		 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697
		 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838697 0.65043849 0.47838703
		 0.65043849 0.47838697 0.65043849 0.478387 0.65043849 0.47838703 0.65043849 0.47838697
		 0.65043849 0.478387 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.478387
		 0.65043849 0.478387 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.478387
		 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.478387 0.65043849 0.47838703
		 0.65043849 0.478387 0.65043849 0.478387 0.65043849 0.47838703 0.65043849 0.478387
		 0.65043849 0.47838697 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838697
		 0.65043849 0.478387;
	setAttr ".uvtk[250:420]" 0.65043849 0.478387 0.65043849 0.47838703 0.65043849
		 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849 0.47838703 0.65043849
		 0.47838703 0.65043849 0.47838703 0.65043849 0.47838697 0.65043849 0.47838703 0.65043849
		 0.47838703 0.65043849 0.47838697 0.65043849 0.478387 0.65043849 0.478387 0.65043849
		 0.478387 1.10568333 -0.16161942 1.10353839 -0.16984445 1.10504079 -0.1659402 1.10570681
		 -0.16195524 1.1035316 -0.16985792 1.10261488 -0.17078108 1.10259855 -0.17079753 1.098121643
		 -0.17274034 1.099055171 -0.17261291 1.10123563 -0.1717996 1.098121643 -0.17274034
		 1.09531343 -0.1725328 1.095528245 -0.17261291 1.097291708 -0.17285365 0.35669205
		 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276466 0.35669205 0.027276466
		 0.35669205 0.027276451 0.35669205 0.027276466 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276451 1.083927393 -0.16005138 1.084721684 -0.16161948 1.09531343
		 -0.15124941 1.094265938 -0.15095145 1.089526653 -0.15216184 1.085716367 -0.15539402
		 1.083876371 -0.15964106 -0.45635536 0.2545771 -0.43100187 0.29252136 -0.39305767
		 0.31787491 -0.34829935 0.32677788 -0.30354103 0.31787503 -0.26559678 0.29252145 -0.24024323
		 0.25457719 -0.23134023 0.20981896 -0.2402432 0.16506058 -0.26559672 0.12711632 -0.30354097
		 0.10176286 -0.34829929 0.092859775 -0.39305755 0.1017628 -0.43100181 0.12711626 -0.45635536
		 0.16506055 -0.46525839 0.20981887 -0.24747351 -0.48392636 -0.26033902 -0.48392636
		 -0.27320454 -0.48392636 -0.28606999 -0.48392636 -0.2989355 -0.48392636 -0.31180099
		 -0.48392636 -0.32466647 -0.48392636 -0.33753198 -0.48392636 -0.35039747 -0.48392636
		 -0.36326298 -0.48392636 -0.37612846 -0.48392636 -0.38899398 -0.48392636 -0.40185949
		 -0.48392636 -0.41472504 -0.48392636 -0.42759046 -0.48392636 -0.440456 -0.48392636
		 -0.45332143 -0.48392636 -0.37703151 -0.63650632 -0.37370226 -0.63650632 -0.37370226
		 -0.63650632 -0.37037301 -0.63650632 -0.37037304 -0.63650632 -0.36704376 -0.63650632
		 -0.36704376 -0.63650632 -0.36371449 -0.63650632 -0.36371452 -0.63650632 -0.36038524
		 -0.63650632 -0.36038524 -0.63650632 -0.35705599 -0.63650632 -0.35705599 -0.63650626
		 -0.35372674 -0.63650626 -0.35372674 -0.63650632 -0.35039747 -0.63650632 -0.35039747
		 -0.63650632 -0.34706822 -0.63650632 -0.34706822 -0.63650626 -0.34373897 -0.63650626
		 -0.34373897 -0.63650632 -0.34040973 -0.63650632 -0.3404097 -0.63650632 -0.33708045
		 -0.63650626 -0.33708048 -0.63650632 -0.3337512 -0.63650632 -0.3337512 -0.63650632
		 -0.33042192 -0.63650626 -0.33042195 -0.63650632 -0.32709271 -0.63650632 -0.32709271
		 -0.63650632 -0.32376343 -0.63650632 0.35669205 0.027276451 0.35669205 0.027276454
		 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276451 0.35669205 0.027276447 0.35669205 0.027276451 0.35669205 0.027276451
		 0.35669205 0.027276451 0.35669205 0.027276451 -0.45635536 0.2545771 -0.46525839 0.20981887
		 -0.45635536 0.16506055 -0.43100181 0.12711626 -0.39305755 0.1017628 -0.34829929 0.092859775
		 -0.30354097 0.10176286 -0.26559672 0.12711632 -0.2402432 0.16506058 -0.23134023 0.20981896
		 -0.24024323 0.25457719 -0.26559678 0.29252145 -0.30354103 0.31787503 -0.34829935
		 0.32677788 -0.39305767 0.31787491 -0.43100187 0.29252136 -0.34829935 0.20981887 0.94400811
		 -0.23727214 1.051293373 -0.035292372 1.12662601 -0.035292372 1.12662613 0.055691
		 0.95936763 -0.23727214 0.54385263 -0.69669193 0.68261129 -0.56693262 1.059605122
		 -0.056581065 1.12118542 -0.056581065 1.11441708 -0.23727214 1.09531343 -0.23727214
		 1.00055718422 -0.23727214 1.051293373 -0.056580886 1.12662649 -0.056580886 1.12662649
		 0.056581076 1.019660711 -0.23727214 0.70666772 -0.69669211 1.15560651 -0.23727214
		 1.059605122 0.055690762 1.059605122 -0.035292372 1.12118542 -0.035292372 1.17096603
		 -0.23727214 0.57328147 -0.72974789 1.084135532 -0.010314126;
createNode lambert -n "MonsterShader";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/TJ Darcy/Desktop/prototype.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pSphereShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pSphereShape1.i";
connectAttr "groupId4.id" "pSphereShape1.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "polySurfaceShape1.i";
connectAttr "groupId5.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId6.id" "pSphereShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphereShape2.iog.og[0].gco";
connectAttr "groupParts4.og" "pSphereShape2.i";
connectAttr "groupId7.id" "pSphereShape2.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId9.id" "pConeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pConeShape1.iog.og[0].gco";
connectAttr "groupParts6.og" "pConeShape1.i";
connectAttr "groupId10.id" "pConeShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV5.out" "polySurfaceShape3.i";
connectAttr "polyTweakUV5.uvtk[0]" "polySurfaceShape3.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyCut1.ip";
connectAttr "pCubeShape1.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "pCubeShape1.wm" "polyCut2.mp";
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "pCubeShape1.wm" "polyCut3.mp";
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "pCubeShape1.wm" "polyCut4.mp";
connectAttr "polyCut4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "pCubeShape1.o" "polyBoolOp1.ip[0]";
connectAttr "pSphereShape1.o" "polyBoolOp1.ip[1]";
connectAttr "pCubeShape1.wm" "polyBoolOp1.im[0]";
connectAttr "pSphereShape1.wm" "polyBoolOp1.im[1]";
connectAttr "polyExtrudeFace2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySphere1.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyBoolOp1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polySurfaceShape1.o" "polyBoolOp2.ip[0]";
connectAttr "pSphereShape2.o" "polyBoolOp2.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyBoolOp2.im[0]";
connectAttr "pSphereShape2.wm" "polyBoolOp2.im[1]";
connectAttr "polySphere2.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyBoolOp2.out" "groupParts5.ig";
connectAttr "groupId8.id" "groupParts5.gi";
connectAttr "polySurfaceShape2.o" "polyBoolOp3.ip[0]";
connectAttr "pConeShape1.o" "polyBoolOp3.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyBoolOp3.im[0]";
connectAttr "pConeShape1.wm" "polyBoolOp3.im[1]";
connectAttr "polyCone1.out" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "polyBoolOp3.out" "polyTriangulate1.ip";
connectAttr "polyTriangulate1.out" "polyExtrudeFace3.ip";
connectAttr "polySurfaceShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polyTweak2.out" "polyMapCut1.ip";
connectAttr "polySplit8.out" "polyTweak2.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyMapCut25.ip";
connectAttr "polyMapCut25.out" "polyMapCut26.ip";
connectAttr "polyMapCut26.out" "polyMapCut27.ip";
connectAttr "polyMapCut27.out" "polyMapCut28.ip";
connectAttr "polyMapCut28.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut29.ip";
connectAttr "polyMapCut29.out" "polyMapCut30.ip";
connectAttr "polyMapCut30.out" "polyMapCut31.ip";
connectAttr "polyMapCut31.out" "polyMapCut32.ip";
connectAttr "polyMapCut32.out" "polyMapCut33.ip";
connectAttr "polyMapCut33.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut34.ip";
connectAttr "polyMapCut34.out" "polyMapCut35.ip";
connectAttr "polyMapCut35.out" "polyMapCut36.ip";
connectAttr "polyMapCut36.out" "polyMapCut37.ip";
connectAttr "polyMapCut37.out" "polyMapCut38.ip";
connectAttr "polyMapCut38.out" "polyMapCut39.ip";
connectAttr "polyTweak3.out" "polyMapCut40.ip";
connectAttr "polyMapCut39.out" "polyTweak3.ip";
connectAttr "polyMapCut40.out" "polyMapCut41.ip";
connectAttr "polyMapCut41.out" "polyMapCut42.ip";
connectAttr "polyMapCut42.out" "polyTweakUV5.ip";
connectAttr "file1.oc" "MonsterShader.c";
connectAttr "MonsterShader.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape3.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MonsterShader.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "MonsterShader.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of LightMonster.ma
