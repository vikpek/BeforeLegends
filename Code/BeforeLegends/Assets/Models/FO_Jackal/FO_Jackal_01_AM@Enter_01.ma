//Maya ASCII 2015 scene
//Name: FO_Jackal_01_AM@Enter_01.ma
//Last modified: Thu, Jul 09, 2015 08:06:04 PM
//Codeset: UTF-8
file -rdi 1 -ns "jackal_rig_master" -rfn "jackal_rig_masterRN" -op "v=0;" "/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma";
file -r -ns "jackal_rig_master" -dr 1 -rfn "jackal_rig_masterRN" -op "v=0;" "/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma";
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
	setAttr ".t" -type "double3" 5.752896061648328 0.53794785303380788 -0.30568897061999944 ;
	setAttr ".r" -type "double3" 0.86164727116787954 103.39999999996316 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.1288876099648419;
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
	setAttr ".t" -type "double3" 100.1 0.98418738276626216 0.91555023134412594 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.0931819342535061;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "jackal_rig_masterRN";
	setAttr -s 199 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"jackal_rig_masterRN"
		"jackal_rig_masterRN" 8
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
		"jackal_rig_masterRN" 512
		2 "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp|jackal_rig_master:FO_Jackal_17_SM_jackal_lpShape" 
		"visibility" " -k 0 1"
		2 "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp|jackal_rig_master:FO_Jackal_17_SM_jackal_lpShape" 
		"uvPivot" " -type \"double2\" 0.50012699421495199 0.50171550363302231"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotate" " -type \"double3\" -30.75861308846738496 7.21305905697170413 0.19123799088441995"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"FK_IK_Switch" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL|jackal_rig_master:WP_Club_SM:Mesh|jackal_rig_master:WP_Club_SM:MeshShape" 
		"uvPivot" " -type \"double2\" 0.22388249854702735 0.50000000219006324"
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
		"rotate" " -type \"double3\" -37.41157351681023613 7.45841879396176477 8.59111721386242699"
		
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
		"Pinkie_Curl" " -av -k 1 2.89744926476437969"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Knuckle" " -av -k 1 7.19744926476437907"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Tip" " -av -k 1 4.03617393430639737"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Curl" " -av -k 1 2.89744926476437969"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Knuckle" " -av -k 1 7.19744926476437907"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Tip" " -av -k 1 4.03617393430639737"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Curl" " -av -k 1 2.89744926476437969"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Knuckle" " -av -k 1 7.19744926476437907"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Tip" " -av -k 1 4.03617393430639737"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Curl" " -av -k 1 2.89744926476437969"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Knuckle" " -av -k 1 7.19744926476437907"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Tip" " -av -k 1 4.03617393430639737"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Curl" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Thumb_Knuckle" " -av -k 1 4.09982194519733056"
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
		"rotate" " -type \"double3\" 0 6.00000000000000089 0"
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
		"translate" " -type \"double3\" -0.019085073858312589 0 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotate" " -type \"double3\" -8.57966913335234693 50.96913272101208747 -57.69807351853185651"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotate" " -type \"double3\" 39.58121018440286321 -33.09871937293249289 -6.37133607306413818"
		
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotate" " -type \"double3\" -9.11478315106689685 13.23994465642170404 -67.38738062340689794"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotate" " -type \"double3\" -3.24474711772209679 -39.3791626727312547 -0.82434935557964173"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		"Ear_Left" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Ear_Right" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Upper" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Bottom" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Beard" " -av -k 1 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translate" " -type \"double3\" 0.14175438894962822 0.0048015099260424743 -0.019085073858310209"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translate" " -type \"double3\" 0.23220687842028886 0.01423361983987137 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translate" " -type \"double3\" 0.055 -0.037 0.039"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translate" " -type \"double3\" 0.037124137402894317 0.055123069591184404 -0.039378078419425783"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translate" " -type \"double3\" 0.20313402063809505 -0.2588237059235694 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"rotateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translate" " -type \"double3\" 0.1400904349040073 -0.14564188063070016 0.070504063510560627"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translate" " -type \"double3\" -0.26803177687586188 -0.0027971859406967781 0.011510224748439393"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translate" " -type \"double3\" -0.36392081704714152 -0.002038787031421907 0.00013288618319146073"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:rt_clavicle_JNT|jackal_rig_master:rt_shoulder_fkRIG|jackal_rig_master:rt_elbow_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT" 
		"translate" " -type \"double3\" 0.14009043490399176 -0.14564188063068872 -0.070504063510617207"
		
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
		"translate" " -type \"double3\" 0.26803177687586155 0.002797185940696334 -0.011510224748439463"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:lf_clavicle_JNT|jackal_rig_master:lf_shoulder_fkRIG|jackal_rig_master:lf_elbow_fkRIG" 
		"translate" " -type \"double3\" 0.36392081704713403 0.0020387870314082512 -0.00013288618317863765"
		
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
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateX" 
		"jackal_rig_masterRN.placeHolderList[1]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateY" 
		"jackal_rig_masterRN.placeHolderList[2]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.translateZ" 
		"jackal_rig_masterRN.placeHolderList[3]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:FO_Jackal_17_SM_jackal_lp.visibility" 
		"jackal_rig_masterRN.placeHolderList[4]" ""
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
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[11]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[12]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[13]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[14]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[15]" ""
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
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[26]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[27]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[28]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[29]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[30]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[31]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[32]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[33]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[34]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[35]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[36]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[37]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[38]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[39]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[40]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[41]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[42]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[43]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[44]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[45]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[46]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[47]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[48]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[49]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[50]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[51]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[52]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[53]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[54]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[55]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[56]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[57]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[58]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[59]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[60]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[61]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[62]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[63]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[64]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[65]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[66]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[67]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[68]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[69]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[70]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[71]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[72]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[73]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[74]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[75]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[76]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[77]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[78]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[79]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[80]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[81]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[82]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[83]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[84]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[85]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[86]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[87]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[88]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[89]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[90]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[91]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[92]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[93]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[94]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[95]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[96]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[97]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[98]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[99]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[100]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[101]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[102]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[103]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[104]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[105]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[106]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[107]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[108]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[109]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[110]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[111]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[112]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[113]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[114]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[115]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[116]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[117]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[118]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[119]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[120]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[121]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[122]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[123]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[124]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[125]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[126]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[127]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[128]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[129]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[130]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[131]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[132]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[133]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[134]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[135]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[136]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[137]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[138]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[139]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[140]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[141]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[142]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[143]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[144]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[145]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[146]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[147]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[148]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[149]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[150]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[151]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[152]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[153]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[154]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[155]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[156]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[157]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[158]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[159]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[160]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[161]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[162]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[163]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[164]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[165]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[166]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[167]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[168]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[169]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[170]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[171]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[172]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[173]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[174]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[175]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[176]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[177]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[178]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[179]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[180]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[181]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[182]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[183]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[184]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Left" 
		"jackal_rig_masterRN.placeHolderList[185]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Right" 
		"jackal_rig_masterRN.placeHolderList[186]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Upper" 
		"jackal_rig_masterRN.placeHolderList[187]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Bottom" 
		"jackal_rig_masterRN.placeHolderList[188]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Beard" 
		"jackal_rig_masterRN.placeHolderList[189]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[190]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[191]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[192]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[193]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[194]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[195]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[196]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[197]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[198]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[199]" "";
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
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
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
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 63 -ps 2 100 37 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 91 -ast 0 -aet 200 ";
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
createNode animCurveTU -n "lf_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 -34.229707728725366 57 9.7785876685272086
		 91 -30.758613088467385;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 13.507186252949211 91 7.2130590569717041;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 14.567508838750868 57 5.1614678637698175
		 91 0.19123799088441995;
