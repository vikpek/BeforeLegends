//Maya ASCII 2015 scene
//Name: FO_Mammoth_01_AM@Idle01.ma
//Last modified: Thu, Jul 30, 2015 01:19:44 PM
//Codeset: 1252
file -rdi 1 -ns "mammoth_rig_master" -rfn "FO_Mammoth_01_AM_10_shapesRN" "rig/mammoth_rig_master.ma";
file -r -ns "mammoth_rig_master" -dr 1 -rfn "FO_Mammoth_01_AM_10_shapesRN" "rig/mammoth_rig_master.ma";
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201408201531-928694";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.161864845334769 12.441393676530783 -1.5356502094556912 ;
	setAttr ".r" -type "double3" -18.938352729612518 454.59999999996842 -2.5444437451708134e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 28.562357518207598;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "FO_Mammoth_01_AM_10_shapesRN";
	setAttr ".fn[0]" -type "string" "C:/Users/amon.kalagin/Dropbox/BeforeLegends_Files/MayaStuff/MammothRig/Mammoth_Rig//scenes/rig/mammoth_rig_master.ma";
	setAttr -s 78 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"FO_Mammoth_01_AM_10_shapesRN"
		"FO_Mammoth_01_AM_10_shapesRN" 0
		"FO_Mammoth_01_AM_10_shapesRN" 120
		1 |mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl 
		"blendPoint1" "blendPoint1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|mammoth_rig_master:FO_Mammoth_01_SM1:Mesh|mammoth_rig_master:FO_Mammoth_01_SM1:MeshShape" 
		"visibility" " -k 0 1"
		2 "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein" "translateY" 
		" -av 3.9879643120303121"
		2 "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist" 
		"translateX" " -av -0.0079063283058837253"
		2 "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist" 
		"translateY" " -av 4.5311721213018448"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "visibility" 
		" 1"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "translate" " -type \"double3\" 0 0.0032831739852313691 0"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "translateX" 
		" -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "translateY" 
		" -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "translateZ" 
		" -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "rotateX" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "rotateY" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "rotateZ" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "scale" " -type \"double3\" 1 1 1"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "scaleX" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "scaleY" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl" "scaleZ" " -av"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl" 
		"rotate" " -type \"double3\" -0.12710026450382089 0 0"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl" 
		"rotateX" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl" 
		"rotateY" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl" 
		"rotateZ" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl" 
		"rotate" " -type \"double3\" 0.33425334683663283 0 0"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl" 
		"rotateX" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl" 
		"scaleX" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl" 
		"scaleY" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl" 
		"scaleZ" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl" 
		"translate" " -type \"double3\" -0.011780929182506325 1.3063602680492492 2.1923041353458936"
		
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl" 
		"translateX" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl" 
		"translateY" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl" 
		"translateZ" " -av"
		2 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl" 
		"blendPoint1" " -k 1 0"
		2 "|mammoth_rig_master:Rig_gr|mammoth_rig_master:spine|mammoth_rig_master:chest|mammoth_rig_master:chest_upper|mammoth_rig_master:neck|mammoth_rig_master:head|mammoth_rig_master:L_claw" 
		"rotate" " -type \"double3\" 0 0 -11.756276932314261"
		2 "|mammoth_rig_master:Rig_gr|mammoth_rig_master:spine|mammoth_rig_master:chest|mammoth_rig_master:chest_upper|mammoth_rig_master:neck|mammoth_rig_master:head|mammoth_rig_master:L_claw" 
		"rotateZ" " -av"
		2 "|mammoth_rig_master:Rig_gr|mammoth_rig_master:spine|mammoth_rig_master:chest|mammoth_rig_master:chest_upper|mammoth_rig_master:neck|mammoth_rig_master:head|mammoth_rig_master:R_claw" 
		"rotate" " -type \"double3\" 0 0 -11.756276932314261"
		2 "|mammoth_rig_master:Rig_gr|mammoth_rig_master:spine|mammoth_rig_master:chest|mammoth_rig_master:chest_upper|mammoth_rig_master:neck|mammoth_rig_master:head|mammoth_rig_master:R_claw" 
		"rotateZ" " -av"
		2 "mammoth_rig_master:Rig" "visibility" " 1"
		2 "mammoth_rig_master:Mesh" "displayType" " 0"
		3 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateX" 
		"|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateX" 
		""
		3 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateY" 
		"|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateY" 
		""
		3 "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateZ" 
		"|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateZ" 
		""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[1]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[2]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[3]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[4]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[5]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[6]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_Mein.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[7]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[8]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[9]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[10]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[11]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[12]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[13]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_claws_lower.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[14]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[15]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[16]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[17]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[18]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[19]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[20]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[21]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_forward_twist.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[22]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[23]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[24]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[25]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[26]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[27]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[28]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Drivers_gr|mammoth_rig_master:Driver_trunk_leftright.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[29]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[30]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[31]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[32]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[33]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[34]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[35]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[36]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[37]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[38]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[39]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[40]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[41]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[42]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[43]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[44]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[45]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[46]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[47]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[48]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[49]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Neck_Ctrl|mammoth_rig_master:Mouth_Ctrl.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[50]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[51]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[52]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[53]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[54]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[55]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Chest_Ctrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[56]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[57]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[58]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[59]" ""
		5 3 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.blendPoint1" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[60]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[61]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[62]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[63]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[64]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[65]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[66]" ""
		5 3 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[67]" "mammoth_rig_master:ChestHelper_Ctrl.tx"
		
		5 3 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[68]" "mammoth_rig_master:ChestHelper_Ctrl.ty"
		
		5 3 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:ChestHelper_Ctrl|mammoth_rig_master:ChestHelper_Ctrl_pointConstraint1.constraintTranslateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[69]" "mammoth_rig_master:ChestHelper_Ctrl.tz"
		
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.translateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[70]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.translateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[71]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.translateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[72]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.rotateX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[73]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.rotateY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[74]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.rotateZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[75]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.scaleX" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[76]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.scaleY" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[77]" ""
		5 4 "FO_Mammoth_01_AM_10_shapesRN" "|mammoth_rig_master:Ctrl_gr|mammoth_rig_master:MainCtrl|mammoth_rig_master:Shoulder_Ctrl.scaleZ" 
		"FO_Mammoth_01_AM_10_shapesRN.placeHolderList[78]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 73 -ps 2 100 27 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 62 -ast 1 -aet 62 ";
	setAttr ".st" 6;
