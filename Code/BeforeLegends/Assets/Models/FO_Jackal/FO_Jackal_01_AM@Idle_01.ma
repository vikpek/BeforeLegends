//Maya ASCII 2015 scene
//Name: FO_Jackal_01_AM@Idle_01.ma
//Last modified: Fri, Jul 17, 2015 05:46:20 PM
//Codeset: UTF-8
file -rdi 1 -ns "jackal_rig_master" -rfn "jackal_rig_masterRN" -op "v=0;" "rig/jackal_rig_master.ma";
file -r -ns "jackal_rig_master" -dr 1 -rfn "jackal_rig_masterRN" -op "v=0;" "rig/jackal_rig_master.ma";
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.4";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.9426719591484973 7.0427702322198638 4.083061396540403 ;
	setAttr ".r" -type "double3" -33.938352728816881 423.79999999998188 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 10.695931044035124;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.44556707524207673 1.08442290316516 0.13759254715330488 ;
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
	setAttr ".t" -type "double3" 100.1 1.0394836456022409 -0.027287874908369647 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.619926736336431;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "left";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.1 1.2441583447066822 -0.41436346075241759 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.3946963217346999;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 198 ".lnk";
	setAttr -s 198 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "jackal_rig_masterRN";
	setAttr ".fn[0]" -type "string" "/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma";
	setAttr -s 199 ".phl";
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
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"jackal_rig_masterRN"
		"jackal_rig_masterRN" 28
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Knuckle" " -av -k 1 -0.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Tip" " -av -k 1 -5.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Knuckle" " -av -k 1 -0.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Tip" " -av -k 1 -5.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Knuckle" " -av -k 1 -0.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Tip" " -av -k 1 -5.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Knuckle" " -av -k 1 -0.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Tip" " -av -k 1 -5.19611965811965781"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh|jackal_rig_master:WP_Club_SM:MeshShape" 
		"uvPivot" " -type \"double2\" 0.22388249854702735 0.50000000219006324"
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateX" 
		"jackal_rig_masterRN.placeHolderList[1]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateY" 
		"jackal_rig_masterRN.placeHolderList[2]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateZ" 
		"jackal_rig_masterRN.placeHolderList[3]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.rotateX" 
		"jackal_rig_masterRN.placeHolderList[5]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.rotateY" 
		"jackal_rig_masterRN.placeHolderList[6]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[7]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.scaleX" 
		"jackal_rig_masterRN.placeHolderList[8]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.scaleY" 
		"jackal_rig_masterRN.placeHolderList[9]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[10]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.visibility" 
		"jackal_rig_masterRN.placeHolderList[16]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.translateX" 
		"jackal_rig_masterRN.placeHolderList[17]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.translateY" 
		"jackal_rig_masterRN.placeHolderList[18]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.translateZ" 
		"jackal_rig_masterRN.placeHolderList[19]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.rotateX" 
		"jackal_rig_masterRN.placeHolderList[20]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.rotateY" 
		"jackal_rig_masterRN.placeHolderList[21]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[22]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.scaleX" 
		"jackal_rig_masterRN.placeHolderList[23]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.scaleY" 
		"jackal_rig_masterRN.placeHolderList[24]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[25]" ""
		"jackal_rig_masterRN" 492
		2 "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp|jackal_rig_master:FO_Jackal_17_SM_jackal_lpShape" 
		"visibility" " -k 0 1"
		2 "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp|jackal_rig_master:FO_Jackal_17_SM_jackal_lpShape" 
		"uvPivot" " -type \"double2\" 0.50012699421495199 0.50171550363302231"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotate" " -type \"double3\" -9.2561566378584228 -22.2911537424989028 -23.10301678441829054"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"FK_IK_Switch" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Pinkie_Curl" " -av -k 1 15.3"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Pinkie_Knuckle" " -av -k 1 14.9"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Pinkie_Tip" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Pinkie_Wiggle" " -av -k 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Pinkie_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Ring_Curl" " -av -k 1 14.00000000000000178"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Ring_Knuckle" " -av -k 1 17.1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Ring_Tip" " -av -k 1 8.9"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Ring_Wiggle" " -av -k 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Ring_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Middle_Curl" " -av -k 1 14.4"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Middle_Knuckle" " -av -k 1 20"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Middle_Tip" " -av -k 1 8.9"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Middle_Wiggle" " -av -k 1 0.7"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Middle_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Index_Curl" " -av -k 1 13.8"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Index_Knuckle" " -av -k 1 16.90000000000000213"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Index_Tip" " -av -k 1 8.9"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Index_Wiggle" " -av -k 1 -0.1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Index_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Thumb_Curl" " -av -k 1 4.9"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Thumb_Knuckle" " -av -k 1 3.3"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Thumb_Tip" " -av -k 1 -0.3"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Thumb_Wiggle" " -av -k 1 10"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Thumb_Twist" " -av -k 1 -6.7"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Hand_Curl" " -av -k 1 -9.2"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Hand_Wiggle" " -av -k 1 3.6"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL" 
		"Hand_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotate" " -type \"double3\" -24.74188247227794335 12.07780355429815344 14.84715301459213777"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"FK_IK_Switch" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ik_ctGRP|jackal_rig_master:rt__wrist_ikCTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ik_ctGRP|jackal_rig_master:rt__wrist_ikCTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Curl" " -av -k 1 2.11733368819179857"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Knuckle" " -av -k 1 6.41733368819179795"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Tip" " -av -k 1 -1.52865051191134826"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Curl" " -av -k 1 2.11733368819179857"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Knuckle" " -av -k 1 6.41733368819179795"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Tip" " -av -k 1 -1.52865051191134826"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Curl" " -av -k 1 2.11733368819179857"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Knuckle" " -av -k 1 6.41733368819179795"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Tip" " -av -k 1 -1.52865051191134826"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Curl" " -av -k 1 2.11733368819179857"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Knuckle" " -av -k 1 6.41733368819179795"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Tip" " -av -k 1 -1.52865051191134826"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Curl" " -av -k 1 1.10629504850884075"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Knuckle" " -av -k 1 0.41217178350119543"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Tip" " -av -k 1 4.0729935532865511"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Wiggle" " -av -k 1 4.0729935532865511"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Hand_Curl" " -av -k 1 -14.5"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Hand_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Hand_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"translate" " -type \"double3\" -0.30416408966219854 0.099780553933715418 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"Foot_Roll" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"Foot_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"Ball_Roll" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"Foot_Roll" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"Foot_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL" 
		"Ball_Roll" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translate" " -type \"double3\" 0 0 -0.1339378560830905"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotate" " -type \"double3\" 0 -5.06295048508840662 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"scaleX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"scaleY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"scaleZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"rotate" " -type \"double3\" 6.83542181325159781 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"scaleX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"scaleY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"scaleZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translate" " -type \"double3\" 0.0062891146172022105 0 0.0029229894338721092"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"rotate" " -type \"double3\" -7.31749726038574178 0.038304789489836011 1.28611836059654516"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"scaleX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"scaleY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"scaleZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translate" " -type \"double3\" -0.018895180192701273 0.0083893232335745926 0.001077429203630124"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"rotate" " -type \"double3\" 0 14.83004373983542301 0.13398677887697583"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"scaleX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"scaleY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"scaleZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotate" " -type \"double3\" 0 -4.6095627021201695 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotate" " -type \"double3\" 12.21892755804115893 30.9584624670935078 -57.98280928594748218"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotate" " -type \"double3\" 0.4729925906085643 -33.09871937293249289 -6.37133607306413818"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotate" " -type \"double3\" 0 -0.39043729787983111 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotate" " -type \"double3\" 1.96324979392921328 8.45617882332832416 -66.8426448060874776"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotate" " -type \"double3\" 4.75391995596061179 -25.67121836399212498 -0.43785578336994407"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"rotate" " -type \"double3\" 0 9.62382322179171901 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"scaleX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"scaleY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"scaleZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Ear_Left" " -av -k 1 -1.47506006467845419"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Ear_Right" " -av -k 1 -1.47506006467845419"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Upper" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Bottom" " -av -k 1 3.96422392382334499"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Beard" " -av -k 1 -2.76573762127210143"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translate" " -type \"double3\" 0.14983749286960357 0.0072924994934833731 -0.018895180192698837"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translate" " -type \"double3\" 0.23220687842028842 0.01423361983987137 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translate" " -type \"double3\" 0.053858039473475505 -0.036347785570140498 0.039585602421894933"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translate" " -type \"double3\" 0.036417561229210152 0.054015770942943561 -0.039916468222354173"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotate" " -type \"double3\" 0.99693376826096003 -2.84810737284707116 0.17536361273992901"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translate" " -type \"double3\" 0.16466822735609787 -0.26097107559685417 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"rotate" " -type \"double3\" 0 3.73340005781045781 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translate" " -type \"double3\" 0.14009043490400752 -0.14564188063069994 0.070504063510560627"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translate" " -type \"double3\" -0.26803177687586188 -0.0027971859406967781 0.011510224748439504"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translate" " -type \"double3\" -0.36392081704714174 -0.002038787031421796 0.00013288618319146073"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT" 
		"translate" " -type \"double3\" 0.14009043490399198 -0.1456418806306885 -0.070504063510617221"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT" 
		"rotate" " -type \"double3\" 0 -4.13135985595762989 11.48527972869869096"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT" 
		"rotate" " -type \"double3\" 0 0.3029700208125905 -74.7201003954923948"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT|jackal_rig_master:lf_index_b_JNT" 
		"rotate" " -type \"double3\" 0 0 -84.18354615099900684"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT|jackal_rig_master:lf_index_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT|jackal_rig_master:lf_index_b_JNT|jackal_rig_master:lf_index_c_JNT" 
		"rotate" " -type \"double3\" 0 0 -49.11891982838638171"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_index_a_JNT|jackal_rig_master:lf_index_b_JNT|jackal_rig_master:lf_index_c_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT" 
		"rotate" " -type \"double3\" 0 -2.23671006016190166 -77.29919803356339969"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT|jackal_rig_master:lf_middle_b_JNT" 
		"rotate" " -type \"double3\" 0 0 -90"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT|jackal_rig_master:lf_middle_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT|jackal_rig_master:lf_middle_b_JNT|jackal_rig_master:lf_middle_c_JNT" 
		"rotate" " -type \"double3\" 0 0 -49.11891982838638171"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_middle_a_JNT|jackal_rig_master:lf_middle_b_JNT|jackal_rig_master:lf_middle_c_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT" 
		"rotate" " -type \"double3\" 0 -3.27000013433208103 -75.59999956961384271"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT|jackal_rig_master:lf_ring_b_JNT" 
		"rotate" " -type \"double3\" 0 0 -84.87200377690309949"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT|jackal_rig_master:lf_ring_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT|jackal_rig_master:lf_ring_b_JNT|jackal_rig_master:lf_ring_c_JNT" 
		"rotate" " -type \"double3\" 0 0 -49.11891982838638171"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_ring_a_JNT|jackal_rig_master:lf_ring_b_JNT|jackal_rig_master:lf_ring_c_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT" 
		"rotate" " -type \"double3\" 0 -3.27000013433208103 -80.80503790501884964"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT|jackal_rig_master:lf_pinkie_b_JNT" 
		"rotate" " -type \"double3\" 0 0 -75.42789554331776003"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT|jackal_rig_master:lf_pinkie_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT|jackal_rig_master:lf_pinkie_b_JNT|jackal_rig_master:lf_pinkie_c_JNT" 
		"rotate" " -type \"double3\" 0 0 -75.42789554331776003"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_pinkie_a_JNT|jackal_rig_master:lf_pinkie_b_JNT|jackal_rig_master:lf_pinkie_c_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT" 
		"rotate" " -type \"double3\" 19.54494137844958601 -29.99999999999999645 -24.73213709855402342"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT|jackal_rig_master:lf_thumb_b_JNT" 
		"rotate" " -type \"double3\" 0 0 -15.74553645627874765"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT|jackal_rig_master:lf_thumb_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT|jackal_rig_master:lf_thumb_b_JNT|jackal_rig_master:lf_thumb_c_JNT" 
		"rotate" " -type \"double3\" 0 0 1.26885605787561206"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_JNT|jackal_rig_master:lf_upper_twist_JNT|jackal_rig_master:lf_elbow_JNT|jackal_rig_master:lf_forearm_twist_JNT|jackal_rig_master:lf_wrist_JNT|jackal_rig_master:lf_hand_JNT|jackal_rig_master:lf_thumb_a_JNT|jackal_rig_master:lf_thumb_b_JNT|jackal_rig_master:lf_thumb_c_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translate" " -type \"double3\" 0.2680317768758616 0.0027971859406970001 -0.011510224748439823"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG|jackal_rig_master:lf_elbow_fkRIG" 
		"translate" " -type \"double3\" 0.36392081704713153 0.0020387870314207968 -0.00013288618317364165"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG|jackal_rig_master:lf_elbow_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG|jackal_rig_master:lf_elbow_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG|jackal_rig_master:lf_elbow_fkRIG" 
		"translateZ" " -av"
		2 "jackal_rig_master:mesh" "displayType" " 2"
		2 "jackal_rig_master:mesh" "visibility" " 1"
		2 "jackal_rig_master:rigs" "visibility" " 0"
		2 "jackal_rig_master:ctrls" "visibility" " 1"
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.visibility" 
		"jackal_rig_masterRN.placeHolderList[26]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[27]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[28]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[29]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[30]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[31]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[32]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[33]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[34]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[35]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[36]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[37]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[38]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[39]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[40]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[41]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[42]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[43]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[44]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[45]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[46]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[47]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[48]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[49]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[50]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[51]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[52]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[53]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[54]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[55]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[56]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[57]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[58]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[59]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[60]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[61]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[62]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[63]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[64]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[65]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[66]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[67]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[68]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[69]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[70]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[71]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[72]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[73]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[74]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[75]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[76]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[77]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[78]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[79]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[80]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[81]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[82]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[83]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[84]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[85]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[86]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[87]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[88]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[89]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[90]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[91]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[92]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[93]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[94]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[95]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[96]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[97]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[98]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[99]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[100]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[101]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[102]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[103]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[104]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[105]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[106]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[107]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[108]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[109]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[110]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[111]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[112]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[113]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[114]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[115]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[116]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[117]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[118]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[119]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[120]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[121]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[122]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[123]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[124]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[125]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[126]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[127]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[128]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[129]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[130]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[131]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[132]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[133]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[134]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[135]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[136]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[137]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[138]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[139]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[140]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[141]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[142]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[143]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[144]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[145]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[146]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[147]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[148]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[149]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[150]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[151]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[152]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[153]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[154]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[155]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[156]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[157]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[158]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[159]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[160]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[161]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[162]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[163]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[164]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[165]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[166]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[167]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[168]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[169]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[170]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[171]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[172]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[173]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[174]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[175]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[176]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[177]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[178]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[179]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[180]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[181]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[182]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[183]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[184]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[185]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[186]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[187]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[188]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[189]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[190]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Left" 
		"jackal_rig_masterRN.placeHolderList[191]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Right" 
		"jackal_rig_masterRN.placeHolderList[192]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Upper" 
		"jackal_rig_masterRN.placeHolderList[193]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Bottom" 
		"jackal_rig_masterRN.placeHolderList[194]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Beard" 
		"jackal_rig_masterRN.placeHolderList[195]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[196]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[197]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[198]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[199]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[200]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[201]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[202]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[203]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[204]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[205]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 0\n                -imagePlane 0\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n                -dynamicConstraints 0\n                -locators 0\n                -manipulators 0\n                -pluginShapes 0\n                -dimensions 0\n"
		+ "                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 0\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 58 -ps 2 100 42 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 1\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 1\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 70 -ast 0 -aet 120 ";
	setAttr ".st" 6;