createNode animCurveTU -n "lf_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
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
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 15.3 57 15.3 91 15.3;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 14.9 57 14.9 91 14.9;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 14.000000000000002 57 14.000000000000002
		 91 14.000000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 17.1 57 17.1 91 17.1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 8.9 57 8.9 91 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 14.4 57 14.4 91 14.4;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 20 57 20 91 20;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 8.9 57 8.9 91 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0.7 57 0.7 91 0.7;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "lf_hand_CTRL_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 13.8 57 13.8 91 13.8;
createNode animCurveTU -n "lf_hand_CTRL_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 16.900000000000002 57 16.900000000000002
		 91 16.900000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 8.9 57 8.9 91 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 -0.1 57 -0.1 91 -0.1;
createNode animCurveTU -n "lf_hand_CTRL_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 4.9 57 4.9 91 4.9;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 3.3 57 3.3 91 3.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 -0.3 57 -0.3 91 -0.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 10 57 10 91 10;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 -6.7 57 -6.7 91 -6.7;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 -9.2 57 -9.2 91 -9.2;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 3.6 57 3.6 91 3.6;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "rt_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 -4.4645830079323883 53 -18.619952557565657
		 57 -18.619952557565657 71 -37.411573516810236 91 -37.411573516810236;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 6.1557885301205415 57 6.1557885301205415
		 71 7.2702301072856539 91 7.4584187939617648;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 5.2138531579875558 57 5.2138531579875558
		 71 8.336253152473363 91 8.591117213862427;
createNode animCurveTU -n "rt_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5.6038803418803429 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 3.5512566571513333 91 2.8974492647643797;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.19611965811965781 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 7.8512566571513327 91 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.1961196581196578 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 8.7000000000000011 91 4.0361739343063974;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5.6038803418803429 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 3.5512566571513333 91 2.8974492647643797;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.19611965811965781 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 7.8512566571513327 91 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.1961196581196578 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 8.7000000000000011 91 4.0361739343063974;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5.6038803418803429 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 3.5512566571513333 91 2.8974492647643797;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.19611965811965781 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 7.8512566571513327 91 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.1961196581196578 22 4.9 53 3.4000000000000004
		 57 7.3512566571513336 69 8.7000000000000011 91 4.0361739343063974;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5.6038803418803429 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 3.5512566571513333 91 2.8974492647643797;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.19611965811965781 22 9.9 53 3.4000000000000004
		 57 7.3512566571513336 69 7.8512566571513327 91 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.1961196581196578 22 4.9 53 3.4000000000000004
		 57 7.3512566571513336 69 8.7000000000000011 91 4.0361739343063974;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.19611965811965781 57 4.0998219451973306
		 69 4.0998219451973306 91 4.0998219451973306;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 5.7038803418803425 53 0 57 4.0729935532865511
		 69 4.0729935532865511 91 4.0729935532865511;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 4.8038803418803422 22 6.7 53 0 57 4.0729935532865511
		 69 4.0729935532865511 91 4.0729935532865511;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.19611965811965781 22 1.7000000000000002
		 53 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 57 0 69 -14.5 91 -14.5;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 57 0 91 0;
