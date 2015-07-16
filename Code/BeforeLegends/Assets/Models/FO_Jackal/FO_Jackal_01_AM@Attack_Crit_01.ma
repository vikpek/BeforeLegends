//Maya ASCII 2015 scene
//Name: FO_Jackal_01_AM@Attack_Crit_01.ma
//Last modified: Thu, Jul 16, 2015 11:06:33 AM
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
	setAttr ".t" -type "double3" 6.7735111664853953 2.4465596641641527 -0.97839599772879993 ;
	setAttr ".r" -type "double3" -15.338352729460379 96.20000000000023 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 7.131697756807065;
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
	setAttr ".t" -type "double3" 100.10669675632857 1.2333421516799712 -0.1524243956812229 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.6985115989439361;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 100 ".lnk";
	setAttr -s 100 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "jackal_rig_masterRN";
	setAttr -s 179 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"jackal_rig_masterRN"
		"jackal_rig_masterRN" 0
		"jackal_rig_masterRN" 405
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotate" " -type \"double3\" -16.17511634452501568 13.37075740790588085 2.05859497388045964"
		
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
		"rotate" " -type \"double3\" -14.51444221380511834 13.530706607632629 21.17890486199961586"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"FK_IK_Switch" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Curl" " -av -k 1 9.56082418363516418"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Knuckle" " -av -k 1 13.86082418363516311"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Tip" " -av -k 1 10.69954885317718229"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Curl" " -av -k 1 9.56082418363516418"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Knuckle" " -av -k 1 13.86082418363516311"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Tip" " -av -k 1 10.69954885317718229"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Curl" " -av -k 1 9.56082418363516418"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Knuckle" " -av -k 1 13.86082418363516311"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Tip" " -av -k 1 10.69954885317718229"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Curl" " -av -k 1 9.56082418363516418"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Knuckle" " -av -k 1 13.86082418363516311"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Tip" " -av -k 1 10.69954885317718229"
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
		"Ball_Roll" " -av -k 1 -1.26804801827834979"
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
		"Ball_Roll" " -av -k 1 -1.26804801827834979"
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
		"translate" " -type \"double3\" 0 -0.173934080171364 -0.015519182813262727"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotate" " -type \"double3\" 15.32169336011811289 6.00000000000000089 0"
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
		"rotate" " -type \"double3\" 2.35531345158622862 0 0"
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
		"translate" " -type \"double3\" 0.0068134854206862161 0.0042014006840323526 -0.0052797129678444233"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL" 
		"rotate" " -type \"double3\" 3.7326561667724576 0.038304789489836011 1.28611836059654516"
		
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
		"translate" " -type \"double3\" -0.019160548098961408 -0.0030771379730828571 0.0022637887508537482"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL" 
		"rotate" " -type \"double3\" 3.71064980523695542 14.83004373983542301 0.13398677887697583"
		
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
		"rotate" " -type \"double3\" -6.01902036149848829 18.41236740837458541 -62.48613054771622188"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotate" " -type \"double3\" 28.925680528123344 -30.8292577349127086 -6.85113792073526628"
		
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
		"rotate" " -type \"double3\" 0 -5 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotate" " -type \"double3\" -9.5973159441309388 -2.70715347877598456 -64.67137944664084159"
		
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
		"rotate" " -type \"double3\" -5.86478756108381383 9.01127273703710863 -2.59474556191442218"
		
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
		"Jaw_Upper" " -av -k 1 3.79994104289836887"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Bottom" " -av -k 1 5.3832498656097556"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Beard" " -av -k 1 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:cl_beard_a_JNT" 
		"rotateY" " -av"
		2 "jackal_rig_master:mesh" "displayType" " 2"
		2 "jackal_rig_master:mesh" "visibility" " 1"
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[1]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[2]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[3]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[4]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[5]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[6]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[7]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[8]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[9]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[10]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[11]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[12]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[13]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[14]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[15]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[16]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[17]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[18]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[19]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[20]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[21]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[22]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[23]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[24]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[25]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[26]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[27]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[28]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[29]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[30]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[31]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[32]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_hand_ctGRP|jackal_rig_master:lf_hand_CTRL.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[33]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.FK_IK_Switch" 
		"jackal_rig_masterRN.placeHolderList[34]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[35]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[36]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[37]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[38]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Curl" 
		"jackal_rig_masterRN.placeHolderList[39]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[40]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Tip" 
		"jackal_rig_masterRN.placeHolderList[41]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[42]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Pinkie_Twist" 
		"jackal_rig_masterRN.placeHolderList[43]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Curl" 
		"jackal_rig_masterRN.placeHolderList[44]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[45]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Tip" 
		"jackal_rig_masterRN.placeHolderList[46]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[47]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Ring_Twist" 
		"jackal_rig_masterRN.placeHolderList[48]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Curl" 
		"jackal_rig_masterRN.placeHolderList[49]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[50]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Tip" 
		"jackal_rig_masterRN.placeHolderList[51]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[52]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Middle_Twist" 
		"jackal_rig_masterRN.placeHolderList[53]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Curl" 
		"jackal_rig_masterRN.placeHolderList[54]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[55]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Tip" 
		"jackal_rig_masterRN.placeHolderList[56]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[57]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Index_Twist" 
		"jackal_rig_masterRN.placeHolderList[58]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Curl" 
		"jackal_rig_masterRN.placeHolderList[59]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Knuckle" 
		"jackal_rig_masterRN.placeHolderList[60]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Tip" 
		"jackal_rig_masterRN.placeHolderList[61]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[62]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Thumb_Twist" 
		"jackal_rig_masterRN.placeHolderList[63]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Curl" 
		"jackal_rig_masterRN.placeHolderList[64]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Wiggle" 
		"jackal_rig_masterRN.placeHolderList[65]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1.Hand_Twist" 
		"jackal_rig_masterRN.placeHolderList[66]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[67]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[68]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[69]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[70]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[71]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[72]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[73]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[74]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[75]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[76]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Roll" 
		"jackal_rig_masterRN.placeHolderList[77]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Foot_Twist" 
		"jackal_rig_masterRN.placeHolderList[78]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.Ball_Roll" 
		"jackal_rig_masterRN.placeHolderList[79]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[80]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[81]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[82]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[83]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[84]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[85]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_foot_ctGRP|jackal_rig_master:rt_foot_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[86]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[87]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[88]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[89]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:lf_knee_ctGRP|jackal_rig_master:lf_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[90]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[91]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[92]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[93]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:rt_knee_ctGRP|jackal_rig_master:rt_knee_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[94]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[95]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[96]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[97]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[98]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[99]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[100]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[101]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[102]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[103]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[104]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[105]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[106]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[107]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[108]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[109]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[110]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[111]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[112]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[113]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[114]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[115]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[116]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[117]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[118]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[119]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[120]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[121]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[122]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[123]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[124]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[125]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[126]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[127]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[128]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[129]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[130]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[131]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[132]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[133]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[134]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[135]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[136]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[137]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[138]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[139]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[140]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[141]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[142]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[143]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[144]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[145]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[146]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[147]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[148]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[149]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[150]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[151]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[152]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[153]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[154]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[155]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[156]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[157]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[158]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[159]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[160]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[161]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[162]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[163]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[164]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Left" 
		"jackal_rig_masterRN.placeHolderList[165]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Ear_Right" 
		"jackal_rig_masterRN.placeHolderList[166]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Upper" 
		"jackal_rig_masterRN.placeHolderList[167]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Jaw_Bottom" 
		"jackal_rig_masterRN.placeHolderList[168]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.Beard" 
		"jackal_rig_masterRN.placeHolderList[169]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateX" 
		"jackal_rig_masterRN.placeHolderList[170]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateY" 
		"jackal_rig_masterRN.placeHolderList[171]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.translateZ" 
		"jackal_rig_masterRN.placeHolderList[172]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateX" 
		"jackal_rig_masterRN.placeHolderList[173]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateY" 
		"jackal_rig_masterRN.placeHolderList[174]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.rotateZ" 
		"jackal_rig_masterRN.placeHolderList[175]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleX" 
		"jackal_rig_masterRN.placeHolderList[176]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleY" 
		"jackal_rig_masterRN.placeHolderList[177]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.scaleZ" 
		"jackal_rig_masterRN.placeHolderList[178]" ""
		5 4 "jackal_rig_masterRN" "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL.visibility" 
		"jackal_rig_masterRN.placeHolderList[179]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "lf_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -30.758613088467385 6 -30.758613088467385
		 9 -30.758613088467385 12 -30.758613088467385 18 15.31022383051562 21 15.31022383051562
		 29 10.689860696731436 32 6.3792262535672108 42 -30.758613088467385 60 -30.758613088467385;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.2130590569717041 6 7.2130590569717041
		 9 7.2130590569717041 12 7.2130590569717041 21 12.996177092387077 29 24.714157278762773
		 32 22.894045947787969 42 7.2130590569717041 60 7.2130590569717041;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.19123799088442006 6 0.19123799088442006
		 9 0.19123799088442006 12 0.19123799088442006 21 1.9450013655898986 29 5.4985453794834553
		 32 4.9465862856862639 42 0.19123799088442006 60 0.19123799088442006;
createNode animCurveTU -n "lf_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.3 6 15.3 9 15.3 12 15.3 21 15.3 29 15.3
		 32 15.3 42 15.3 60 15.3;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.9 6 14.9 9 14.9 12 14.9 21 14.9 29 14.9
		 32 14.9 42 14.9 60 14.9;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.000000000000002 6 14.000000000000002
		 9 14.000000000000002 12 14.000000000000002 21 14.000000000000002 29 14.000000000000002
		 32 14.000000000000002 42 14.000000000000002 60 14.000000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.1 6 17.1 9 17.1 12 17.1 21 17.1 29 17.1
		 32 17.1 42 17.1 60 17.1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.9 6 8.9 9 8.9 12 8.9 21 8.9 29 8.9 32 8.9
		 42 8.9 60 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.4 6 14.4 9 14.4 12 14.4 21 14.4 29 14.4
		 32 14.4 42 14.4 60 14.4;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20 6 20 9 20 12 20 21 20 29 20 32 20 42 20
		 60 20;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.9 6 8.9 9 8.9 12 8.9 21 8.9 29 8.9 32 8.9
		 42 8.9 60 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.7 6 0.7 9 0.7 12 0.7 21 0.7 29 0.7 32 0.7
		 42 0.7 60 0.7;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.8 6 13.8 9 13.8 12 13.8 21 13.8 29 13.8
		 32 13.8 42 13.8 60 13.8;