createNode animCurveTU -n "FO_Jackal_17_SM_jackal_lp_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "FO_Jackal_17_SM_jackal_lp_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FO_Jackal_17_SM_jackal_lp_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "FO_Jackal_17_SM_jackal_lp_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FO_Jackal_17_SM_jackal_lp_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FO_Jackal_17_SM_jackal_lp_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "FO_Jackal_17_SM_jackal_lp_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "FO_Jackal_17_SM_jackal_lp_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FO_Jackal_17_SM_jackal_lp_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "FO_Jackal_17_SM_jackal_lp_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Mesh_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Mesh_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.13774659156923533;
createNode animCurveTL -n "Mesh_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.046302388457839065;
createNode animCurveTL -n "Mesh_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.10966805916776473;
createNode animCurveTA -n "Mesh_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Mesh_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Mesh_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.1805546814635168e-15;
createNode animCurveTU -n "Mesh_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0000000000000002;
createNode animCurveTU -n "Mesh_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.99999999999999989;
createNode animCurveTU -n "Mesh_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.0000000000000002;
createNode animCurveTA -n "cl_CoG_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "cl_CoG_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.0000000000000009 35 -6.0000000000000009
		 70 6.0000000000000009;
createNode animCurveTA -n "cl_CoG_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "cl_belly_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.3174972603857418 70 -7.3174972603857418;
createNode animCurveTA -n "cl_belly_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.038304789489836011 70 0.038304789489836011;
createNode animCurveTA -n "cl_belly_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2861183605965452 70 1.2861183605965452;
createNode animCurveTA -n "cl_chest_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.830043739835423 70 14.830043739835423;
createNode animCurveTA -n "cl_chest_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13398677887697583 70 0.13398677887697583;
createNode animCurveTA -n "cl_head_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "cl_head_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 10.438976366852803 70 0;
createNode animCurveTA -n "cl_head_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 -5 70 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5796691333523469 4 -8.5796691333523469
		 39 12.470475256590477 70 -8.5796691333523469;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.969132721012087 4 50.969132721012087
		 39 30.716444309643226 70 50.969132721012087;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -57.698073518531857 4 -57.698073518531857
		 39 -57.986253009966511 70 -57.698073518531857;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 39.581210184402863 4 39.581210184402863
		 39 0 70 39.581210184402863;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -33.098719372932493 4 -33.098719372932493
		 70 -33.098719372932493;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.3713360730641382 4 -6.3713360730641382
		 70 -6.3713360730641382;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5 35 0 70 -5;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -9.1147831510668968 35 2.9015768172016414
		 70 -9.1147831510668968;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.239944656421704 35 8.050986242977098
		 70 13.239944656421704;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -67.387380623406898 35 -66.79650481530814
		 70 -67.387380623406898;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2447471177220968 35 5.4314197885266466
		 70 -3.2447471177220955;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -39.379162672731255 35 -24.51013366219826
		 70 -39.379162672731255;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82434935557964173 35 -0.4051191626245379
		 70 -0.82434935557964173;