createNode animCurveTU -n "lf_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 1 57 1 64 1 91 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "lf_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0.352 -0.4083147844016155 30 -0.4083147844016155
		 39 -0.19830173007193891 43 0.050821042594216631 46 0.24466980544539713 53 0 57 0
		 64 0 71 -0.068769827562489311 76 -0.2359091022335805 81 -0.30416408966219854 91 -0.30416408966219854;
	setAttr -s 12 ".kit[0:11]"  1 1 18 1 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  1 1 18 1 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[0:11]"  1 1 0.76282870769500732 0.71656113862991333 
		1 1 1 1 0.90438967943191528 0.87066400051116943 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0.64660060405731201 0.6975243091583252 
		0 0 0 0 -0.42670750617980957 -0.49187827110290527 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 0.76282864809036255 0.71656113862991333 
		1 1 1 1 0.90438973903656006 0.87066400051116943 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0.64660060405731201 0.6975243091583252 
		0 0 0 0 -0.42670753598213196 -0.49187824130058289 0 0;
createNode animCurveTL -n "lf_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.352 0.099899658029964478 30 0.099899658029964478
		 39 -0.0044410440325651683 43 -0.022068893167217052 46 -0.078483434234503172 53 0
		 57 0 64 0 81 0.099780553933715418 91 0.099780553933715418;
	setAttr -s 10 ".kit[0:9]"  1 1 18 1 18 18 18 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 1 18 1 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 0.97557365894317627 0.96641343832015991 
		1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 -0.21967257559299469 -0.2569921612739563 
		0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 1 0.97557359933853149 0.96641343832015991 
		1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 -0.21967257559299469 -0.25699210166931152 
		0 0 0 0 0 0;
createNode animCurveTL -n "lf_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.352 0 30 0 39 0.31509563551938907 43 0.2996011286360411
		 46 0.11763421935471963 53 0 57 0 64 0 71 0.16631332032764118 81 0 91 0;
	setAttr -s 11 ".kit[0:10]"  1 1 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kot[0:10]"  1 1 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 0.81190270185470581 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 -0.58379280567169189 0 0 0 0 0 
		0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.81190270185470581 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.58379280567169189 0 0 0 0 0 
		0;
createNode animCurveTA -n "lf_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.352 -5.8452836348496335 25 -9.6715797302048561
		 29 0 57 0 64 0 91 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTU -n "lf_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.352 0 7 0 14 -4.8037036380061373 22 0
		 46 11.4 53 0 56.996 -6.6705261421560635 57 -6.7 64 -1.4991842169632497 67 0 91 0;
createNode animCurveTU -n "rt_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 1 57 1 64 1 91 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "rt_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.352 0.17486119757726928 30 0.17486119757726928
		 39 -0.19875005928842129 43 -0.10672919873340755 46 0.017288584906195052 53 0 57 0
		 64 0 91 0;
	setAttr -s 9 ".kit[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 0.97350257635116577 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.22867622971534729 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.97350257635116577 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.22867622971534729 0 0 0 0 0;
createNode animCurveTL -n "rt_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.352 0.017713673151752433 30 0.017713673151752433
		 39 -0.0076432396666062195 43 -0.026623658384803725 46 -0.11812719548658263 53 0 57 0
		 64 0 91 0;
	setAttr -s 9 ".kit[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 0.99666678905487061 0.98046094179153442 
		1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.081580698490142822 -0.19671417772769928 
		0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.99666672945022583 0.98046094179153442 
		1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.081580698490142822 -0.19671417772769928 
		0 0 0 0 0;
createNode animCurveTL -n "rt_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.352 0 30 0 39 0.31509563551938907 43 0.2996011286360411
		 46 0.11763421935471963 53 0 57 0 64 0 91 0;
	setAttr -s 9 ".kit[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 1 18 1 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 0.81190270185470581 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 -0.58379280567169189 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.81190270185470581 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 -0.58379280567169189 0 0 0 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.352 -10.094703249167688 29 0 57 0 64 0
		 91 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 57 0 64 0 91 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.352 0 7 -4.8000000000000007 39 0 43 0
		 57 0 64 0 91 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 18;
	setAttr -s 7 ".kot[3:6]"  1 18 18 18;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "rt_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.352 0 7 0 14 -8.4851848185503798 22 0
		 46 11.4 53 0 56.996 -6.6705261421560635 57 -6.7 64 -1.4991842169632497 67 0 91 0;
createNode animCurveTU -n "lf_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "lf_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.352 0 32 0 46 0.72112591044578345 57 0.33482802318392185
		 67 0 91 0;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 0.77169746160507202 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -0.63598966598510742 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.77169758081436157 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.6359897255897522 0 0;
createNode animCurveTL -n "lf_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.352 0 32 0 57 0 67 0 91 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "lf_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.352 -0.12221396005497361 32 -0.12221396005497361
		 46 0.2065870509834094 57 0.095921021411380203 67 0 91 0;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 0.97324216365814209 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -0.22978194057941437 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.97324210405349731 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.22978192567825317 0 0;
createNode animCurveTU -n "rt_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "rt_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.352 0 32 0 46 0.28750379460111364 57 0.13349170486005524
		 67 0 91 0;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 0.95003050565719604 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -0.31215694546699524 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.95003050565719604 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.31215697526931763 0 0;
createNode animCurveTL -n "rt_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.352 0 32 0 57 0 91 0;
createNode animCurveTL -n "rt_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.352 -0.01534132472239233 32 -0.01534132472239233
		 46 -0.15900101125602756 57 -0.073826211916570433 67 0 91 0;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 0.98388767242431641 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0.17878755927085876 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.98388767242431641 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0.17878755927085876 0 0;