createNode animCurveTU -n "lf_hand_CTRL_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.900000000000002 6 16.900000000000002
		 9 16.900000000000002 12 16.900000000000002 21 16.900000000000002 29 16.900000000000002
		 32 16.900000000000002 42 16.900000000000002 60 16.900000000000002;
createNode animCurveTU -n "lf_hand_CTRL_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.9 6 8.9 9 8.9 12 8.9 21 8.9 29 8.9 32 8.9
		 42 8.9 60 8.9;
createNode animCurveTU -n "lf_hand_CTRL_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.1 6 -0.1 9 -0.1 12 -0.1 21 -0.1 29 -0.1
		 32 -0.1 42 -0.1 60 -0.1;
createNode animCurveTU -n "lf_hand_CTRL_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.9 6 4.9 9 4.9 12 4.9 21 4.9 29 4.9 32 4.9
		 42 4.9 60 4.9;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3 6 3.3 9 3.3 12 3.3 21 3.3 29 3.3 32 3.3
		 42 3.3 60 3.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.3 6 -0.3 9 -0.3 12 -0.3 21 -0.3 29 -0.3
		 32 -0.3 42 -0.3 60 -0.3;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10 6 10 9 10 12 10 21 10 29 10 32 10 42 10
		 60 10;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -6.7 6 -6.7 9 -6.7 12 -6.7 21 -6.7 29 -6.7
		 32 -6.7 42 -6.7 60 -6.7;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.2 6 -9.2 9 -9.2 12 -9.2 21 -9.2 29 -9.2
		 32 -9.2 42 -9.2 60 -9.2;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.6 6 3.6 9 3.6 12 3.6 21 3.6 29 3.6 32 3.6
		 42 3.6 60 3.6;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "rt_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -37.411573516810236 6 -37.411573516810236
		 9 -37.411573516810236 12 -37.411573516810236 21 -35.722668071398175 29 -9.4566291829284275
		 32 8.3826694364411249 42 -37.411573516810236 60 -37.411573516810236;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.4584187939617648 6 7.4584187939617648
		 9 7.4584187939617648 12 7.4584187939617648 21 -6.4879376321364797 29 28.762299042261098
		 32 23.699888333378553 42 7.4584187939617648 60 7.4584187939617648;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.591117213862427 6 8.591117213862427
		 9 8.591117213862427 12 8.591117213862427 21 -20.8534926059471 29 10.523820428791298
		 32 33.766681705955605 42 8.591117213862427 60 8.591117213862427;
createNode animCurveTU -n "rt_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.8974492647643797 6 2.8974492647643797
		 9 8.8974492647643793 21 2.8974492647643797 29 9.7974492647643796 36 9.7974492647643796
		 45 2.8974492647643797 60 2.8974492647643797;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.1974492647643791 6 7.1974492647643791
		 9 13.19744926476438 21 7.1974492647643791 29 14.097449264764379 36 14.097449264764379
		 45 7.1974492647643791 60 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0361739343063974 6 4.0361739343063974
		 9 10.036173934306397 21 3.4361739343063973 29 10.936173934306398 36 10.936173934306398
		 45 4.0361739343063974 60 4.0361739343063974;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.8974492647643797 6 2.8974492647643797
		 9 8.8974492647643793 21 2.8974492647643797 29 9.7974492647643796 36 9.7974492647643796
		 45 2.8974492647643797 60 2.8974492647643797;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.1974492647643791 6 7.1974492647643791
		 9 13.19744926476438 21 7.1974492647643791 29 14.097449264764379 36 14.097449264764379
		 45 7.1974492647643791 60 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0361739343063974 6 4.0361739343063974
		 9 10.036173934306397 21 3.4361739343063973 29 10.936173934306398 36 10.936173934306398
		 45 4.0361739343063974 60 4.0361739343063974;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.8974492647643797 6 2.8974492647643797
		 9 8.8974492647643793 21 2.8974492647643797 29 9.7974492647643796 36 9.7974492647643796
		 45 2.8974492647643797 60 2.8974492647643797;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.1974492647643791 6 7.1974492647643791
		 9 13.19744926476438 21 7.1974492647643791 29 14.097449264764379 36 14.097449264764379
		 45 7.1974492647643791 60 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0361739343063974 6 4.0361739343063974
		 9 10.036173934306397 21 3.4361739343063973 29 10.936173934306398 36 10.936173934306398
		 45 4.0361739343063974 60 4.0361739343063974;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.8974492647643797 6 2.8974492647643797
		 9 8.8974492647643793 21 2.8974492647643797 29 9.7974492647643796 36 9.7974492647643796
		 45 2.8974492647643797 60 2.8974492647643797;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.1974492647643791 6 7.1974492647643791
		 9 13.19744926476438 21 7.1974492647643791 29 14.097449264764379 36 14.097449264764379
		 45 7.1974492647643791 60 7.1974492647643791;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0361739343063974 6 4.0361739343063974
		 9 10.036173934306397 21 3.4361739343063973 29 10.936173934306398 36 10.936173934306398
		 45 4.0361739343063974 60 4.0361739343063974;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 -1.8 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0998219451973306 6 4.0998219451973306
		 9 4.0998219451973306 21 2.2998219451973307 29 4.0998219451973306 36 4.0998219451973306
		 45 4.0998219451973306 60 4.0998219451973306;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0729935532865511 6 4.0729935532865511
		 9 4.0729935532865511 21 2.2729935532865513 29 4.0729935532865511 36 4.0729935532865511
		 45 4.0729935532865511 60 4.0729935532865511;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.0729935532865511 6 4.0729935532865511
		 9 4.0729935532865511 21 0 29 4.0729935532865511 36 4.0729935532865511 45 4.0729935532865511
		 60 4.0729935532865511;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.5 6 -14.5 9 -14.5 21 -14.5 29 -14.5
		 36 -14.5 45 -14.5 60 -14.5;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 9 0 21 0 29 0 36 0 45 0 60 0;
createNode animCurveTU -n "lf_foot_CTRL_visibility";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 9 1 12 1 18 1 21 1 22 1 24 1 25 1 28 1
		 32 1 45 1 60 1;
	setAttr -s 12 ".kit[0:11]"  1 9 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lf_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.30416408966219854 9 -0.30416408966219854
		 12 -0.30416408966219854 24 -0.13234914350072283 28 -0.30416408966219854 32 -0.30416408966219854
		 45 -0.30416408966219854 60 -0.30416408966219854;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lf_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.099780553933715418 9 0.099780553933715418
		 12 0.099780553933715418 24 0.050871461034459366 28 0.099780553933715418 32 0.099780553933715418
		 45 0.099780553933715418 60 0.099780553933715418;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "lf_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 24 0.62655163697461469 28 0
		 32 0 45 0 60 0;
	setAttr -s 8 ".kit[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kot[0:7]"  1 18 18 18 18 18 18 18;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 0 24 0 28 0 32 0 45 0 60 0;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 0 24 0 28 0 32 0 45 0 60 0;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lf_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 -14.952196670148547 24 -14.952196670148547
		 28 0 32 0 45 0 60 0;
	setAttr -s 9 ".kit[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 9 0 12 0 18 11.8 21 11.8 22 11.8 24 11.8
		 25 11.8 29 0 32 0 45 0 60 0;
	setAttr -s 12 ".kit[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 9 0 12 0 18 0 21 0 22 0 24 0 25 0 28 0
		 32 0 45 0 60 0;
	setAttr -s 12 ".kit[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "lf_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 9 -11.8 12 0 18 0 21 0 24 0 29 -3.2
		 32 -2.4578129149041952 45 0 60 0;
	setAttr -s 10 ".kit[0:9]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 0.20395424962043762 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.9789804220199585 0 0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.20395424962043762 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.9789804220199585 0 0;
createNode animCurveTU -n "rt_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 9 1 12 1 18 1 21 1 22 1 24 1 25 1 28 1
		 32 1 45 1 60 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "rt_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 24 0.16393461889439551 28 0
		 32 0 45 0 60 0;
createNode animCurveTL -n "rt_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 24 -0.070197195713103386 28 0
		 32 0 45 0 60 0;
createNode animCurveTL -n "rt_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 24 0.62622826180194269 28 0
		 32 0 45 0 60 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 0 24 0 28 0 32 0 45 0 60 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 0 24 0 28 0 32 0 45 0 60 0;
createNode animCurveTA -n "rt_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 9 0 12 0 18 -14.952196670148547 24 -14.952196670148547
		 28 0 32 0 45 0 60 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 9 0 12 0 18 11.8 21 11.8 22 11.8 24 11.8
		 25 11.8 29 0 32 0 45 0 60 0;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 9 0 12 0 18 0 21 0 22 0 24 0 25 0 28 0
		 32 0 45 0 60 0;
createNode animCurveTU -n "rt_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 9 -11.8 12 0 18 0 21 0 24 0 29 -3.2
		 32 -2.4578129149041952 45 0 60 0;
createNode animCurveTU -n "lf_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "lf_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "lf_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "lf_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "rt_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 9 1 12 1 21 1 22 1 23 1 29 1 32 1
		 42 1 60 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTL -n "rt_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 9 0 12 0 21 -0.0176676408709662
		 22 -0.0096388715083677197 23 -0.0096435590007289025 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "rt_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 9 0 12 0 21 -0.0063611263563209163
		 22 -0.0034704169076601528 23 -0.0034721046106999387 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "rt_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 9 0 12 0 21 -0.05154800400432822
		 22 -0.028122859794317747 23 -0.028136536259487883 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "cl_CoG_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 18 1 24 1 29 1 32 1 45 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "cl_CoG_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 18 0 24 0 29 0 32 0 45 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 -0.2899074703676312 12 0 18 0.39767417748998635
		 24 0.51648871452590095 29 -0.3417396078080519 32 -0.31996288242261378 45 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.1339378560830905 9 -0.1339378560830905
		 12 0.00089122837348140638 18 0.15921803517523847 24 0.25883565174176737 29 0.098727014172753313
		 32 0.083900874999427097 45 -0.1339378560830905;
createNode animCurveTA -n "cl_CoG_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 18.769025603928974 12 0 18 -5.0091510192797388
		 24 8.3548839862677013 29 30.103527648898147 32 28.185235944439913 45 0;