createNode animCurveTA -n "cl_hips_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.8354218132515978 70 6.8354218132515978;
createNode animCurveTA -n "cl_hips_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "cl_hips_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.758613088467385 35 -7.4348643511751202
		 70 -30.758613088467385;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2130590569717041 35 -24.790207528273072
		 70 7.2130590569717041;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.19123799088442006 35 -25.076077241196614
		 70 0.19123799088441995;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "rt_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -37.411573516810236 35 -23.668739474543202
		 70 -37.411573516810236;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.4584187939617648 35 12.469072796142603
		 70 7.4584187939617648;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.591117213862427 35 15.377049204604461
		 70 8.591117213862427;
createNode animCurveTU -n "lf_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "lf_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.3 70 15.3;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.9 70 14.9;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.000000000000002 70 14.000000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.1 70 17.1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.9 70 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14.4 70 14.4;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20 70 20;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.9 70 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7 70 0.7;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_hand_CTRL_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.8 70 13.8;
createNode animCurveTU -n "lf_hand_CTRL_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.900000000000002 70 16.900000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.9 70 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1 70 -0.1;
createNode animCurveTU -n "lf_hand_CTRL_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.9 70 4.9;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.3 70 3.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.3 70 -0.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10 70 10;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.7 70 -6.7;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -9.2 70 -9.2;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.6 70 3.6;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rt_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.8974492647643797 35 2.0512566571513333
		 70 2.8974492647643797;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1974492647643791 35 6.3512566571513327
		 70 7.1974492647643791;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0361739343063974 35 -2 70 4.0361739343063974;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.8974492647643797 35 2.0512566571513333
		 70 2.8974492647643797;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1974492647643791 35 6.3512566571513327
		 70 7.1974492647643791;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0361739343063974 35 -2 70 4.0361739343063974;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.8974492647643797 35 2.0512566571513333
		 70 2.8974492647643797;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1974492647643791 35 6.3512566571513327
		 70 7.1974492647643791;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0361739343063974 35 -2 70 4.0361739343063974;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.8974492647643797 35 2.0512566571513333
		 70 2.8974492647643797;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1974492647643791 35 6.3512566571513327
		 70 7.1974492647643791;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0361739343063974 35 -2 70 4.0361739343063974;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 1.2000000000000002 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0998219451973306 35 0.099821945197330564
		 70 4.0998219451973306;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0729935532865511 70 4.0729935532865511;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0729935532865511 70 4.0729935532865511;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -14.5 70 -14.5;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTU -n "lf_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lf_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.30416408966219854 70 -0.30416408966219854;