createNode animCurveTU -n "cl_CoG_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 1 57 1 64 1 91 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "cl_CoG_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 -0.024316287325379968 14 -0.012897846062899678
		 32 -0.039746047513143493 53 0 57 0 64 0 91 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0.7 -0.15840740317855204 14 -0.32467527067572355
		 32 0.040792477829206086 39 -0.024421867626946231 46 0.041130877903867324 53 -0.2674524934621334
		 56.996 -0.38729627221597146 57 -0.38774127674689951 60 -0.28126119291348428 64 -0.08163193757809345
		 67 0 72 0.032138720291407186 81 0.032 84 0 91 0;
	setAttr -s 15 ".kit[12:14]"  1 18 18;
	setAttr -s 15 ".kot[12:14]"  1 18 18;
	setAttr -s 15 ".kix[12:14]"  1 1 1;
	setAttr -s 15 ".kiy[12:14]"  0 0 0;
	setAttr -s 15 ".kox[12:14]"  1 1 1;
	setAttr -s 15 ".koy[12:14]"  0 0 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 -0.0099853099972412526 14 -0.047829237147230287
		 32 0.040539015870059238 46 -0.1334008516017485 53 0 56.996 -0.032914646091616082
		 57 -0.033132890393782477 64 -0.033132890393782477 81 -0.1339378560830905 91 -0.1339378560830905;
createNode animCurveTA -n "cl_CoG_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 12.793614589271371 14 18.491311266285123
		 39 -6.2663603305118061 46 0 53 0 56.996 12.05879319435048 57 12.138750393293005 64 2.7161526870569133
		 67 0 91 0;
createNode animCurveTA -n "cl_CoG_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.7 -0.32682772715952174 32 0 57 0 64 0
		 85 15.819702716263274 91 6.0000000000000009;
createNode animCurveTA -n "cl_CoG_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 3.8544030348532963 32 0 57 0 64 0 91 0;
createNode animCurveTU -n "cl_CoG_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 1 57 1 64 1 91 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 1 57 1 64 1 91 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 1 57 1 64 1 91 1;
createNode animCurveTU -n "cl_hips_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "cl_hips_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "cl_hips_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "cl_hips_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTA -n "cl_hips_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 -11.038265722153429 39 0 56.996 6.8337036277722536
		 57 6.8354218132515978 91 6.8354218132515978;
createNode animCurveTA -n "cl_hips_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 7.3347274948679706 39 0 57 0 91 0;
createNode animCurveTA -n "cl_hips_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 -8.3722587174875116 39 0 57 0 91 0;
createNode animCurveTU -n "cl_hips_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
createNode animCurveTU -n "cl_belly_CTRL_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 85 1 91 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "cl_belly_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 14 -0.00043492469743649847 32 0.0057762573668570204
		 57 0.0057762573668570204 81 0.0057762573668570204 85 0.0062891146172022105 91 0.0062891146172022105;
	setAttr -s 7 ".kit[5:6]"  1 18;
	setAttr -s 7 ".kot[5:6]"  1 18;
	setAttr -s 7 ".kix[5:6]"  1 1;
	setAttr -s 7 ".kiy[5:6]"  0 0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTL -n "cl_belly_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 0 14 -0.021391185121507058 32 0.053844756171567629
		 53 -0.046497006665821808 56.996 -0.094090358817188802 57 -0.094352235968942447 67 0
		 81 0 85 -0.022756573145239493 90 0 91 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "cl_belly_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 0 14 0.0062910934052082196 32 0.068051755482504514
		 39 -0.046769826313705611 53 0.0029980534913790382 56.996 -0.0025893449749123088 57 -0.0026263928555368566
		 67 0 81 0 85 0.0029229894338721092 91 0.0029229894338721092;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "cl_belly_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 -17.398720794646486 14 -17.305901281906547
		 39 9.189507626650645 46 2.7502147800938301 53 7.4726207337122137 57 5.991170363780471
		 67 0 73 -7.3174972603857418 81 -7.3174972603857418 88 -7.3174972603857418 91 -7.3174972603857418;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "cl_belly_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0.7 32.922195994141937 14 18.503663076350396
		 39 0 57 0 73 0.038304789489836011 81 0.038304789489836011 85 0.038304789489836011
		 91 0.038304789489836011;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTA -n "cl_belly_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0.7 -5.5697496024255218 14 -6.8120599766427086
		 39 0 57 0 73 1.2861183605965452 81 1.2861183605965452 85 1.2861183605965452 91 1.2861183605965452;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "cl_belly_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 85 1 91 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "cl_belly_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 85 1 91 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "cl_belly_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 85 1 91 1;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "cl_chest_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 88 1 91 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "cl_chest_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0.7 0 32 -0.018603190208887243 39 -0.018942902332653135
		 56.996 -0.019126983207636398 57 -0.019127004233032732 81 -0.019127004233032732 88 -0.019085073858312589
		 91 -0.019085073858312589;
createNode animCurveTL -n "cl_chest_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0.7 0 14 -0.014088536084695007 32 0.031491038481170242
		 39 0.027319386032992658 53 -0.027323705073858458 56.996 -0.056174157457945212 57 -0.056323491243264426
		 60 -0.027973859719295422 67 0 81 0 88 -0.01793034466280527 91 0;
createNode animCurveTL -n "cl_chest_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 0 32 0.079978930753042854 39 0.0081152591860845832
		 53 0.0027604850122879905 56.996 0.054958059562417491 57 0.055304161513529571 60 0.0028960890348635861
		 67 0 81 0 88 0 91 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 9.8230412961303326 14 8.3710354336603796
		 22 0.45043139401955529 39 6.2261112317256728 53 -11.781391359669399 56.996 -1.3273868977768359
		 57 -1.191465932323553 67 0 81 0 88 0 91 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.7 3.6728640768057184 14 0 22 3.867407202901358
		 39 0 57 10.506414187217532 67 14.830043739835423 81 14.830043739835423 88 14.830043739835423
		 91 14.830043739835423;