createNode animCurveTA -n "cl_CoG_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.0000000000000009 9 6.0000000000000009
		 12 6.0000000000000009 18 6.0000000000000009 24 6.0000000000000009 29 6.0000000000000009
		 32 6.0000000000000009 45 6.0000000000000009;
createNode animCurveTA -n "cl_CoG_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0 12 0 18 0 24 0 29 0 32 0 45 0;
createNode animCurveTU -n "cl_CoG_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 18 1 24 1 29 1 32 1 45 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 18 1 24 1 29 1 32 1 45 1;
createNode animCurveTU -n "cl_CoG_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 18 1 24 1 29 1 32 1 45 1;
createNode animCurveTU -n "cl_hips_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "cl_hips_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 25 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "cl_hips_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 25 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "cl_hips_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 25 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "cl_hips_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.8354218132515978 6 6.8354218132515978
		 9 6.8354218132515978 12 6.8354218132515978 25 -8.8449872081723537 29 -5.8977149070165025
		 32 -4.5734707864644166 42 6.8354218132515978 60 6.8354218132515978;
createNode animCurveTA -n "cl_hips_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 25 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "cl_hips_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 25 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "cl_hips_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_hips_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_belly_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "cl_belly_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.0062891146172022105 9 0.0062891146172022105
		 12 0.0062891146172022105 25 0.0062891146172022105 29 0.0077794547336288138 32 0.0076244596071208745
		 42 0.0062891146172022105 60 0.0062891146172022105;
createNode animCurveTL -n "cl_belly_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 -0.018826059732949905 12 0 25 -0.0045731489795983347
		 29 0.011941007911917836 32 0.010699145056895402 42 0 60 0;
createNode animCurveTL -n "cl_belly_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.0029229894338721092 9 0.0057209767410613746
		 12 0.0029229894338721092 25 0.0055743273664339132 29 -0.02039031523249072 32 -0.017965735389102337
		 42 0.0029229894338721092 60 0.0029229894338721092;
createNode animCurveTA -n "cl_belly_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -7.3174972603857418 9 -1.0504366536530196
		 12 -7.3174972603857418 18 -17.903482215534691 25 -17.903482215534691 29 24.088687912760349
		 32 20.822449830331813 42 -7.3174972603857418 60 -7.3174972603857418;
createNode animCurveTA -n "cl_belly_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.038304789489836011 9 0.038304789489836011
		 12 0.038304789489836011 25 0.038304789489836011 29 0.038304789489836011 32 0.038304789489836011
		 42 0.038304789489836011 60 0.038304789489836011;
createNode animCurveTA -n "cl_belly_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2861183605965452 9 1.2861183605965452
		 12 1.2861183605965452 25 1.2861183605965452 29 1.2861183605965452 32 1.2861183605965452
		 42 1.2861183605965452 60 1.2861183605965452;
createNode animCurveTU -n "cl_belly_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_belly_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_belly_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_chest_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "cl_chest_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.019085073858312589 9 -0.019424612706227293
		 12 -0.019085073858312589 25 -0.019189491227715391 29 -0.019401065789791162 32 -0.019296789943869644
		 42 -0.019085073858312589 60 -0.019085073858312589;
createNode animCurveTL -n "cl_chest_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 -0.015095554433379895 12 0 25 -0.004257169572833377
		 29 -0.012883213239763297 32 -0.0086318136787757738 42 0 60 0;
createNode animCurveTL -n "cl_chest_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 9 0.0019617530081761842 12 0 25 0.0031319145364057661
		 29 0.0094779223920778352 32 0.0063502527380207979 42 0 60 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 8.996 2.7108877231097681 9 7.0757864575017422
		 12 0 18 -9.7865294652407862 25 -1.079384307638027 29 10.546220462096223 32 9.4494152720013975
		 42 0 60 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.830043739835423 9 14.830043739835423
		 12 14.830043739835423 25 14.830043739835423 29 14.830043739835423 32 14.830043739835423
		 42 14.830043739835423 60 14.830043739835423;
createNode animCurveTA -n "cl_chest_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.13398677887697583 9 0.13398677887697583
		 12 0.13398677887697583 25 0.13398677887697583 29 0.13398677887697583 32 0.13398677887697583
		 42 0.13398677887697583 60 0.13398677887697583;
createNode animCurveTU -n "cl_chest_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_chest_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 9 1 12 1 25 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "lf_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "lf_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "lf_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 9 0 12 0 18 13.741430189360793 21 13.741430189360793
		 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "lf_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.5796691333523469 9 -15.927408743290204
		 12 -8.5796691333523469 18 0 21 0 29 -1.3019231111687564 32 -2.0588074981405344 42 -8.5796691333523469
		 60 -8.5796691333523469;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 50.969132721012087 9 69.979919597150285
		 12 50.969132721012087 18 -77.72457539047241 21 -77.72457539047241 29 -41.562055691731196
		 32 -31.938827345472411 42 50.969132721012087 60 50.969132721012087;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -57.698073518531857 9 -66.023239028864168
		 12 -57.698073518531857 18 -73.704507242784317 21 -73.704507242784317 29 -71.306446333345448
		 32 -69.891177803195063 42 -57.698073518531857 60 -57.698073518531857;
createNode animCurveTU -n "lf_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 39.581210184402863 6 39.581210184402863
		 9 39.892840768818964 12 39.581210184402863 18 -3.0235643839025532 21 -3.0235643839025532
		 29 9.2966047083496122 32 12.446198687111085 42 39.581210184402863 60 39.581210184402863;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -33.098719372932493 6 -33.098719372932493
		 9 -21.497025169239464 12 -33.098719372932493 18 -59.677996113364671 21 -59.677996113364671
		 29 -26.648570719544228 32 -27.319385116545106 42 -33.098719372932493 60 -33.098719372932493;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -6.3713360730641382 6 -6.3713360730641382
		 9 3.3144222171246724 12 -6.3713360730641382 18 -25.449666031722291 21 -25.449666031722291
		 29 -7.7350045081638665 32 -7.5931832156390779 42 -6.3713360730641382 60 -6.3713360730641382;
createNode animCurveTU -n "rt_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "rt_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "rt_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5 6 -5 9 -5 12 -5 21 -5 29 -5 32 -5 42 -5
		 60 -5;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "rt_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.1147831510668968 6 -9.1147831510668968
		 9 -9.1147831510668968 12 -9.1147831510668968 21 -12.851172131543631 29 -10.486213393303254
		 32 -10.34358487411536 42 -9.1147831510668968 60 -9.1147831510668968;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.239944656421704 6 13.239944656421704
		 9 13.239944656421704 12 13.239944656421704 23 -46.108523356661784 29 -32.084089542502788
		 32 -27.370397454983614 42 13.239944656421704 60 13.239944656421704;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -67.387380623406898 6 -67.387380623406898
		 9 -67.387380623406898 12 -67.387380623406898 23 -55.946753160863366 29 -59.668099877953374
		 32 -60.470903803382569 42 -67.387380623406898 60 -67.387380623406898;
createNode animCurveTU -n "rt_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.2447471177220968 6 -3.2447471177220968
		 9 -3.2447471177220968 12 -3.2447471177220968 21 -3.313180384402882 29 -3.2447471177220968
		 32 -3.2447471177220968 42 -3.2447471177220968 60 -3.2447471177220968;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -39.379162672731255 6 -39.379162672731255
		 9 -39.379162672731255 12 -39.379162672731255 21 -61.851385412370071 29 -39.379162672731255
		 32 -39.379162672731255 42 -39.379162672731255 60 -39.379162672731255;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.82434935557964173 6 -0.82434935557964173
		 9 -0.82434935557964173 12 -0.82434935557964173 21 0.47989746627845992 29 -0.82434935557964173
		 32 -0.82434935557964173 42 -0.82434935557964173 60 -0.82434935557964173;
createNode animCurveTU -n "cl_head_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "cl_head_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "cl_head_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTL -n "cl_head_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTA -n "cl_head_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 -3.9640258035488198 9 6.7002536701807509
		 12 -18.950919856307014 16 -23.946997157678371 21 2.7486575338844199 25 5.9287779901497677
		 29 -16.66860165012292 32 -14.935069825410423 42 0 60 0;
createNode animCurveTA -n "cl_head_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 25.61138218032962
		 32 22.947802654200107 42 0 60 0;
createNode animCurveTA -n "cl_head_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 -7.374654277252656
		 32 -6.6076914477236812 42 0 60 0;
createNode animCurveTU -n "cl_head_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_head_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_head_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 6 1 9 1 12 1 21 1 29 1 32 1 42 1 60 1;
createNode animCurveTU -n "cl_head_CTRL_Ear_Left";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "cl_head_CTRL_Ear_Right";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Upper";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 10.8 32 9.6768017797847534
		 42 0 60 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Bottom";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 9 0 12 0 18 8.2000000000000011 21 0
		 29 15.3 32 13.708802521361735 42 0 60 0;