createNode pairBlend -n "pairBlend1";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 -0.066546726683888419 32 0.030287458080097585
		 48 -0.070117487153646296 62 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kix[0:4]"  0.98798948526382446 1 1 1 0.99178415536880493;
	setAttr -s 5 ".kiy[0:4]"  -0.15452161431312561 0 0 0 0.12792269885540009;
	setAttr -s 5 ".kox[0:4]"  0.98798942565917969 1 1 1 0.99178421497344971;
	setAttr -s 5 ".koy[0:4]"  -0.154521644115448 0 0 0 0.12792271375656128;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.3063602680492492;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.1923041353458936;
createNode animCurveTL -n "Mouth_Ctrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.0096587122638251e-012;
createNode animCurveTL -n "Mouth_Ctrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.82371264876256767;
createNode animCurveTL -n "Mouth_Ctrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.040862266008670822;
createNode animCurveTL -n "Chest_Ctrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Chest_Ctrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.5653873780486349;
createNode animCurveTL -n "Chest_Ctrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.33925223170700103;
createNode animCurveTL -n "Shoulder_Ctrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.5200823173076471e-010;
createNode animCurveTL -n "Shoulder_Ctrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.4573129195122929;
createNode animCurveTL -n "Shoulder_Ctrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.94289073414701208;
createNode animCurveTL -n "Neck_Ctrl_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.0159948176391064e-010 32 -7.0159948176391064e-010
		 62 -7.0159948176391064e-010;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Neck_Ctrl_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.4388227647115839;
createNode animCurveTL -n "Neck_Ctrl_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.2302849176859429;
createNode animCurveTL -n "Driver_trunk_leftright_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Driver_trunk_forward_twist_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 17 0.057638936016289832 46 -0.18400213645731189
		 62 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Driver_trunk_forward_twist_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 4.5382265471248608 10 4.4855612238543374
		 32 4.6292704444845443 52 4.5183604076469006 62 4.5382265471248608;
	setAttr -s 5 ".kit[1:4]"  18 18 1 1;
	setAttr -s 5 ".kot[1:4]"  18 18 1 1;
	setAttr -s 5 ".kix[0:4]"  0.9782063364982605 1 1 0.99841982126235962 
		0.99685788154602051;
	setAttr -s 5 ".kiy[0:4]"  -0.20763538777828217 0 0 -0.056195393204689026 
		0.079210840165615082;
	setAttr -s 5 ".kox[0:4]"  0.9782063364982605 1 1 0.99841982126235962 
		0.99685794115066528;
	setAttr -s 5 ".koy[0:4]"  -0.20763538777828217 0 0 -0.05619550496339798 
		0.079210847616195679;