createNode animCurveTA -n "cl_chest_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 6.9915078080093256 14 0 22 0.13398677887697583
		 57 0.13398677887697583 81 0.13398677887697583 88 0.13398677887697583 91 0.13398677887697583;
createNode animCurveTU -n "cl_chest_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 88 1 91 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 88 1 91 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.7 1 57 1 81 1 88 1 91 1;
createNode animCurveTU -n "lf_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "lf_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 -14.74503943960908 14 0 57 0 91 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 -24.870545630009563 14 0 57 0 91 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 20.125359771925488 14 0 57 0 91 0;
createNode animCurveTU -n "lf_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 -35.206716114890739 14 0 22 26.198136805609661
		 39 12.01670720456414 46 -5.5484116228590823 53 -6.6764527495625652 56.996 0 57 -7.9789323980887303
		 85 -8.5796691333523469 91 -8.5796691333523469;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 -15.472283989678047 14 35.64224563664682
		 22 44.823933596323137 39 -8.5735027044504992 46 -13.671605166464706 53 36.093045626403004
		 56.996 47.380095721101377 57 47.405143649064158 85 50.969132721012087 91 50.969132721012087;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 19.50790234304559 14 -58.552513072893859
		 22 -40.844972333119031 39 -21.526083470701966 46 -49.6982689438926 53 -54.958297377518804
		 56.996 -56.897743448324754 57 -56.904728179827124 85 -57.698073518531857 91 -57.698073518531857;
createNode animCurveTU -n "lf_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.7 1 91 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0.7 -10.152013624219764 14 0 39 18.309155604760033
		 46 15.930455881053952 53 39.67240851518612 57 -5.0198770485909607 85 39.581210184402863
		 91 39.581210184402863;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 -55.458785773740097 14 -33.620481056304008
		 39 -43.122797674010677 46 -32.228138963960987 57 -64.184134258159418 85 -33.098719372932493
		 91 -33.098719372932493;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 -9.074927521100193 14 0 39 29.604374031972103
		 46 -5.6543905116385575 57 -12.269728584496066 85 -6.3713360730641382 91 -6.3713360730641382;
createNode animCurveTU -n "rt_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 1 57 1 91 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "rt_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0.7 0 57 0 91 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.7 -3.1010482986814969 14 0 57 0 91 0;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 7.3836916399664068 14 -9.7125806475072824
		 39 -22.311382120495914 46 -7.7348075943999692 53 -10.069757421735908 56.996 -10.785368088290847
		 57 -10.787624251314512 69 -7.9705838327436407 85 -9.568303934281067 91 -9.1147831510668968;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 18.030383369048913 14 40.540827183908313
		 39 -18.453440559965102 46 -17.714256576578887 53 11.544550851037258 56.996 23.709436590101845
		 57 23.756288843341281 69 17.621635524234684 85 13.212744674681687 91 13.239944656421704;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0.7 -48.87986667338825 14 -58.259285212099883
		 39 -21.344488129337154 46 -49.544612257102742 53 -65.240672983951129 56.996 -67.593622771895852
		 57 -67.594509294748477 69 -60.601332166432684 85 -67.387380623406898 91 -67.387380623406898;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.7 -1.9399244427758056 14 -3.2522561257191618
		 39 -3.4450545651661537 53 -3.3439180330428577 56.996 -2.914773351201104 57 -3.1998340242035486
		 67 -3.0012030995244956 69 -3.2417641912330444 91 -3.2447471177220968;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0.7 -19.056230350164686 14 -40.112921255333397
		 39 -64.353658641111522 53 -50.819785944762501 57 -29.867501779704433 67 -27.570721176280703
		 69 -39.379162672731255 91 -39.379162672731255;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0.7 3.169970476304246 14 -0.79847094808995966
		 39 0.30459637857929828 53 -0.17969343722377515 56.996 -1.3229757202103254 57 0.022031184563522311
		 67 -1.48621716550196 69 -0.84009468131812914 91 -0.82434935557964173;
createNode animCurveTU -n "cl_head_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 1 53 1 60 1 65 1 77 1 86 1 87 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "cl_head_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 53 0 60 0 65 0 77 0 86 0 87 0;
createNode animCurveTL -n "cl_head_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 53 0 60 0 65 -0.037560372765183342
		 77 -0.038 86 0 87 0;
createNode animCurveTL -n "cl_head_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 53 0 60 0 65 -0.033154347266591618
		 77 -0.033 86 0 87 0;
createNode animCurveTA -n "cl_head_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0.7 -2.2074884329165885 17.5 5.8838247267264423
		 25.2 -12.863258899444009 29.4 -1.0311051957780435 35 17.175619364129162 42 15.241404717308072
		 49 11.530309742154955 53 29.254199366742711 53.2 26.775882725862253 60 0 74 -13.430560713182311
		 87 0;
createNode animCurveTA -n "cl_head_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0.7 -24.634862087609601 17.5 55.194094652977363
		 25.2 12.327664229197138 29.4 -5.5627457587544678 42 6.0452939830320975 49 0 53 -17.453736384027906
		 53.2 -21.787941981717697 60 0 65 0 77 0 86 0 87 0;
createNode animCurveTA -n "cl_head_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0.7 -10.438488423943515 17.5 -5.2289675511365985
		 25.2 -9.3316988764979207 29.4 -8.4068427143690005 42 -5.1459121135215815 53 -10.99219283576233
		 53.2 -13.209396262297465 60 0 65 0 77 0 86 0 87 0;