createNode animCurveTU -n "cl_head_CTRL_Beard";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 0 9 0 12 0 21 0 29 0 32 0 42 0 60 0;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -256.90476190476198 -115.59523809523809 ;
	setAttr ".vh" -type "double2" 258.09523809523807 114.04761904761907 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 181 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -907.14288330078125;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 212.85714721679688;
	setAttr ".hyp[1].y" -907.14288330078125;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 424.28570556640625;
	setAttr ".hyp[2].y" -907.14288330078125;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 1.4285714626312256;
	setAttr ".hyp[3].y" -802.85711669921875;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 212.85714721679688;
	setAttr ".hyp[4].y" -802.85711669921875;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 424.28570556640625;
	setAttr ".hyp[5].y" -802.85711669921875;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 635.71429443359375;
	setAttr ".hyp[6].y" -907.14288330078125;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 635.71429443359375;
	setAttr ".hyp[7].y" -802.85711669921875;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 847.14288330078125;
	setAttr ".hyp[8].y" -907.14288330078125;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 847.14288330078125;
	setAttr ".hyp[9].y" -802.85711669921875;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 1.4285714626312256;
	setAttr ".hyp[10].y" -698.5714111328125;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 212.85714721679688;
	setAttr ".hyp[11].y" -698.5714111328125;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 424.28570556640625;
	setAttr ".hyp[12].y" -698.5714111328125;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 635.71429443359375;
	setAttr ".hyp[13].y" -698.5714111328125;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 847.14288330078125;
	setAttr ".hyp[14].y" -698.5714111328125;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 1058.5714111328125;
	setAttr ".hyp[15].y" -907.14288330078125;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 1058.5714111328125;
	setAttr ".hyp[16].y" -802.85711669921875;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 1058.5714111328125;
	setAttr ".hyp[17].y" -698.5714111328125;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 1270;
	setAttr ".hyp[18].y" -907.14288330078125;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 1270;
	setAttr ".hyp[19].y" -802.85711669921875;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 1270;
	setAttr ".hyp[20].y" -698.5714111328125;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 1481.4285888671875;
	setAttr ".hyp[21].y" -907.14288330078125;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 1.4285714626312256;
	setAttr ".hyp[22].y" -594.28570556640625;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 212.85714721679688;
	setAttr ".hyp[23].y" -594.28570556640625;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 424.28570556640625;
	setAttr ".hyp[24].y" -594.28570556640625;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 635.71429443359375;
	setAttr ".hyp[25].y" -594.28570556640625;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 847.14288330078125;
	setAttr ".hyp[26].y" -594.28570556640625;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 1058.5714111328125;
	setAttr ".hyp[27].y" -594.28570556640625;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 1270;
	setAttr ".hyp[28].y" -594.28570556640625;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 1481.4285888671875;
	setAttr ".hyp[29].y" -802.85711669921875;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 1481.4285888671875;
	setAttr ".hyp[30].y" -698.5714111328125;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 1481.4285888671875;
	setAttr ".hyp[31].y" -594.28570556640625;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 1692.857177734375;
	setAttr ".hyp[32].y" -907.14288330078125;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 1692.857177734375;
	setAttr ".hyp[33].y" -802.85711669921875;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 1692.857177734375;
	setAttr ".hyp[34].y" -698.5714111328125;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 1692.857177734375;
	setAttr ".hyp[35].y" -594.28570556640625;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 1904.2857666015625;
	setAttr ".hyp[36].y" -907.14288330078125;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" 1904.2857666015625;
	setAttr ".hyp[37].y" -802.85711669921875;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" 1904.2857666015625;
	setAttr ".hyp[38].y" -698.5714111328125;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 1904.2857666015625;
	setAttr ".hyp[39].y" -594.28570556640625;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 1.4285714626312256;
	setAttr ".hyp[40].y" -490;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 212.85714721679688;
	setAttr ".hyp[41].y" -490;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 424.28570556640625;
	setAttr ".hyp[42].y" -490;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" 635.71429443359375;
	setAttr ".hyp[43].y" -490;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 847.14288330078125;
	setAttr ".hyp[44].y" -490;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" 1058.5714111328125;
	setAttr ".hyp[45].y" -490;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" 1270;
	setAttr ".hyp[46].y" -490;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 1481.4285888671875;
	setAttr ".hyp[47].y" -490;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 1692.857177734375;
	setAttr ".hyp[48].y" -490;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" 1904.2857666015625;
	setAttr ".hyp[49].y" -490;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 2115.71435546875;
	setAttr ".hyp[50].y" -907.14288330078125;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 2115.71435546875;
	setAttr ".hyp[51].y" -802.85711669921875;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 2115.71435546875;
	setAttr ".hyp[52].y" -698.5714111328125;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 2115.71435546875;
	setAttr ".hyp[53].y" -594.28570556640625;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 2115.71435546875;
	setAttr ".hyp[54].y" -490;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 2327.142822265625;
	setAttr ".hyp[55].y" -907.14288330078125;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 2327.142822265625;
	setAttr ".hyp[56].y" -802.85711669921875;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" 2327.142822265625;
	setAttr ".hyp[57].y" -698.5714111328125;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" 2327.142822265625;
	setAttr ".hyp[58].y" -594.28570556640625;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 2327.142822265625;
	setAttr ".hyp[59].y" -490;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 2538.571533203125;
	setAttr ".hyp[60].y" -907.14288330078125;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 1.4285714626312256;
	setAttr ".hyp[61].y" -385.71429443359375;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 212.85714721679688;
	setAttr ".hyp[62].y" -385.71429443359375;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" 424.28570556640625;
	setAttr ".hyp[63].y" -385.71429443359375;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 635.71429443359375;
	setAttr ".hyp[64].y" -385.71429443359375;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 847.14288330078125;
	setAttr ".hyp[65].y" -385.71429443359375;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 1058.5714111328125;
	setAttr ".hyp[66].y" -385.71429443359375;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 1270;
	setAttr ".hyp[67].y" -385.71429443359375;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 1481.4285888671875;
	setAttr ".hyp[68].y" -385.71429443359375;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 1692.857177734375;
	setAttr ".hyp[69].y" -385.71429443359375;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 1904.2857666015625;
	setAttr ".hyp[70].y" -385.71429443359375;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 2115.71435546875;
	setAttr ".hyp[71].y" -385.71429443359375;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 2327.142822265625;
	setAttr ".hyp[72].y" -385.71429443359375;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 2538.571533203125;
	setAttr ".hyp[73].y" -802.85711669921875;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 2538.571533203125;
	setAttr ".hyp[74].y" -698.5714111328125;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" 2538.571533203125;
	setAttr ".hyp[75].y" -594.28570556640625;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 2538.571533203125;
	setAttr ".hyp[76].y" -490;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].x" 2538.571533203125;
	setAttr ".hyp[77].y" -385.71429443359375;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 2750;
	setAttr ".hyp[78].y" -907.14288330078125;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].x" 2750;
	setAttr ".hyp[79].y" -802.85711669921875;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].x" 2750;
	setAttr ".hyp[80].y" -698.5714111328125;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].x" 2750;
	setAttr ".hyp[81].y" -594.28570556640625;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].x" 2750;
	setAttr ".hyp[82].y" -490;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].x" 2750;
	setAttr ".hyp[83].y" -385.71429443359375;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].x" 2961.428466796875;
	setAttr ".hyp[84].y" -907.14288330078125;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].x" 1.4285714626312256;
	setAttr ".hyp[85].y" -281.42855834960938;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].x" 212.85714721679688;
	setAttr ".hyp[86].y" -281.42855834960938;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].x" 424.28570556640625;
	setAttr ".hyp[87].y" -281.42855834960938;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].x" 635.71429443359375;
	setAttr ".hyp[88].y" -281.42855834960938;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].x" 847.14288330078125;
	setAttr ".hyp[89].y" -281.42855834960938;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].x" 1058.5714111328125;
	setAttr ".hyp[90].y" -281.42855834960938;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].x" 1270;
	setAttr ".hyp[91].y" -281.42855834960938;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].x" 1481.4285888671875;
	setAttr ".hyp[92].y" -281.42855834960938;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].x" 1692.857177734375;
	setAttr ".hyp[93].y" -281.42855834960938;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].x" 1904.2857666015625;
	setAttr ".hyp[94].y" -281.42855834960938;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].x" 2115.71435546875;
	setAttr ".hyp[95].y" -281.42855834960938;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].x" 2327.142822265625;
	setAttr ".hyp[96].y" -281.42855834960938;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 2538.571533203125;
	setAttr ".hyp[97].y" -281.42855834960938;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].x" 2750;
	setAttr ".hyp[98].y" -281.42855834960938;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].x" 2961.428466796875;
	setAttr ".hyp[99].y" -802.85711669921875;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].x" 2961.428466796875;
	setAttr ".hyp[100].y" -698.5714111328125;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].x" 2961.428466796875;
	setAttr ".hyp[101].y" -594.28570556640625;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 2961.428466796875;
	setAttr ".hyp[102].y" -490;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 2961.428466796875;
	setAttr ".hyp[103].y" -385.71429443359375;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].x" 2961.428466796875;
	setAttr ".hyp[104].y" -281.42855834960938;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].x" 3172.857177734375;
	setAttr ".hyp[105].y" -907.14288330078125;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].x" 3172.857177734375;
	setAttr ".hyp[106].y" -802.85711669921875;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].x" 3172.857177734375;
	setAttr ".hyp[107].y" -698.5714111328125;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].x" 3172.857177734375;
	setAttr ".hyp[108].y" -594.28570556640625;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].x" 3172.857177734375;
	setAttr ".hyp[109].y" -490;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].x" 3172.857177734375;
	setAttr ".hyp[110].y" -385.71429443359375;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].x" 3172.857177734375;
	setAttr ".hyp[111].y" -281.42855834960938;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].x" 3384.28564453125;
	setAttr ".hyp[112].y" -907.14288330078125;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].x" 3384.28564453125;
	setAttr ".hyp[113].y" -802.85711669921875;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].x" 3384.28564453125;
	setAttr ".hyp[114].y" -698.5714111328125;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].x" 3384.28564453125;
	setAttr ".hyp[115].y" -594.28570556640625;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].x" 3384.28564453125;
	setAttr ".hyp[116].y" -490;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].x" 3384.28564453125;
	setAttr ".hyp[117].y" -385.71429443359375;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].x" 3384.28564453125;
	setAttr ".hyp[118].y" -281.42855834960938;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].x" 1.4285714626312256;
	setAttr ".hyp[119].y" -177.14285278320312;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].x" 212.85714721679688;
	setAttr ".hyp[120].y" -177.14285278320312;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].x" 424.28570556640625;
	setAttr ".hyp[121].y" -177.14285278320312;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].x" 635.71429443359375;
	setAttr ".hyp[122].y" -177.14285278320312;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].x" 847.14288330078125;
	setAttr ".hyp[123].y" -177.14285278320312;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].x" 1058.5714111328125;
	setAttr ".hyp[124].y" -177.14285278320312;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].x" 1270;
	setAttr ".hyp[125].y" -177.14285278320312;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].x" 1481.4285888671875;
	setAttr ".hyp[126].y" -177.14285278320312;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].x" 1692.857177734375;
	setAttr ".hyp[127].y" -177.14285278320312;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].x" 1904.2857666015625;
	setAttr ".hyp[128].y" -177.14285278320312;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].x" 2115.71435546875;
	setAttr ".hyp[129].y" -177.14285278320312;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].x" 2327.142822265625;
	setAttr ".hyp[130].y" -177.14285278320312;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].x" 2538.571533203125;
	setAttr ".hyp[131].y" -177.14285278320312;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].x" 2750;
	setAttr ".hyp[132].y" -177.14285278320312;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].x" 2961.428466796875;
	setAttr ".hyp[133].y" -177.14285278320312;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].x" 3172.857177734375;
	setAttr ".hyp[134].y" -177.14285278320312;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].x" 3384.28564453125;
	setAttr ".hyp[135].y" -177.14285278320312;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].x" 3595.71435546875;
	setAttr ".hyp[136].y" -907.14288330078125;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].x" 3595.71435546875;
	setAttr ".hyp[137].y" -802.85711669921875;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].x" 3595.71435546875;
	setAttr ".hyp[138].y" -698.5714111328125;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].x" 3595.71435546875;
	setAttr ".hyp[139].y" -594.28570556640625;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].x" 3595.71435546875;
	setAttr ".hyp[140].y" -490;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].x" 3595.71435546875;
	setAttr ".hyp[141].y" -385.71429443359375;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].x" 3595.71435546875;
	setAttr ".hyp[142].y" -281.42855834960938;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].x" 3595.71435546875;
	setAttr ".hyp[143].y" -177.14285278320312;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].x" 3807.142822265625;
	setAttr ".hyp[144].y" -907.14288330078125;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].x" 3807.142822265625;
	setAttr ".hyp[145].y" -802.85711669921875;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].x" 3807.142822265625;
	setAttr ".hyp[146].y" -698.5714111328125;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].x" 3807.142822265625;
	setAttr ".hyp[147].y" -594.28570556640625;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].x" 3807.142822265625;
	setAttr ".hyp[148].y" -490;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].x" 3807.142822265625;
	setAttr ".hyp[149].y" -385.71429443359375;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].x" 3807.142822265625;
	setAttr ".hyp[150].y" -281.42855834960938;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].x" 3807.142822265625;
	setAttr ".hyp[151].y" -177.14285278320312;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].x" 1.4285714626312256;
	setAttr ".hyp[152].y" -72.857139587402344;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].x" 212.85714721679688;
	setAttr ".hyp[153].y" -72.857139587402344;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].x" 424.28570556640625;
	setAttr ".hyp[154].y" -72.857139587402344;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].x" 635.71429443359375;
	setAttr ".hyp[155].y" -72.857139587402344;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].x" 847.14288330078125;
	setAttr ".hyp[156].y" -72.857139587402344;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].x" 1058.5714111328125;
	setAttr ".hyp[157].y" -72.857139587402344;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].x" 1270;
	setAttr ".hyp[158].y" -72.857139587402344;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].x" 1481.4285888671875;
	setAttr ".hyp[159].y" -72.857139587402344;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].x" 1692.857177734375;
	setAttr ".hyp[160].y" -72.857139587402344;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].x" 1904.2857666015625;
	setAttr ".hyp[161].y" -72.857139587402344;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].x" 2115.71435546875;
	setAttr ".hyp[162].y" -72.857139587402344;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].x" 2327.142822265625;
	setAttr ".hyp[163].y" -72.857139587402344;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].x" 2538.571533203125;
	setAttr ".hyp[164].y" -72.857139587402344;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].x" 2750;
	setAttr ".hyp[165].y" -72.857139587402344;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].x" 2961.428466796875;
	setAttr ".hyp[166].y" -72.857139587402344;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].x" 3172.857177734375;
	setAttr ".hyp[167].y" -72.857139587402344;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].x" 3384.28564453125;
	setAttr ".hyp[168].y" -72.857139587402344;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].x" 3595.71435546875;
	setAttr ".hyp[169].y" -72.857139587402344;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].x" 3807.142822265625;
	setAttr ".hyp[170].y" -72.857139587402344;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].x" 4018.571533203125;
	setAttr ".hyp[171].y" -907.14288330078125;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].x" 4018.571533203125;
	setAttr ".hyp[172].y" -802.85711669921875;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].x" 4018.571533203125;
	setAttr ".hyp[173].y" -698.5714111328125;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].x" 4018.571533203125;
	setAttr ".hyp[174].y" -594.28570556640625;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].x" 4018.571533203125;
	setAttr ".hyp[175].y" -490;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].x" 4018.571533203125;
	setAttr ".hyp[176].y" -385.71429443359375;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].x" 4018.571533203125;
	setAttr ".hyp[177].y" -281.42855834960938;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].x" 4018.571533203125;
	setAttr ".hyp[178].y" -177.14285278320312;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].nvs" 1920;
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
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner4\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner4\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner4\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor3\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor3\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor3\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 0\n                -selectionHiliteDisplay 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 0\n                -hulls 0\n                -grid 0\n                -imagePlane 0\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -particleInstancers 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 0\n                -nParticles 0\n                -nRigids 0\n"
		+ "                -dynamicConstraints 0\n                -locators 0\n                -manipulators 0\n                -pluginShapes 0\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -motionTrails 0\n                -clipGhosts 0\n                -greasePencils 0\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 0\n            -selectionHiliteDisplay 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 0\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n"
		+ "            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"left3\\\" -ps 1 51 40 -ps 2 49 100 -ps 3 51 60 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner4\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner4\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner4\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"side\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor3\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor3\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor3\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 45 -ast 0 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 37;
	setAttr ".unw" 37;
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
connectAttr "lf_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[1]";
connectAttr "lf_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[2]";
connectAttr "lf_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[3]";
connectAttr "lf_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[4]";
connectAttr "lf_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[5]";
connectAttr "lf_hand_CTRL_Pinkie_Curl.o" "jackal_rig_masterRN.phl[6]";
connectAttr "lf_hand_CTRL_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[7]";
connectAttr "lf_hand_CTRL_Pinkie_Tip.o" "jackal_rig_masterRN.phl[8]";
connectAttr "lf_hand_CTRL_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[9]";
connectAttr "lf_hand_CTRL_Pinkie_Twist.o" "jackal_rig_masterRN.phl[10]";
connectAttr "lf_hand_CTRL_Ring_Curl.o" "jackal_rig_masterRN.phl[11]";
connectAttr "lf_hand_CTRL_Ring_Knuckle.o" "jackal_rig_masterRN.phl[12]";
connectAttr "lf_hand_CTRL_Ring_Tip.o" "jackal_rig_masterRN.phl[13]";
connectAttr "lf_hand_CTRL_Ring_Wiggle.o" "jackal_rig_masterRN.phl[14]";
connectAttr "lf_hand_CTRL_Ring_Twist.o" "jackal_rig_masterRN.phl[15]";
connectAttr "lf_hand_CTRL_Middle_Curl.o" "jackal_rig_masterRN.phl[16]";
connectAttr "lf_hand_CTRL_Middle_Knuckle.o" "jackal_rig_masterRN.phl[17]";
connectAttr "lf_hand_CTRL_Middle_Tip.o" "jackal_rig_masterRN.phl[18]";
connectAttr "lf_hand_CTRL_Middle_Wiggle.o" "jackal_rig_masterRN.phl[19]";
connectAttr "lf_hand_CTRL_Middle_Twist.o" "jackal_rig_masterRN.phl[20]";
connectAttr "lf_hand_CTRL_Index_Curl.o" "jackal_rig_masterRN.phl[21]";
connectAttr "lf_hand_CTRL_Index_Knuckle.o" "jackal_rig_masterRN.phl[22]";
connectAttr "lf_hand_CTRL_Index_Tip.o" "jackal_rig_masterRN.phl[23]";
connectAttr "lf_hand_CTRL_Index_Wiggle.o" "jackal_rig_masterRN.phl[24]";
connectAttr "lf_hand_CTRL_Index_Twist.o" "jackal_rig_masterRN.phl[25]";
connectAttr "lf_hand_CTRL_Thumb_Curl.o" "jackal_rig_masterRN.phl[26]";
connectAttr "lf_hand_CTRL_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[27]";
connectAttr "lf_hand_CTRL_Thumb_Tip.o" "jackal_rig_masterRN.phl[28]";
connectAttr "lf_hand_CTRL_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[29]";
connectAttr "lf_hand_CTRL_Thumb_Twist.o" "jackal_rig_masterRN.phl[30]";
connectAttr "lf_hand_CTRL_Hand_Curl.o" "jackal_rig_masterRN.phl[31]";
connectAttr "lf_hand_CTRL_Hand_Wiggle.o" "jackal_rig_masterRN.phl[32]";
connectAttr "lf_hand_CTRL_Hand_Twist.o" "jackal_rig_masterRN.phl[33]";
connectAttr "rt_wrist_fkCTRL_FK_IK_Switch.o" "jackal_rig_masterRN.phl[34]";
connectAttr "rt_wrist_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[35]";
connectAttr "rt_wrist_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[36]";
connectAttr "rt_wrist_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[37]";
connectAttr "rt_wrist_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[38]";
connectAttr "rt_hand_CTRL1_Pinkie_Curl.o" "jackal_rig_masterRN.phl[39]";
connectAttr "rt_hand_CTRL1_Pinkie_Knuckle.o" "jackal_rig_masterRN.phl[40]";
connectAttr "rt_hand_CTRL1_Pinkie_Tip.o" "jackal_rig_masterRN.phl[41]";
connectAttr "rt_hand_CTRL1_Pinkie_Wiggle.o" "jackal_rig_masterRN.phl[42]";
connectAttr "rt_hand_CTRL1_Pinkie_Twist.o" "jackal_rig_masterRN.phl[43]";
connectAttr "rt_hand_CTRL1_Ring_Curl.o" "jackal_rig_masterRN.phl[44]";
connectAttr "rt_hand_CTRL1_Ring_Knuckle.o" "jackal_rig_masterRN.phl[45]";
connectAttr "rt_hand_CTRL1_Ring_Tip.o" "jackal_rig_masterRN.phl[46]";
connectAttr "rt_hand_CTRL1_Ring_Wiggle.o" "jackal_rig_masterRN.phl[47]";
connectAttr "rt_hand_CTRL1_Ring_Twist.o" "jackal_rig_masterRN.phl[48]";
connectAttr "rt_hand_CTRL1_Middle_Curl.o" "jackal_rig_masterRN.phl[49]";
connectAttr "rt_hand_CTRL1_Middle_Knuckle.o" "jackal_rig_masterRN.phl[50]";
connectAttr "rt_hand_CTRL1_Middle_Tip.o" "jackal_rig_masterRN.phl[51]";
connectAttr "rt_hand_CTRL1_Middle_Wiggle.o" "jackal_rig_masterRN.phl[52]";
connectAttr "rt_hand_CTRL1_Middle_Twist.o" "jackal_rig_masterRN.phl[53]";
connectAttr "rt_hand_CTRL1_Index_Curl.o" "jackal_rig_masterRN.phl[54]";
connectAttr "rt_hand_CTRL1_Index_Knuckle.o" "jackal_rig_masterRN.phl[55]";
connectAttr "rt_hand_CTRL1_Index_Tip.o" "jackal_rig_masterRN.phl[56]";
connectAttr "rt_hand_CTRL1_Index_Wiggle.o" "jackal_rig_masterRN.phl[57]";
connectAttr "rt_hand_CTRL1_Index_Twist.o" "jackal_rig_masterRN.phl[58]";
connectAttr "rt_hand_CTRL1_Thumb_Curl.o" "jackal_rig_masterRN.phl[59]";
connectAttr "rt_hand_CTRL1_Thumb_Knuckle.o" "jackal_rig_masterRN.phl[60]";
connectAttr "rt_hand_CTRL1_Thumb_Tip.o" "jackal_rig_masterRN.phl[61]";
connectAttr "rt_hand_CTRL1_Thumb_Wiggle.o" "jackal_rig_masterRN.phl[62]";
connectAttr "rt_hand_CTRL1_Thumb_Twist.o" "jackal_rig_masterRN.phl[63]";
connectAttr "rt_hand_CTRL1_Hand_Curl.o" "jackal_rig_masterRN.phl[64]";
connectAttr "rt_hand_CTRL1_Hand_Wiggle.o" "jackal_rig_masterRN.phl[65]";
connectAttr "rt_hand_CTRL1_Hand_Twist.o" "jackal_rig_masterRN.phl[66]";
connectAttr "lf_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[67]";
connectAttr "lf_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[68]";
connectAttr "lf_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[69]";
connectAttr "lf_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[70]";
connectAttr "lf_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[71]";
connectAttr "lf_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[72]";
connectAttr "lf_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[73]";
connectAttr "lf_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[74]";
connectAttr "lf_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[75]";
connectAttr "lf_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[76]";
connectAttr "rt_foot_CTRL_Foot_Roll.o" "jackal_rig_masterRN.phl[77]";
connectAttr "rt_foot_CTRL_Foot_Twist.o" "jackal_rig_masterRN.phl[78]";
connectAttr "rt_foot_CTRL_Ball_Roll.o" "jackal_rig_masterRN.phl[79]";
connectAttr "rt_foot_CTRL_translateX.o" "jackal_rig_masterRN.phl[80]";
connectAttr "rt_foot_CTRL_translateY.o" "jackal_rig_masterRN.phl[81]";
connectAttr "rt_foot_CTRL_translateZ.o" "jackal_rig_masterRN.phl[82]";
connectAttr "rt_foot_CTRL_rotateX.o" "jackal_rig_masterRN.phl[83]";
connectAttr "rt_foot_CTRL_rotateY.o" "jackal_rig_masterRN.phl[84]";
connectAttr "rt_foot_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[85]";
connectAttr "rt_foot_CTRL_visibility.o" "jackal_rig_masterRN.phl[86]";
connectAttr "lf_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[87]";
connectAttr "lf_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[88]";
connectAttr "lf_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[89]";
connectAttr "lf_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[90]";
connectAttr "rt_knee_CTRL_translateX.o" "jackal_rig_masterRN.phl[91]";
connectAttr "rt_knee_CTRL_translateY.o" "jackal_rig_masterRN.phl[92]";
connectAttr "rt_knee_CTRL_translateZ.o" "jackal_rig_masterRN.phl[93]";
connectAttr "rt_knee_CTRL_visibility.o" "jackal_rig_masterRN.phl[94]";
connectAttr "cl_CoG_CTRL_visibility.o" "jackal_rig_masterRN.phl[95]";
connectAttr "cl_CoG_CTRL_translateX.o" "jackal_rig_masterRN.phl[96]";
connectAttr "cl_CoG_CTRL_translateY.o" "jackal_rig_masterRN.phl[97]";
connectAttr "cl_CoG_CTRL_translateZ.o" "jackal_rig_masterRN.phl[98]";
connectAttr "cl_CoG_CTRL_rotateX.o" "jackal_rig_masterRN.phl[99]";
connectAttr "cl_CoG_CTRL_rotateY.o" "jackal_rig_masterRN.phl[100]";
connectAttr "cl_CoG_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[101]";
connectAttr "cl_CoG_CTRL_scaleX.o" "jackal_rig_masterRN.phl[102]";
connectAttr "cl_CoG_CTRL_scaleY.o" "jackal_rig_masterRN.phl[103]";
connectAttr "cl_CoG_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[104]";
connectAttr "cl_hips_CTRL_translateX.o" "jackal_rig_masterRN.phl[105]";
connectAttr "cl_hips_CTRL_translateY.o" "jackal_rig_masterRN.phl[106]";
connectAttr "cl_hips_CTRL_translateZ.o" "jackal_rig_masterRN.phl[107]";
connectAttr "cl_hips_CTRL_rotateX.o" "jackal_rig_masterRN.phl[108]";
connectAttr "cl_hips_CTRL_rotateY.o" "jackal_rig_masterRN.phl[109]";
connectAttr "cl_hips_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[110]";
connectAttr "cl_hips_CTRL_scaleX.o" "jackal_rig_masterRN.phl[111]";
connectAttr "cl_hips_CTRL_scaleY.o" "jackal_rig_masterRN.phl[112]";
connectAttr "cl_hips_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[113]";
connectAttr "cl_hips_CTRL_visibility.o" "jackal_rig_masterRN.phl[114]";
connectAttr "cl_belly_CTRL_translateX.o" "jackal_rig_masterRN.phl[115]";
connectAttr "cl_belly_CTRL_translateY.o" "jackal_rig_masterRN.phl[116]";
connectAttr "cl_belly_CTRL_translateZ.o" "jackal_rig_masterRN.phl[117]";
connectAttr "cl_belly_CTRL_rotateX.o" "jackal_rig_masterRN.phl[118]";
connectAttr "cl_belly_CTRL_rotateY.o" "jackal_rig_masterRN.phl[119]";
connectAttr "cl_belly_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[120]";
connectAttr "cl_belly_CTRL_scaleX.o" "jackal_rig_masterRN.phl[121]";
connectAttr "cl_belly_CTRL_scaleY.o" "jackal_rig_masterRN.phl[122]";
connectAttr "cl_belly_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[123]";
connectAttr "cl_belly_CTRL_visibility.o" "jackal_rig_masterRN.phl[124]";
connectAttr "cl_chest_CTRL_translateX.o" "jackal_rig_masterRN.phl[125]";
connectAttr "cl_chest_CTRL_translateY.o" "jackal_rig_masterRN.phl[126]";
connectAttr "cl_chest_CTRL_translateZ.o" "jackal_rig_masterRN.phl[127]";
connectAttr "cl_chest_CTRL_rotateX.o" "jackal_rig_masterRN.phl[128]";
connectAttr "cl_chest_CTRL_rotateY.o" "jackal_rig_masterRN.phl[129]";
connectAttr "cl_chest_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[130]";
connectAttr "cl_chest_CTRL_scaleX.o" "jackal_rig_masterRN.phl[131]";
connectAttr "cl_chest_CTRL_scaleY.o" "jackal_rig_masterRN.phl[132]";
connectAttr "cl_chest_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[133]";
connectAttr "cl_chest_CTRL_visibility.o" "jackal_rig_masterRN.phl[134]";
connectAttr "lf_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[135]";
connectAttr "lf_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[136]";
connectAttr "lf_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[137]";
connectAttr "lf_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[138]";
connectAttr "lf_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[139]";
connectAttr "lf_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[140]";
connectAttr "lf_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[141]";
connectAttr "lf_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[142]";
connectAttr "lf_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[143]";
connectAttr "lf_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[144]";
connectAttr "lf_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[145]";
connectAttr "lf_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[146]";
connectAttr "lf_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[147]";
connectAttr "lf_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[148]";
connectAttr "lf_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[149]";
connectAttr "rt_clavicle_CTRL_translateX.o" "jackal_rig_masterRN.phl[150]";
connectAttr "rt_clavicle_CTRL_translateY.o" "jackal_rig_masterRN.phl[151]";
connectAttr "rt_clavicle_CTRL_translateZ.o" "jackal_rig_masterRN.phl[152]";
connectAttr "rt_clavicle_CTRL_rotateX.o" "jackal_rig_masterRN.phl[153]";
connectAttr "rt_clavicle_CTRL_rotateY.o" "jackal_rig_masterRN.phl[154]";
connectAttr "rt_clavicle_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[155]";
connectAttr "rt_clavicle_CTRL_visibility.o" "jackal_rig_masterRN.phl[156]";
connectAttr "rt_shoulder_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[157]";
connectAttr "rt_shoulder_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[158]";
connectAttr "rt_shoulder_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[159]";
connectAttr "rt_shoulder_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[160]";
connectAttr "rt_elbow_fkCTRL_rotateX.o" "jackal_rig_masterRN.phl[161]";
connectAttr "rt_elbow_fkCTRL_rotateY.o" "jackal_rig_masterRN.phl[162]";
connectAttr "rt_elbow_fkCTRL_rotateZ.o" "jackal_rig_masterRN.phl[163]";
connectAttr "rt_elbow_fkCTRL_visibility.o" "jackal_rig_masterRN.phl[164]";
connectAttr "cl_head_CTRL_Ear_Left.o" "jackal_rig_masterRN.phl[165]";
connectAttr "cl_head_CTRL_Ear_Right.o" "jackal_rig_masterRN.phl[166]";
connectAttr "cl_head_CTRL_Jaw_Upper.o" "jackal_rig_masterRN.phl[167]";
connectAttr "cl_head_CTRL_Jaw_Bottom.o" "jackal_rig_masterRN.phl[168]";
connectAttr "cl_head_CTRL_Beard.o" "jackal_rig_masterRN.phl[169]";
connectAttr "cl_head_CTRL_translateX.o" "jackal_rig_masterRN.phl[170]";
connectAttr "cl_head_CTRL_translateY.o" "jackal_rig_masterRN.phl[171]";
connectAttr "cl_head_CTRL_translateZ.o" "jackal_rig_masterRN.phl[172]";
connectAttr "cl_head_CTRL_rotateX.o" "jackal_rig_masterRN.phl[173]";
connectAttr "cl_head_CTRL_rotateY.o" "jackal_rig_masterRN.phl[174]";
connectAttr "cl_head_CTRL_rotateZ.o" "jackal_rig_masterRN.phl[175]";
connectAttr "cl_head_CTRL_scaleX.o" "jackal_rig_masterRN.phl[176]";
connectAttr "cl_head_CTRL_scaleY.o" "jackal_rig_masterRN.phl[177]";
connectAttr "cl_head_CTRL_scaleZ.o" "jackal_rig_masterRN.phl[178]";
connectAttr "cl_head_CTRL_visibility.o" "jackal_rig_masterRN.phl[179]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "lf_wrist_fkCTRL_visibility.msg" "hyperLayout1.hyp[0].dn";
connectAttr "lf_wrist_fkCTRL_rotateX.msg" "hyperLayout1.hyp[1].dn";
connectAttr "lf_wrist_fkCTRL_rotateY.msg" "hyperLayout1.hyp[2].dn";
connectAttr "lf_wrist_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[3].dn";
connectAttr "lf_wrist_fkCTRL_FK_IK_Switch.msg" "hyperLayout1.hyp[4].dn";
connectAttr "lf_hand_CTRL_Pinkie_Curl.msg" "hyperLayout1.hyp[5].dn";
connectAttr "lf_hand_CTRL_Pinkie_Knuckle.msg" "hyperLayout1.hyp[6].dn";
connectAttr "lf_hand_CTRL_Pinkie_Tip.msg" "hyperLayout1.hyp[7].dn";
connectAttr "lf_hand_CTRL_Pinkie_Wiggle.msg" "hyperLayout1.hyp[8].dn";
connectAttr "lf_hand_CTRL_Pinkie_Twist.msg" "hyperLayout1.hyp[9].dn";
connectAttr "lf_hand_CTRL_Ring_Curl.msg" "hyperLayout1.hyp[10].dn";
connectAttr "lf_hand_CTRL_Ring_Knuckle.msg" "hyperLayout1.hyp[11].dn";
connectAttr "lf_hand_CTRL_Ring_Tip.msg" "hyperLayout1.hyp[12].dn";
connectAttr "lf_hand_CTRL_Ring_Wiggle.msg" "hyperLayout1.hyp[13].dn";
connectAttr "lf_hand_CTRL_Ring_Twist.msg" "hyperLayout1.hyp[14].dn";
connectAttr "lf_hand_CTRL_Middle_Curl.msg" "hyperLayout1.hyp[15].dn";
connectAttr "lf_hand_CTRL_Middle_Knuckle.msg" "hyperLayout1.hyp[16].dn";
connectAttr "lf_hand_CTRL_Middle_Tip.msg" "hyperLayout1.hyp[17].dn";
connectAttr "lf_hand_CTRL_Middle_Wiggle.msg" "hyperLayout1.hyp[18].dn";
connectAttr "lf_hand_CTRL_Middle_Twist.msg" "hyperLayout1.hyp[19].dn";
connectAttr "lf_hand_CTRL_Index_Curl.msg" "hyperLayout1.hyp[20].dn";
connectAttr "lf_hand_CTRL_Index_Knuckle.msg" "hyperLayout1.hyp[21].dn";
connectAttr "lf_hand_CTRL_Index_Tip.msg" "hyperLayout1.hyp[22].dn";
connectAttr "lf_hand_CTRL_Index_Wiggle.msg" "hyperLayout1.hyp[23].dn";
connectAttr "lf_hand_CTRL_Index_Twist.msg" "hyperLayout1.hyp[24].dn";
connectAttr "lf_hand_CTRL_Thumb_Curl.msg" "hyperLayout1.hyp[25].dn";
connectAttr "lf_hand_CTRL_Thumb_Knuckle.msg" "hyperLayout1.hyp[26].dn";
connectAttr "lf_hand_CTRL_Thumb_Tip.msg" "hyperLayout1.hyp[27].dn";
connectAttr "lf_hand_CTRL_Thumb_Wiggle.msg" "hyperLayout1.hyp[28].dn";
connectAttr "lf_hand_CTRL_Thumb_Twist.msg" "hyperLayout1.hyp[29].dn";
connectAttr "lf_hand_CTRL_Hand_Curl.msg" "hyperLayout1.hyp[30].dn";
connectAttr "lf_hand_CTRL_Hand_Wiggle.msg" "hyperLayout1.hyp[31].dn";
connectAttr "lf_hand_CTRL_Hand_Twist.msg" "hyperLayout1.hyp[32].dn";
connectAttr "rt_wrist_fkCTRL_visibility.msg" "hyperLayout1.hyp[33].dn";
connectAttr "rt_wrist_fkCTRL_rotateX.msg" "hyperLayout1.hyp[34].dn";
connectAttr "rt_wrist_fkCTRL_rotateY.msg" "hyperLayout1.hyp[35].dn";
connectAttr "rt_wrist_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[36].dn";
connectAttr "rt_wrist_fkCTRL_FK_IK_Switch.msg" "hyperLayout1.hyp[37].dn";
connectAttr "rt_hand_CTRL1_Pinkie_Curl.msg" "hyperLayout1.hyp[38].dn";
connectAttr "rt_hand_CTRL1_Pinkie_Knuckle.msg" "hyperLayout1.hyp[39].dn";
connectAttr "rt_hand_CTRL1_Pinkie_Tip.msg" "hyperLayout1.hyp[40].dn";
connectAttr "rt_hand_CTRL1_Pinkie_Wiggle.msg" "hyperLayout1.hyp[41].dn";
connectAttr "rt_hand_CTRL1_Pinkie_Twist.msg" "hyperLayout1.hyp[42].dn";
connectAttr "rt_hand_CTRL1_Ring_Curl.msg" "hyperLayout1.hyp[43].dn";
connectAttr "rt_hand_CTRL1_Ring_Knuckle.msg" "hyperLayout1.hyp[44].dn";
connectAttr "rt_hand_CTRL1_Ring_Tip.msg" "hyperLayout1.hyp[45].dn";
connectAttr "rt_hand_CTRL1_Ring_Wiggle.msg" "hyperLayout1.hyp[46].dn";
connectAttr "rt_hand_CTRL1_Ring_Twist.msg" "hyperLayout1.hyp[47].dn";
connectAttr "rt_hand_CTRL1_Middle_Curl.msg" "hyperLayout1.hyp[48].dn";
connectAttr "rt_hand_CTRL1_Middle_Knuckle.msg" "hyperLayout1.hyp[49].dn";
connectAttr "rt_hand_CTRL1_Middle_Tip.msg" "hyperLayout1.hyp[50].dn";
connectAttr "rt_hand_CTRL1_Middle_Wiggle.msg" "hyperLayout1.hyp[51].dn";
connectAttr "rt_hand_CTRL1_Middle_Twist.msg" "hyperLayout1.hyp[52].dn";
connectAttr "rt_hand_CTRL1_Index_Curl.msg" "hyperLayout1.hyp[53].dn";
connectAttr "rt_hand_CTRL1_Index_Knuckle.msg" "hyperLayout1.hyp[54].dn";
connectAttr "rt_hand_CTRL1_Index_Tip.msg" "hyperLayout1.hyp[55].dn";
connectAttr "rt_hand_CTRL1_Index_Wiggle.msg" "hyperLayout1.hyp[56].dn";
connectAttr "rt_hand_CTRL1_Index_Twist.msg" "hyperLayout1.hyp[57].dn";
connectAttr "rt_hand_CTRL1_Thumb_Curl.msg" "hyperLayout1.hyp[58].dn";
connectAttr "rt_hand_CTRL1_Thumb_Knuckle.msg" "hyperLayout1.hyp[59].dn";
connectAttr "rt_hand_CTRL1_Thumb_Tip.msg" "hyperLayout1.hyp[60].dn";
connectAttr "rt_hand_CTRL1_Thumb_Wiggle.msg" "hyperLayout1.hyp[61].dn";
connectAttr "rt_hand_CTRL1_Thumb_Twist.msg" "hyperLayout1.hyp[62].dn";
connectAttr "rt_hand_CTRL1_Hand_Curl.msg" "hyperLayout1.hyp[63].dn";
connectAttr "rt_hand_CTRL1_Hand_Wiggle.msg" "hyperLayout1.hyp[64].dn";
connectAttr "rt_hand_CTRL1_Hand_Twist.msg" "hyperLayout1.hyp[65].dn";
connectAttr "lf_foot_CTRL_visibility.msg" "hyperLayout1.hyp[66].dn";
connectAttr "lf_foot_CTRL_translateX.msg" "hyperLayout1.hyp[67].dn";
connectAttr "lf_foot_CTRL_translateY.msg" "hyperLayout1.hyp[68].dn";
connectAttr "lf_foot_CTRL_translateZ.msg" "hyperLayout1.hyp[69].dn";
connectAttr "lf_foot_CTRL_rotateX.msg" "hyperLayout1.hyp[70].dn";
connectAttr "lf_foot_CTRL_rotateY.msg" "hyperLayout1.hyp[71].dn";
connectAttr "lf_foot_CTRL_rotateZ.msg" "hyperLayout1.hyp[72].dn";
connectAttr "lf_foot_CTRL_Foot_Roll.msg" "hyperLayout1.hyp[73].dn";
connectAttr "lf_foot_CTRL_Foot_Twist.msg" "hyperLayout1.hyp[74].dn";
connectAttr "lf_foot_CTRL_Ball_Roll.msg" "hyperLayout1.hyp[75].dn";
connectAttr "rt_foot_CTRL_visibility.msg" "hyperLayout1.hyp[76].dn";
connectAttr "rt_foot_CTRL_translateX.msg" "hyperLayout1.hyp[77].dn";
connectAttr "rt_foot_CTRL_translateY.msg" "hyperLayout1.hyp[78].dn";
connectAttr "rt_foot_CTRL_translateZ.msg" "hyperLayout1.hyp[79].dn";
connectAttr "rt_foot_CTRL_rotateX.msg" "hyperLayout1.hyp[80].dn";
connectAttr "rt_foot_CTRL_rotateY.msg" "hyperLayout1.hyp[81].dn";
connectAttr "rt_foot_CTRL_rotateZ.msg" "hyperLayout1.hyp[82].dn";
connectAttr "rt_foot_CTRL_Foot_Roll.msg" "hyperLayout1.hyp[83].dn";
connectAttr "rt_foot_CTRL_Foot_Twist.msg" "hyperLayout1.hyp[84].dn";
connectAttr "rt_foot_CTRL_Ball_Roll.msg" "hyperLayout1.hyp[85].dn";
connectAttr "lf_knee_CTRL_visibility.msg" "hyperLayout1.hyp[86].dn";
connectAttr "lf_knee_CTRL_translateX.msg" "hyperLayout1.hyp[87].dn";
connectAttr "lf_knee_CTRL_translateY.msg" "hyperLayout1.hyp[88].dn";
connectAttr "lf_knee_CTRL_translateZ.msg" "hyperLayout1.hyp[89].dn";
connectAttr "rt_knee_CTRL_visibility.msg" "hyperLayout1.hyp[90].dn";
connectAttr "rt_knee_CTRL_translateX.msg" "hyperLayout1.hyp[91].dn";
connectAttr "rt_knee_CTRL_translateY.msg" "hyperLayout1.hyp[92].dn";
connectAttr "rt_knee_CTRL_translateZ.msg" "hyperLayout1.hyp[93].dn";
connectAttr "cl_CoG_CTRL_visibility.msg" "hyperLayout1.hyp[94].dn";
connectAttr "cl_CoG_CTRL_translateX.msg" "hyperLayout1.hyp[95].dn";
connectAttr "cl_CoG_CTRL_translateY.msg" "hyperLayout1.hyp[96].dn";
connectAttr "cl_CoG_CTRL_translateZ.msg" "hyperLayout1.hyp[97].dn";
connectAttr "cl_CoG_CTRL_rotateX.msg" "hyperLayout1.hyp[98].dn";
connectAttr "cl_CoG_CTRL_rotateY.msg" "hyperLayout1.hyp[99].dn";
connectAttr "cl_CoG_CTRL_rotateZ.msg" "hyperLayout1.hyp[100].dn";
connectAttr "cl_CoG_CTRL_scaleX.msg" "hyperLayout1.hyp[101].dn";
connectAttr "cl_CoG_CTRL_scaleY.msg" "hyperLayout1.hyp[102].dn";
connectAttr "cl_CoG_CTRL_scaleZ.msg" "hyperLayout1.hyp[103].dn";
connectAttr "cl_hips_CTRL_visibility.msg" "hyperLayout1.hyp[104].dn";
connectAttr "cl_hips_CTRL_translateX.msg" "hyperLayout1.hyp[105].dn";
connectAttr "cl_hips_CTRL_translateY.msg" "hyperLayout1.hyp[106].dn";
connectAttr "cl_hips_CTRL_translateZ.msg" "hyperLayout1.hyp[107].dn";
connectAttr "cl_hips_CTRL_rotateX.msg" "hyperLayout1.hyp[108].dn";
connectAttr "cl_hips_CTRL_rotateY.msg" "hyperLayout1.hyp[109].dn";
connectAttr "cl_hips_CTRL_rotateZ.msg" "hyperLayout1.hyp[110].dn";
connectAttr "cl_hips_CTRL_scaleX.msg" "hyperLayout1.hyp[111].dn";
connectAttr "cl_hips_CTRL_scaleY.msg" "hyperLayout1.hyp[112].dn";
connectAttr "cl_hips_CTRL_scaleZ.msg" "hyperLayout1.hyp[113].dn";
connectAttr "cl_belly_CTRL_visibility.msg" "hyperLayout1.hyp[114].dn";
connectAttr "cl_belly_CTRL_translateX.msg" "hyperLayout1.hyp[115].dn";
connectAttr "cl_belly_CTRL_translateY.msg" "hyperLayout1.hyp[116].dn";
connectAttr "cl_belly_CTRL_translateZ.msg" "hyperLayout1.hyp[117].dn";
connectAttr "cl_belly_CTRL_rotateX.msg" "hyperLayout1.hyp[118].dn";
connectAttr "cl_belly_CTRL_rotateY.msg" "hyperLayout1.hyp[119].dn";
connectAttr "cl_belly_CTRL_rotateZ.msg" "hyperLayout1.hyp[120].dn";
connectAttr "cl_belly_CTRL_scaleX.msg" "hyperLayout1.hyp[121].dn";
connectAttr "cl_belly_CTRL_scaleY.msg" "hyperLayout1.hyp[122].dn";
connectAttr "cl_belly_CTRL_scaleZ.msg" "hyperLayout1.hyp[123].dn";
connectAttr "cl_chest_CTRL_visibility.msg" "hyperLayout1.hyp[124].dn";
connectAttr "cl_chest_CTRL_translateX.msg" "hyperLayout1.hyp[125].dn";
connectAttr "cl_chest_CTRL_translateY.msg" "hyperLayout1.hyp[126].dn";
connectAttr "cl_chest_CTRL_translateZ.msg" "hyperLayout1.hyp[127].dn";
connectAttr "cl_chest_CTRL_rotateX.msg" "hyperLayout1.hyp[128].dn";
connectAttr "cl_chest_CTRL_rotateY.msg" "hyperLayout1.hyp[129].dn";
connectAttr "cl_chest_CTRL_rotateZ.msg" "hyperLayout1.hyp[130].dn";
connectAttr "cl_chest_CTRL_scaleX.msg" "hyperLayout1.hyp[131].dn";
connectAttr "cl_chest_CTRL_scaleY.msg" "hyperLayout1.hyp[132].dn";
connectAttr "cl_chest_CTRL_scaleZ.msg" "hyperLayout1.hyp[133].dn";
connectAttr "lf_clavicle_CTRL_visibility.msg" "hyperLayout1.hyp[134].dn";
connectAttr "lf_clavicle_CTRL_translateX.msg" "hyperLayout1.hyp[135].dn";
connectAttr "lf_clavicle_CTRL_translateY.msg" "hyperLayout1.hyp[136].dn";
connectAttr "lf_clavicle_CTRL_translateZ.msg" "hyperLayout1.hyp[137].dn";
connectAttr "lf_clavicle_CTRL_rotateX.msg" "hyperLayout1.hyp[138].dn";
connectAttr "lf_clavicle_CTRL_rotateY.msg" "hyperLayout1.hyp[139].dn";
connectAttr "lf_clavicle_CTRL_rotateZ.msg" "hyperLayout1.hyp[140].dn";
connectAttr "lf_shoulder_fkCTRL_visibility.msg" "hyperLayout1.hyp[141].dn";
connectAttr "lf_shoulder_fkCTRL_rotateX.msg" "hyperLayout1.hyp[142].dn";
connectAttr "lf_shoulder_fkCTRL_rotateY.msg" "hyperLayout1.hyp[143].dn";
connectAttr "lf_shoulder_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[144].dn";
connectAttr "lf_elbow_fkCTRL_visibility.msg" "hyperLayout1.hyp[145].dn";
connectAttr "lf_elbow_fkCTRL_rotateX.msg" "hyperLayout1.hyp[146].dn";
connectAttr "lf_elbow_fkCTRL_rotateY.msg" "hyperLayout1.hyp[147].dn";
connectAttr "lf_elbow_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[148].dn";
connectAttr "rt_clavicle_CTRL_visibility.msg" "hyperLayout1.hyp[149].dn";
connectAttr "rt_clavicle_CTRL_translateX.msg" "hyperLayout1.hyp[150].dn";
connectAttr "rt_clavicle_CTRL_translateY.msg" "hyperLayout1.hyp[151].dn";
connectAttr "rt_clavicle_CTRL_translateZ.msg" "hyperLayout1.hyp[152].dn";
connectAttr "rt_clavicle_CTRL_rotateX.msg" "hyperLayout1.hyp[153].dn";
connectAttr "rt_clavicle_CTRL_rotateY.msg" "hyperLayout1.hyp[154].dn";
connectAttr "rt_clavicle_CTRL_rotateZ.msg" "hyperLayout1.hyp[155].dn";
connectAttr "rt_shoulder_fkCTRL_visibility.msg" "hyperLayout1.hyp[156].dn";
connectAttr "rt_shoulder_fkCTRL_rotateX.msg" "hyperLayout1.hyp[157].dn";
connectAttr "rt_shoulder_fkCTRL_rotateY.msg" "hyperLayout1.hyp[158].dn";
connectAttr "rt_shoulder_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[159].dn";
connectAttr "rt_elbow_fkCTRL_visibility.msg" "hyperLayout1.hyp[160].dn";
connectAttr "rt_elbow_fkCTRL_rotateX.msg" "hyperLayout1.hyp[161].dn";
connectAttr "rt_elbow_fkCTRL_rotateY.msg" "hyperLayout1.hyp[162].dn";
connectAttr "rt_elbow_fkCTRL_rotateZ.msg" "hyperLayout1.hyp[163].dn";
connectAttr "cl_head_CTRL_visibility.msg" "hyperLayout1.hyp[164].dn";
connectAttr "cl_head_CTRL_translateX.msg" "hyperLayout1.hyp[165].dn";
connectAttr "cl_head_CTRL_translateY.msg" "hyperLayout1.hyp[166].dn";
connectAttr "cl_head_CTRL_translateZ.msg" "hyperLayout1.hyp[167].dn";
connectAttr "cl_head_CTRL_rotateX.msg" "hyperLayout1.hyp[168].dn";
connectAttr "cl_head_CTRL_rotateY.msg" "hyperLayout1.hyp[169].dn";
connectAttr "cl_head_CTRL_rotateZ.msg" "hyperLayout1.hyp[170].dn";
connectAttr "cl_head_CTRL_scaleX.msg" "hyperLayout1.hyp[171].dn";
connectAttr "cl_head_CTRL_scaleY.msg" "hyperLayout1.hyp[172].dn";
connectAttr "cl_head_CTRL_scaleZ.msg" "hyperLayout1.hyp[173].dn";
connectAttr "cl_head_CTRL_Ear_Left.msg" "hyperLayout1.hyp[174].dn";
connectAttr "cl_head_CTRL_Ear_Right.msg" "hyperLayout1.hyp[175].dn";
connectAttr "cl_head_CTRL_Jaw_Upper.msg" "hyperLayout1.hyp[176].dn";
connectAttr "cl_head_CTRL_Jaw_Bottom.msg" "hyperLayout1.hyp[177].dn";
connectAttr "cl_head_CTRL_Beard.msg" "hyperLayout1.hyp[178].dn";
connectAttr "uiConfigurationScriptNode.msg" "hyperLayout1.hyp[179].dn";
connectAttr "sceneConfigurationScriptNode.msg" "hyperLayout1.hyp[180].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"jackal_rig_masterRN\" \"\" \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma\" 4277170780 \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya/scenes/rig/jackal_rig_master.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FO_Jackal_01_AM@Attack_Crit_01.ma