createNode animCurveTL -n "Driver_claws_lower_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.8526806663254103;
createNode animCurveTL -n "Driver_claws_Mein_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 4 17 4.1116787948868927 32 4 46 3.9311627483075933
		 62 4;
	setAttr -s 5 ".kit[1:4]"  18 1 1 1;
	setAttr -s 5 ".kot[1:4]"  18 1 1 1;
	setAttr -s 5 ".kix[0:4]"  0.97050559520721436 1 0.97478479146957397 
		1 0.99002915620803833;
	setAttr -s 5 ".kiy[0:4]"  0.24107857048511505 0 -0.22314701974391937 
		0 0.14086271822452545;
	setAttr -s 5 ".kox[0:4]"  0.97050559520721436 1 0.97478479146957397 
		1 0.99002915620803833;
	setAttr -s 5 ".koy[0:4]"  0.24107857048511505 0 -0.2231469601392746 
		0 0.1408625990152359;
createNode animCurveTA -n "ChestHelper_Ctrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 30.094671841922139;
createNode animCurveTA -n "ChestHelper_Ctrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 62 0;
createNode animCurveTA -n "ChestHelper_Ctrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 62 0;
createNode animCurveTA -n "Mouth_Ctrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 6.0341618703274014 32 0 48 6.0341618703274014
		 62 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "Mouth_Ctrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Mouth_Ctrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Chest_Ctrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Chest_Ctrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Chest_Ctrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Shoulder_Ctrl_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Shoulder_Ctrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Shoulder_Ctrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Neck_Ctrl_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 -2.9579748409370632 32 0 46 -2.9579748409370632
		 62 0;
	setAttr -s 5 ".kit[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kot[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "Neck_Ctrl_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 32 0 62 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Neck_Ctrl_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 32 0 62 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Driver_trunk_leftright_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "Driver_trunk_leftright_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_trunk_leftright_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_trunk_forward_twist_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "Driver_trunk_forward_twist_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_trunk_forward_twist_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_claws_lower_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "Driver_claws_lower_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_claws_lower_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_claws_Mein_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 90;
createNode animCurveTA -n "Driver_claws_Mein_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Driver_claws_Mein_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ChestHelper_Ctrl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ChestHelper_Ctrl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "ChestHelper_Ctrl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Mouth_Ctrl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Mouth_Ctrl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Mouth_Ctrl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Shoulder_Ctrl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Shoulder_Ctrl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Shoulder_Ctrl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Neck_Ctrl_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.6644067176727334 32 0.6644067176727334
		 62 0.6644067176727334;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Neck_Ctrl_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.6644067176727334 32 0.6644067176727334
		 62 0.6644067176727334;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Neck_Ctrl_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.6644067176727334 32 0.6644067176727334
		 62 0.6644067176727334;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Driver_trunk_leftright_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_trunk_leftright_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_trunk_leftright_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.6901562040245286;
createNode animCurveTU -n "Driver_trunk_forward_twist_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_trunk_forward_twist_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_trunk_forward_twist_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_claws_lower_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.27353475135925848;
createNode animCurveTU -n "Driver_claws_lower_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_claws_lower_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_claws_Mein_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_claws_Mein_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTU -n "Driver_claws_Mein_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52183856073923496;
createNode animCurveTL -n "MainCtrl_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 0 32 0 46 0 62 0;
	setAttr -s 5 ".kit[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kot[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "MainCtrl_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 0.076408543165867537 32 0 46 0.076408543165867537
		 62 0;
	setAttr -s 5 ".kit[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kot[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "MainCtrl_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 17 0 32 0 46 0 62 0;
	setAttr -s 5 ".kit[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kot[0:4]"  18 18 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 60;
	setAttr ".unw" 60;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "Driver_claws_Mein_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[1]"
		;
connectAttr "Driver_claws_Mein_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[2]";
connectAttr "Driver_claws_Mein_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[3]";
connectAttr "Driver_claws_Mein_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[4]";
connectAttr "Driver_claws_Mein_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[5]";
connectAttr "Driver_claws_Mein_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[6]";
connectAttr "Driver_claws_Mein_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[7]";
connectAttr "Driver_claws_lower_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[8]"
		;
connectAttr "Driver_claws_lower_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[9]"
		;
connectAttr "Driver_claws_lower_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[10]"
		;
connectAttr "Driver_claws_lower_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[11]"
		;
connectAttr "Driver_claws_lower_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[12]"
		;
connectAttr "Driver_claws_lower_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[13]"
		;
connectAttr "Driver_claws_lower_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[14]"
		;
connectAttr "Driver_trunk_forward_twist_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[15]"
		;
connectAttr "Driver_trunk_forward_twist_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[16]"
		;
connectAttr "Driver_trunk_forward_twist_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[17]"
		;
connectAttr "Driver_trunk_forward_twist_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[18]"
		;
connectAttr "Driver_trunk_forward_twist_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[19]"
		;