createNode animCurveTU -n "cl_head_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 1 53 1 60 1 65 1 77 1 86 1 87 1;
createNode animCurveTU -n "cl_head_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 1 53 1 60 1 65 1 77 1 86 1 87 1;
createNode animCurveTU -n "cl_head_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.7 1 53 1 60 1 65 1 86 1 87 1;
createNode animCurveTU -n "cl_head_CTRL_Ear_Left";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 53 0 60 5.9265068316899976 65 9.5
		 77 0 86 0 87 0;
createNode animCurveTU -n "cl_head_CTRL_Ear_Right";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0.7 0 53 0 60 5.9265068316899976 65 9.5
		 77 0 86 0 87 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Upper";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.352 13.100000000000001 2.8 13.100000000000001
		 16.452 20 29 4.7913583757811669 91 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kix[0:4]"  1 1 1 0.17688769102096558 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 -0.98423105478286743 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.17688769102096558 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.98423099517822266 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Bottom";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0.352 0 2.8 0 16.452 20 29 0 91 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 18;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "cl_head_CTRL_Beard";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0.7 0 35 5 53 0.001798153163304228 53.2 0
		 60 0 63 -7.8925925925925942 65 -5.1144026013191048 68 0 77 0 86 0 87 0;
createNode animCurveTU -n "rt_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  91 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "rt_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  91 1;
	setAttr ".kot[0]"  5;