createNode animCurveTL -n "lf_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.099780553933715418 70 0.099780553933715418;
createNode animCurveTL -n "lf_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rt_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lf_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "lf_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "lf_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rt_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "cl_CoG_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "cl_CoG_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1339378560830905 70 -0.1339378560830905;
createNode animCurveTU -n "cl_CoG_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_hips_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "cl_hips_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_hips_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_hips_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "cl_hips_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_belly_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "cl_belly_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0062891146172022105 70 0.0062891146172022105;
createNode animCurveTL -n "cl_belly_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_belly_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0029229894338721092 70 0.0029229894338721092;
createNode animCurveTU -n "cl_belly_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_belly_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_belly_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_chest_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "cl_chest_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.019085073858312589 35 -0.018879095896971513
		 70 -0.019085073858312589;
createNode animCurveTL -n "cl_chest_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 0.0090999122646882782 70 0;
createNode animCurveTL -n "cl_chest_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 0.0011686891721144831 70 0;
createNode animCurveTU -n "cl_chest_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "lf_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "lf_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "lf_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 70 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "lf_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 70 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "rt_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "rt_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "rt_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "rt_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "cl_head_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "cl_head_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_head_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTL -n "cl_head_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "cl_head_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_head_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_head_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 70 1;
createNode animCurveTU -n "cl_head_CTRL_Ear_Left";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 -1.6 70 0;
createNode animCurveTU -n "cl_head_CTRL_Ear_Right";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 -1.6 70 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Upper";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Bottom";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 4.3 70 0;
createNode animCurveTU -n "cl_head_CTRL_Beard";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 35 -3 70 0;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 41;
	setAttr ".unw" 41;