connectAttr "Driver_trunk_forward_twist_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[20]"
		;
connectAttr "Driver_trunk_forward_twist_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[21]"
		;
connectAttr "Driver_trunk_forward_twist_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[22]"
		;
connectAttr "Driver_trunk_leftright_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[23]"
		;
connectAttr "Driver_trunk_leftright_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[24]"
		;
connectAttr "Driver_trunk_leftright_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[25]"
		;
connectAttr "Driver_trunk_leftright_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[26]"
		;
connectAttr "Driver_trunk_leftright_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[27]"
		;
connectAttr "Driver_trunk_leftright_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[28]"
		;
connectAttr "Driver_trunk_leftright_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[29]"
		;
connectAttr "MainCtrl_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[30]";
connectAttr "MainCtrl_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[31]";
connectAttr "MainCtrl_translateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[32]";
connectAttr "Neck_Ctrl_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[33]";
connectAttr "Neck_Ctrl_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[34]";
connectAttr "Neck_Ctrl_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[35]";
connectAttr "Neck_Ctrl_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[36]";
connectAttr "Neck_Ctrl_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[37]";
connectAttr "Neck_Ctrl_translateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[38]";
connectAttr "Neck_Ctrl_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[39]";
connectAttr "Neck_Ctrl_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[40]";
connectAttr "Neck_Ctrl_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[41]";
connectAttr "Mouth_Ctrl_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[42]";
connectAttr "Mouth_Ctrl_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[43]";
connectAttr "Mouth_Ctrl_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[44]";
connectAttr "Mouth_Ctrl_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[45]";
connectAttr "Mouth_Ctrl_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[46]";
connectAttr "Mouth_Ctrl_translateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[47]";
connectAttr "Mouth_Ctrl_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[48]";
connectAttr "Mouth_Ctrl_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[49]";
connectAttr "Mouth_Ctrl_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[50]";
connectAttr "Chest_Ctrl_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[51]";
connectAttr "Chest_Ctrl_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[52]";
connectAttr "Chest_Ctrl_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[53]";
connectAttr "Chest_Ctrl_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[54]";
connectAttr "Chest_Ctrl_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[55]";
connectAttr "Chest_Ctrl_translateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[56]";
connectAttr "pairBlend1.otx" "FO_Mammoth_01_AM_10_shapesRN.phl[57]";
connectAttr "pairBlend1.oty" "FO_Mammoth_01_AM_10_shapesRN.phl[58]";
connectAttr "pairBlend1.otz" "FO_Mammoth_01_AM_10_shapesRN.phl[59]";
connectAttr "FO_Mammoth_01_AM_10_shapesRN.phl[60]" "pairBlend1.w";
connectAttr "ChestHelper_Ctrl_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[61]";
connectAttr "ChestHelper_Ctrl_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[62]";
connectAttr "ChestHelper_Ctrl_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[63]";
connectAttr "ChestHelper_Ctrl_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[64]";
connectAttr "ChestHelper_Ctrl_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[65]";
connectAttr "ChestHelper_Ctrl_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[66]";
connectAttr "FO_Mammoth_01_AM_10_shapesRN.phl[67]" "pairBlend1.itx2";
connectAttr "FO_Mammoth_01_AM_10_shapesRN.phl[68]" "pairBlend1.ity2";
connectAttr "FO_Mammoth_01_AM_10_shapesRN.phl[69]" "pairBlend1.itz2";
connectAttr "Shoulder_Ctrl_translateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[70]";
connectAttr "Shoulder_Ctrl_translateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[71]";
connectAttr "Shoulder_Ctrl_translateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[72]";
connectAttr "Shoulder_Ctrl_rotateX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[73]";
connectAttr "Shoulder_Ctrl_rotateY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[74]";
connectAttr "Shoulder_Ctrl_rotateZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[75]";
connectAttr "Shoulder_Ctrl_scaleX.o" "FO_Mammoth_01_AM_10_shapesRN.phl[76]";
connectAttr "Shoulder_Ctrl_scaleY.o" "FO_Mammoth_01_AM_10_shapesRN.phl[77]";
connectAttr "Shoulder_Ctrl_scaleZ.o" "FO_Mammoth_01_AM_10_shapesRN.phl[78]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "FO_Mammoth_01_AM_10_shapesRN.sr";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"FO_Mammoth_01_AM_10_shapesRN\" \"\" \"rig/mammoth_rig_master.ma\" 3848597730 \"C:/Users/amon.kalagin/Dropbox/BeforeLegends_Files/MayaStuff/MammothRig/Mammoth_Rig/scenes/rig/mammoth_rig_master.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FO_Mammoth_01_AM@Idle01.ma