select -ne :time1;
	setAttr ".o" 91;
	setAttr ".unw" 91;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 14 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "FO_Jackal_17_SM_jackal_lp_translateX.o" "jackal_rig_masterRN.phl[1]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_translateY.o" "jackal_rig_masterRN.phl[2]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_translateZ.o" "jackal_rig_masterRN.phl[3]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_visibility.o" "jackal_rig_masterRN.phl[4]"
		;
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateX.o" "jackal_rig_masterRN.phl[5]";
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateY.o" "jackal_rig_masterRN.phl[6]";
connectAttr "FO_Jackal_17_SM_jackal_lp_rotateZ.o" "jackal_rig_masterRN.phl[7]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleX.o" "jackal_rig_masterRN.phl[8]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleY.o" "jackal_rig_masterRN.phl[9]";
connectAttr "FO_Jackal_17_SM_jackal_lp_scaleZ.o" "jackal_rig_masterRN.phl[10]";
connectAttr "lf_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[11]";
connectAttr "lf_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[12]";
connectAttr "lf_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[13]";
connectAttr "lf_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[14]";
connectAttr "lf_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[15]";
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
connectAttr "lf_hand_CTRL_Pinkie_Curl.o" "jackal_rig_masterRN.phl[26]";
connectAttr "lf_hand_CTRL_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[27]";
connectAttr "lf_hand_CTRL_Pinkie_Tip.o" "jackal_rig_masterRN.phl[28]";
connectAttr "lf_hand_CTRL_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[29]";
connectAttr "lf_hand_CTRL_Pinkie_Twist.o" "jackal_rig_masterRN.phl[30]";
connectAttr "lf_hand_CTRL_Ring_Curl.o" "jackal_rig_masterRN.phl[31]";
connectAttr "lf_hand_CTRL_Ring_Knuckle.o" "jackal_rig_masterRN.phl[32]";
connectAttr "lf_hand_CTRL_Ring_Tip.o" "jackal_rig_masterRN.phl[33]";
connectAttr "lf_hand_CTRL_Ring_Wiggle.o" "jackal_rig_masterRN.phl[34]";
connectAttr "lf_hand_CTRL_Ring_Twist.o" "jackal_rig_masterRN.phl[35]";
connectAttr "lf_hand_CTRL_Middle_Curl.o" "jackal_rig_masterRN.phl[36]";
connectAttr "lf_hand_CTRL_Middle_Knuckle.o" "jackal_rig_masterRN.phl[37]";
connectAttr "lf_hand_CTRL_Middle_Tip.o" "jackal_rig_masterRN.phl[38]";
connectAttr "lf_hand_CTRL_Middle_Wiggle.o" "jackal_rig_masterRN.phl[39]";
connectAttr "lf_hand_CTRL_Middle_Twist.o" "jackal_rig_masterRN.phl[40]";
connectAttr "lf_hand_CTRL_Index_Curl.o" "jackal_rig_masterRN.phl[41]";
connectAttr "lf_hand_CTRL_Index_Knuckle.o" "jackal_rig_masterRN.phl[42]";
connectAttr "lf_hand_CTRL_Index_Tip.o" "jackal_rig_masterRN.phl[43]";
connectAttr "lf_hand_CTRL_Index_Wiggle.o" "jackal_rig_masterRN.phl[44]";
connectAttr "lf_hand_CTRL_Index_Twist.o" "jackal_rig_masterRN.phl[45]";
connectAttr "lf_hand_CTRL_Thumb_Curl.o" "jackal_rig_masterRN.phl[46]";
connectAttr "lf_hand_CTRL_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[47]";
connectAttr "lf_hand_CTRL_Thumb_Tip.o" "jackal_rig_masterRN.phl[48]";
connectAttr "lf_hand_CTRL_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[49]";
connectAttr "lf_hand_CTRL_Thumb_Twist.o" "jackal_rig_masterRN.phl[50]";
connectAttr "lf_hand_CTRL_Hand_Curl.o" "jackal_rig_masterRN.phl[51]";
connectAttr "lf_hand_CTRL_Hand_Wiggle.o" "jackal_rig_masterRN.phl[52]";
connectAttr "lf_hand_CTRL_Hand_Twist.o" "jackal_rig_masterRN.phl[53]";
connectAttr "rt_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[54]";
connectAttr "rt_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[55]";
connectAttr "rt_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[56]";
connectAttr "rt_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[57]";
connectAttr "rt_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[58]";
connectAttr "rt_hand_CTRL1_Pinkie_Curl.o" "jackal_rig_masterRN.phl[59]";
connectAttr "rt_hand_CTRL1_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[60]";
connectAttr "rt_hand_CTRL1_Pinkie_Tip.o" "jackal_rig_masterRN.phl[61]";
connectAttr "rt_hand_CTRL1_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[62]";
connectAttr "rt_hand_CTRL1_Pinkie_Twist.o" "jackal_rig_masterRN.phl[63]";
connectAttr "rt_hand_CTRL1_Ring_Curl.o" "jackal_rig_masterRN.phl[64]";
connectAttr "rt_hand_CTRL1_Ring_Knuckle.o" "jackal_rig_masterRN.phl[65]";
connectAttr "rt_hand_CTRL1_Ring_Tip.o" "jackal_rig_masterRN.phl[66]";
connectAttr "rt_hand_CTRL1_Ring_Wiggle.o" "jackal_rig_masterRN.phl[67]";
connectAttr "rt_hand_CTRL1_Ring_Twist.o" "jackal_rig_masterRN.phl[68]";
connectAttr "rt_hand_CTRL1_Middle_Curl.o" "jackal_rig_masterRN.phl[69]";
connectAttr "rt_hand_CTRL1_Middle_Knuckle.o" "jackal_rig_masterRN.phl[70]";
connectAttr "rt_hand_CTRL1_Middle_Tip.o" "jackal_rig_masterRN.phl[71]";
connectAttr "rt_hand_CTRL1_Middle_Wiggle.o" "jackal_rig_masterRN.phl[72]";
connectAttr "rt_hand_CTRL1_Middle_Twist.o" "jackal_rig_masterRN.phl[73]";
connectAttr "rt_hand_CTRL1_Index_Curl.o" "jackal_rig_masterRN.phl[74]";
connectAttr "rt_hand_CTRL1_Index_Knuckle.o" "jackal_rig_masterRN.phl[75]";
connectAttr "rt_hand_CTRL1_Index_Tip.o" "jackal_rig_masterRN.phl[76]";
connectAttr "rt_hand_CTRL1_Index_Wiggle.o" "jackal_rig_masterRN.phl[77]";
connectAttr "rt_hand_CTRL1_Index_Twist.o" "jackal_rig_masterRN.phl[78]";
connectAttr "rt_hand_CTRL1_Thumb_Curl.o" "jackal_rig_masterRN.phl[79]";
connectAttr "rt_hand_CTRL1_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[80]";
connectAttr "rt_hand_CTRL1_Thumb_Tip.o" "jackal_rig_masterRN.phl[81]";
connectAttr "rt_hand_CTRL1_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[82]";
connectAttr "rt_hand_CTRL1_Thumb_Twist.o" "jackal_rig_masterRN.phl[83]";
connectAttr "rt_hand_CTRL1_Hand_Curl.o" "jackal_rig_masterRN.phl[84]";
connectAttr "rt_hand_CTRL1_Hand_Wiggle.o" "jackal_rig_masterRN.phl[85]";
connectAttr "rt_hand_CTRL1_Hand_Twist.o" "jackal_rig_masterRN.phl[86]";
connectAttr "lf_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[87]";
connectAttr "lf_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[88]";
connectAttr "lf_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[89]";
connectAttr "lf_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[90]";
connectAttr "lf_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[91]";
connectAttr "lf_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[92]";
connectAttr "lf_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[93]";
connectAttr "lf_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[94]";
connectAttr "lf_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[95]";
connectAttr "lf_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[96]";
connectAttr "rt_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[97]";
connectAttr "rt_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[98]";
connectAttr "rt_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[99]";
connectAttr "rt_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[100]";
connectAttr "rt_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[101]";
connectAttr "rt_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[102]";
connectAttr "rt_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[103]";
connectAttr "rt_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[104]";
connectAttr "rt_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[105]";
connectAttr "rt_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[106]";
connectAttr "lf_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[107]";
connectAttr "lf_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[108]";
connectAttr "lf_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[109]";
connectAttr "lf_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[110]";
connectAttr "rt_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[111]";
connectAttr "rt_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[112]";
connectAttr "rt_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[113]";
connectAttr "rt_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[114]";
connectAttr "cl_CoG_CTRL_translateX.o" "jackal_rig_masterRN.phl[115]";
connectAttr "cl_CoG_CTRL_translateY.o" "jackal_rig_masterRN.phl[116]";
connectAttr "cl_CoG_CTRL_translateZ.o" "jackal_rig_masterRN.phl[117]";
connectAttr "cl_CoG_CTRL_rotateX.o" "jackal_rig_masterRN.phl[118]";
connectAttr "cl_CoG_CTRL_rotateY.o" "jackal_rig_masterRN.phl[119]";
connectAttr "cl_CoG_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[120]";
connectAttr "cl_CoG_CTRL_visibility.o" "jackal_rig_masterRN.phl[121]";
connectAttr "cl_CoG_CTRL_scaleX.o" "jackal_rig_masterRN.phl[122]";
connectAttr "cl_CoG_CTRL_scaleY.o" "jackal_rig_masterRN.phl[123]";
connectAttr "cl_CoG_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[124]";
connectAttr "cl_hips_CTRL_translateX.o" "jackal_rig_masterRN.phl[125]";
connectAttr "cl_hips_CTRL_translateY.o" "jackal_rig_masterRN.phl[126]";
connectAttr "cl_hips_CTRL_translateZ.o" "jackal_rig_masterRN.phl[127]";
connectAttr "cl_hips_CTRL_rotateX.o" "jackal_rig_masterRN.phl[128]";
connectAttr "cl_hips_CTRL_rotateY.o" "jackal_rig_masterRN.phl[129]";
connectAttr "cl_hips_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[130]";
connectAttr "cl_hips_CTRL_scaleX.o" "jackal_rig_masterRN.phl[131]";
connectAttr "cl_hips_CTRL_scaleY.o" "jackal_rig_masterRN.phl[132]";
connectAttr "cl_hips_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[133]";
connectAttr "cl_hips_CTRL_visibility.o" "jackal_rig_masterRN.phl[134]";
connectAttr "cl_belly_CTRL_translateX.o" "jackal_rig_masterRN.phl[135]";
connectAttr "cl_belly_CTRL_translateY.o" "jackal_rig_masterRN.phl[136]";
connectAttr "cl_belly_CTRL_translateZ.o" "jackal_rig_masterRN.phl[137]";
connectAttr "cl_belly_CTRL_rotateX.o" "jackal_rig_masterRN.phl[138]";
connectAttr "cl_belly_CTRL_rotateY.o" "jackal_rig_masterRN.phl[139]";
connectAttr "cl_belly_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[140]";
connectAttr "cl_belly_CTRL_scaleX.o" "jackal_rig_masterRN.phl[141]";
connectAttr "cl_belly_CTRL_scaleY.o" "jackal_rig_masterRN.phl[142]";
connectAttr "cl_belly_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[143]";
connectAttr "cl_belly_CTRL_visibility.o" "jackal_rig_masterRN.phl[144]";
connectAttr "cl_chest_CTRL_translateX.o" "jackal_rig_masterRN.phl[145]";
connectAttr "cl_chest_CTRL_translateY.o" "jackal_rig_masterRN.phl[146]";
connectAttr "cl_chest_CTRL_translateZ.o" "jackal_rig_masterRN.phl[147]";
connectAttr "cl_chest_CTRL_rotateX.o" "jackal_rig_masterRN.phl[148]";
connectAttr "cl_chest_CTRL_rotateY.o" "jackal_rig_masterRN.phl[149]";
connectAttr "cl_chest_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[150]";
connectAttr "cl_chest_CTRL_scaleX.o" "jackal_rig_masterRN.phl[151]";
connectAttr "cl_chest_CTRL_scaleY.o" "jackal_rig_masterRN.phl[152]";
connectAttr "cl_chest_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[153]";
connectAttr "cl_chest_CTRL_visibility.o" "jackal_rig_masterRN.phl[154]";
connectAttr "lf_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[155]";
connectAttr "lf_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[156]";
connectAttr "lf_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[157]";
connectAttr "lf_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[158]";
connectAttr "lf_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[159]";
connectAttr "lf_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[160]";
connectAttr "lf_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[161]";
connectAttr "lf_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[162]";
connectAttr "lf_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[163]";
connectAttr "lf_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[164]";
connectAttr "lf_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[165]";
connectAttr "lf_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[166]";
connectAttr "lf_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[167]";
connectAttr "lf_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[168]";
connectAttr "lf_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[169]";
connectAttr "rt_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[170]";
connectAttr "rt_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[171]";
connectAttr "rt_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[172]";
connectAttr "rt_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[173]";
connectAttr "rt_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[174]";
connectAttr "rt_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[175]";
connectAttr "rt_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[176]";
connectAttr "rt_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[177]";
connectAttr "rt_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[178]";
connectAttr "rt_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[179]";
connectAttr "rt_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[180]";
connectAttr "rt_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[181]";
connectAttr "rt_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[182]";
connectAttr "rt_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[183]";
connectAttr "rt_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[184]";
connectAttr "cl_head_CTRL_Ear_Left.o" "jackal_rig_masterRN.phl[185]";
connectAttr "cl_head_CTRL_Ear_Right.o" "jackal_rig_masterRN.phl[186]";
connectAttr "cl_head_CTRL_Jaw_Upper.o" "jackal_rig_masterRN.phl[187]";
connectAttr "cl_head_CTRL_Jaw_Bottom.o" "jackal_rig_masterRN.phl[188]";
connectAttr "cl_head_CTRL_Beard.o" "jackal_rig_masterRN.phl[189]";
connectAttr "cl_head_CTRL_translateX.o" "jackal_rig_masterRN.phl[190]";
connectAttr "cl_head_CTRL_translateY.o" "jackal_rig_masterRN.phl[191]";
connectAttr "cl_head_CTRL_translateZ.o" "jackal_rig_masterRN.phl[192]";
connectAttr "cl_head_CTRL_rotateX.o" "jackal_rig_masterRN.phl[193]";
connectAttr "cl_head_CTRL_rotateY.o" "jackal_rig_masterRN.phl[194]";
connectAttr "cl_head_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[195]";
connectAttr "cl_head_CTRL_scaleX.o" "jackal_rig_masterRN.phl[196]";
connectAttr "cl_head_CTRL_scaleY.o" "jackal_rig_masterRN.phl[197]";
connectAttr "cl_head_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[198]";
connectAttr "cl_head_CTRL_visibility.o" "jackal_rig_masterRN.phl[199]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"jackal_rig_masterRN\" \"\" \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma\" 4277170780 \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya/scenes/rig/jackal_rig_master.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FO_Jackal_01_AM@Enter_01.ma