select -ne :renderPartition;
	setAttr -s 100 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 100 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 96 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 48 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
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
connectAttr "FO_Jackal_17_SM_jackal_lp_visibility.o" "jackal_rig_masterRN.phl[26]"
		;
connectAttr "lf_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[27]";
connectAttr "lf_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[28]";
connectAttr "lf_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[29]";
connectAttr "lf_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[30]";
connectAttr "lf_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[31]";
connectAttr "lf_hand_CTRL_Pinkie_Curl.o" "jackal_rig_masterRN.phl[32]";
connectAttr "lf_hand_CTRL_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[33]";
connectAttr "lf_hand_CTRL_Pinkie_Tip.o" "jackal_rig_masterRN.phl[34]";
connectAttr "lf_hand_CTRL_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[35]";
connectAttr "lf_hand_CTRL_Pinkie_Twist.o" "jackal_rig_masterRN.phl[36]";
connectAttr "lf_hand_CTRL_Ring_Curl.o" "jackal_rig_masterRN.phl[37]";
connectAttr "lf_hand_CTRL_Ring_Knuckle.o" "jackal_rig_masterRN.phl[38]";
connectAttr "lf_hand_CTRL_Ring_Tip.o" "jackal_rig_masterRN.phl[39]";
connectAttr "lf_hand_CTRL_Ring_Wiggle.o" "jackal_rig_masterRN.phl[40]";
connectAttr "lf_hand_CTRL_Ring_Twist.o" "jackal_rig_masterRN.phl[41]";
connectAttr "lf_hand_CTRL_Middle_Curl.o" "jackal_rig_masterRN.phl[42]";
connectAttr "lf_hand_CTRL_Middle_Knuckle.o" "jackal_rig_masterRN.phl[43]";
connectAttr "lf_hand_CTRL_Middle_Tip.o" "jackal_rig_masterRN.phl[44]";
connectAttr "lf_hand_CTRL_Middle_Wiggle.o" "jackal_rig_masterRN.phl[45]";
connectAttr "lf_hand_CTRL_Middle_Twist.o" "jackal_rig_masterRN.phl[46]";
connectAttr "lf_hand_CTRL_Index_Curl.o" "jackal_rig_masterRN.phl[47]";
connectAttr "lf_hand_CTRL_Index_Knuckle.o" "jackal_rig_masterRN.phl[48]";
connectAttr "lf_hand_CTRL_Index_Tip.o" "jackal_rig_masterRN.phl[49]";
connectAttr "lf_hand_CTRL_Index_Wiggle.o" "jackal_rig_masterRN.phl[50]";
connectAttr "lf_hand_CTRL_Index_Twist.o" "jackal_rig_masterRN.phl[51]";
connectAttr "lf_hand_CTRL_Thumb_Curl.o" "jackal_rig_masterRN.phl[52]";
connectAttr "lf_hand_CTRL_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[53]";
connectAttr "lf_hand_CTRL_Thumb_Tip.o" "jackal_rig_masterRN.phl[54]";
connectAttr "lf_hand_CTRL_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[55]";
connectAttr "lf_hand_CTRL_Thumb_Twist.o" "jackal_rig_masterRN.phl[56]";
connectAttr "lf_hand_CTRL_Hand_Curl.o" "jackal_rig_masterRN.phl[57]";
connectAttr "lf_hand_CTRL_Hand_Wiggle.o" "jackal_rig_masterRN.phl[58]";
connectAttr "lf_hand_CTRL_Hand_Twist.o" "jackal_rig_masterRN.phl[59]";
connectAttr "rt_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[60]";
connectAttr "rt_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[61]";
connectAttr "rt_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[62]";
connectAttr "rt_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[63]";
connectAttr "rt_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[64]";
connectAttr "rt_hand_CTRL1_Pinkie_Curl.o" "jackal_rig_masterRN.phl[65]";
connectAttr "rt_hand_CTRL1_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[66]";
connectAttr "rt_hand_CTRL1_Pinkie_Tip.o" "jackal_rig_masterRN.phl[67]";
connectAttr "rt_hand_CTRL1_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[68]";
connectAttr "rt_hand_CTRL1_Pinkie_Twist.o" "jackal_rig_masterRN.phl[69]";
connectAttr "rt_hand_CTRL1_Ring_Curl.o" "jackal_rig_masterRN.phl[70]";
connectAttr "rt_hand_CTRL1_Ring_Knuckle.o" "jackal_rig_masterRN.phl[71]";
connectAttr "rt_hand_CTRL1_Ring_Tip.o" "jackal_rig_masterRN.phl[72]";
connectAttr "rt_hand_CTRL1_Ring_Wiggle.o" "jackal_rig_masterRN.phl[73]";
connectAttr "rt_hand_CTRL1_Ring_Twist.o" "jackal_rig_masterRN.phl[74]";
connectAttr "rt_hand_CTRL1_Middle_Curl.o" "jackal_rig_masterRN.phl[75]";
connectAttr "rt_hand_CTRL1_Middle_Knuckle.o" "jackal_rig_masterRN.phl[76]";
connectAttr "rt_hand_CTRL1_Middle_Tip.o" "jackal_rig_masterRN.phl[77]";
connectAttr "rt_hand_CTRL1_Middle_Wiggle.o" "jackal_rig_masterRN.phl[78]";
connectAttr "rt_hand_CTRL1_Middle_Twist.o" "jackal_rig_masterRN.phl[79]";
connectAttr "rt_hand_CTRL1_Index_Curl.o" "jackal_rig_masterRN.phl[80]";
connectAttr "rt_hand_CTRL1_Index_Knuckle.o" "jackal_rig_masterRN.phl[81]";
connectAttr "rt_hand_CTRL1_Index_Tip.o" "jackal_rig_masterRN.phl[82]";
connectAttr "rt_hand_CTRL1_Index_Wiggle.o" "jackal_rig_masterRN.phl[83]";
connectAttr "rt_hand_CTRL1_Index_Twist.o" "jackal_rig_masterRN.phl[84]";
connectAttr "rt_hand_CTRL1_Thumb_Curl.o" "jackal_rig_masterRN.phl[85]";
connectAttr "rt_hand_CTRL1_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[86]";
connectAttr "rt_hand_CTRL1_Thumb_Tip.o" "jackal_rig_masterRN.phl[87]";
connectAttr "rt_hand_CTRL1_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[88]";
connectAttr "rt_hand_CTRL1_Thumb_Twist.o" "jackal_rig_masterRN.phl[89]";
connectAttr "rt_hand_CTRL1_Hand_Curl.o" "jackal_rig_masterRN.phl[90]";
connectAttr "rt_hand_CTRL1_Hand_Wiggle.o" "jackal_rig_masterRN.phl[91]";
connectAttr "rt_hand_CTRL1_Hand_Twist.o" "jackal_rig_masterRN.phl[92]";
connectAttr "lf_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[93]";
connectAttr "lf_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[94]";
connectAttr "lf_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[95]";
connectAttr "lf_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[96]";
connectAttr "lf_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[97]";
connectAttr "lf_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[98]";
connectAttr "lf_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[99]";
connectAttr "lf_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[100]";
connectAttr "lf_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[101]";
connectAttr "lf_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[102]";
connectAttr "rt_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[103]";
connectAttr "rt_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[104]";
connectAttr "rt_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[105]";
connectAttr "rt_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[106]";
connectAttr "rt_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[107]";
connectAttr "rt_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[108]";
connectAttr "rt_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[109]";
connectAttr "rt_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[110]";
connectAttr "rt_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[111]";
connectAttr "rt_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[112]";
connectAttr "lf_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[113]";
connectAttr "lf_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[114]";
connectAttr "lf_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[115]";
connectAttr "lf_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[116]";
connectAttr "rt_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[117]";
connectAttr "rt_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[118]";
connectAttr "rt_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[119]";
connectAttr "rt_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[120]";
connectAttr "cl_CoG_CTRL_visibility.o" "jackal_rig_masterRN.phl[121]";
connectAttr "cl_CoG_CTRL_translateX.o" "jackal_rig_masterRN.phl[122]";
connectAttr "cl_CoG_CTRL_translateY.o" "jackal_rig_masterRN.phl[123]";
connectAttr "cl_CoG_CTRL_translateZ.o" "jackal_rig_masterRN.phl[124]";
connectAttr "cl_CoG_CTRL_rotateX.o" "jackal_rig_masterRN.phl[125]";
connectAttr "cl_CoG_CTRL_rotateY.o" "jackal_rig_masterRN.phl[126]";
connectAttr "cl_CoG_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[127]";
connectAttr "cl_CoG_CTRL_scaleX.o" "jackal_rig_masterRN.phl[128]";
connectAttr "cl_CoG_CTRL_scaleY.o" "jackal_rig_masterRN.phl[129]";
connectAttr "cl_CoG_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[130]";
connectAttr "cl_hips_CTRL_translateX.o" "jackal_rig_masterRN.phl[131]";
connectAttr "cl_hips_CTRL_translateY.o" "jackal_rig_masterRN.phl[132]";
connectAttr "cl_hips_CTRL_translateZ.o" "jackal_rig_masterRN.phl[133]";
connectAttr "cl_hips_CTRL_rotateX.o" "jackal_rig_masterRN.phl[134]";
connectAttr "cl_hips_CTRL_rotateY.o" "jackal_rig_masterRN.phl[135]";
connectAttr "cl_hips_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[136]";
connectAttr "cl_hips_CTRL_scaleX.o" "jackal_rig_masterRN.phl[137]";
connectAttr "cl_hips_CTRL_scaleY.o" "jackal_rig_masterRN.phl[138]";
connectAttr "cl_hips_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[139]";
connectAttr "cl_hips_CTRL_visibility.o" "jackal_rig_masterRN.phl[140]";
connectAttr "cl_belly_CTRL_translateX.o" "jackal_rig_masterRN.phl[141]";
connectAttr "cl_belly_CTRL_translateY.o" "jackal_rig_masterRN.phl[142]";
connectAttr "cl_belly_CTRL_translateZ.o" "jackal_rig_masterRN.phl[143]";
connectAttr "cl_belly_CTRL_rotateX.o" "jackal_rig_masterRN.phl[144]";
connectAttr "cl_belly_CTRL_rotateY.o" "jackal_rig_masterRN.phl[145]";
connectAttr "cl_belly_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[146]";
connectAttr "cl_belly_CTRL_scaleX.o" "jackal_rig_masterRN.phl[147]";
connectAttr "cl_belly_CTRL_scaleY.o" "jackal_rig_masterRN.phl[148]";
connectAttr "cl_belly_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[149]";
connectAttr "cl_belly_CTRL_visibility.o" "jackal_rig_masterRN.phl[150]";
connectAttr "cl_chest_CTRL_translateX.o" "jackal_rig_masterRN.phl[151]";
connectAttr "cl_chest_CTRL_translateY.o" "jackal_rig_masterRN.phl[152]";
connectAttr "cl_chest_CTRL_translateZ.o" "jackal_rig_masterRN.phl[153]";
connectAttr "cl_chest_CTRL_rotateX.o" "jackal_rig_masterRN.phl[154]";
connectAttr "cl_chest_CTRL_rotateY.o" "jackal_rig_masterRN.phl[155]";
connectAttr "cl_chest_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[156]";
connectAttr "cl_chest_CTRL_scaleX.o" "jackal_rig_masterRN.phl[157]";
connectAttr "cl_chest_CTRL_scaleY.o" "jackal_rig_masterRN.phl[158]";
connectAttr "cl_chest_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[159]";
connectAttr "cl_chest_CTRL_visibility.o" "jackal_rig_masterRN.phl[160]";
connectAttr "lf_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[161]";
connectAttr "lf_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[162]";
connectAttr "lf_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[163]";
connectAttr "lf_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[164]";
connectAttr "lf_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[165]";
connectAttr "lf_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[166]";
connectAttr "lf_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[167]";
connectAttr "lf_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[168]";
connectAttr "lf_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[169]";
connectAttr "lf_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[170]";
connectAttr "lf_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[171]";
connectAttr "lf_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[172]";
connectAttr "lf_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[173]";
connectAttr "lf_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[174]";
connectAttr "lf_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[175]";
connectAttr "rt_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[176]";
connectAttr "rt_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[177]";
connectAttr "rt_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[178]";
connectAttr "rt_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[179]";
connectAttr "rt_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[180]";
connectAttr "rt_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[181]";
connectAttr "rt_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[182]";
connectAttr "rt_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[183]";
connectAttr "rt_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[184]";
connectAttr "rt_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[185]";
connectAttr "rt_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[186]";
connectAttr "rt_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[187]";
connectAttr "rt_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[188]";
connectAttr "rt_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[189]";
connectAttr "rt_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[190]";
connectAttr "cl_head_CTRL_Ear_Left.o" "jackal_rig_masterRN.phl[191]";
connectAttr "cl_head_CTRL_Ear_Right.o" "jackal_rig_masterRN.phl[192]";
connectAttr "cl_head_CTRL_Jaw_Upper.o" "jackal_rig_masterRN.phl[193]";
connectAttr "cl_head_CTRL_Jaw_Bottom.o" "jackal_rig_masterRN.phl[194]";
connectAttr "cl_head_CTRL_Beard.o" "jackal_rig_masterRN.phl[195]";
connectAttr "cl_head_CTRL_translateX.o" "jackal_rig_masterRN.phl[196]";
connectAttr "cl_head_CTRL_translateY.o" "jackal_rig_masterRN.phl[197]";
connectAttr "cl_head_CTRL_translateZ.o" "jackal_rig_masterRN.phl[198]";
connectAttr "cl_head_CTRL_rotateX.o" "jackal_rig_masterRN.phl[199]";
connectAttr "cl_head_CTRL_rotateY.o" "jackal_rig_masterRN.phl[200]";
connectAttr "cl_head_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[201]";
connectAttr "cl_head_CTRL_scaleX.o" "jackal_rig_masterRN.phl[202]";
connectAttr "cl_head_CTRL_scaleY.o" "jackal_rig_masterRN.phl[203]";
connectAttr "cl_head_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[204]";
connectAttr "cl_head_CTRL_visibility.o" "jackal_rig_masterRN.phl[205]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FO_Jackal_17_SM_jackal_lp_translateX.o" "jackal_rig_masterRN.phl[1]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_translateY.o" "jackal_rig_masterRN.phl[2]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_translateZ.o" "jackal_rig_masterRN.phl[3]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateX.o" "jackal_rig_masterRN.phl[5]";
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateY.o" "jackal_rig_masterRN.phl[6]";
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateZ.o" "jackal_rig_masterRN.phl[7]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleX.o" "jackal_rig_masterRN.phl[8]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleY.o" "jackal_rig_masterRN.phl[9]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleZ.o" "jackal_rig_masterRN.phl[10]";
connectAttr "Mesh_visibility.o" "jackal_rig_masterRN.phl[16]";
connectAttr "Mesh_translateX.o" "jackal_rig_masterRN.phl[17]";
connectAttr "Mesh_translateY.o" "jackal_rig_masterRN.phl[18]";
connectAttr "Mesh_translateZ.o" "jackal_rig_masterRN.phl[19]";
connectAttr "Mesh_rotateX.o" "jackal_rig_masterRN.phl[20]";
connectAttr "Mesh_rotateY.o" "jackal_rig_masterRN.phl[21]";
connectAttr "Mesh_rotateZ.o" "jackal_rig_masterRN.phl[22]";
connectAttr "Mesh_scaleX.o" "jackal_rig_masterRN.phl[23]";
connectAttr "Mesh_scaleY.o" "jackal_rig_masterRN.phl[24]";
connectAttr "Mesh_scaleZ.o" "jackal_rig_masterRN.phl[25]";
connectAttr "sharedReferenceNode.sr" "jackal_rig_masterRN.sr";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"jackal_rig_masterRN\" \"\" \"rig/jackal_rig_master.ma\" 3114748501 \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya/scenes/rig/jackal_rig_master.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FO_Jackal_01_AM@Idle_01.ma
