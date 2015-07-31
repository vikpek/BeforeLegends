//Maya ASCII 2015 scene
//Name: FO_Jackal_01_AM@Die_01.ma
//Last modified: Fri, Jul 17, 2015 05:45:02 PM
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
	setAttr ".t" -type "double3" 4.4909862634949338 1.5355355391962284 0.6514014700304096 ;
	setAttr ".r" -type "double3" -8.1383527373424904 1520.5999999998323 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 4.2117155913015925;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0039675968361858605 1.1658422726651505 -0.4015329996269501 ;
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
	setAttr ".t" -type "double3" 100.10669675632857 0.88456731451485004 -0.1724689265527814 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.5147877986166307;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 296 ".lnk";
	setAttr -s 296 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "jackal_rig_masterRN";
	setAttr ".fn[0]" -type "string" "/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya//scenes/rig/jackal_rig_master.ma";
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
		"jackal_rig_masterRN" 406
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_wrist_ctGRP|jackal_rig_master:lf_wrist_fkCTRL" 
		"rotate" " -type \"double3\" -30.75861308846738496 7.21305905697170413 0.19123799088442006"
		
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
		"rotate" " -type \"double3\" -37.41157351681023613 7.45841879396176477 8.59111721386242699"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_wrist_ctGRP|jackal_rig_master:rt_wrist_fkCTRL" 
		"FK_IK_Switch" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Curl" " -av -k 1 2.94292036110621957"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Knuckle" " -av -k 1 7.24292036110621851"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Tip" " -av -k 1 4.0816450306482368"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Pinkie_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Curl" " -av -k 1 2.94292036110621957"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Knuckle" " -av -k 1 7.24292036110621851"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Tip" " -av -k 1 4.0816450306482368"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Ring_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Curl" " -av -k 1 2.94292036110621957"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Knuckle" " -av -k 1 7.24292036110621851"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Tip" " -av -k 1 4.0816450306482368"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Wiggle" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Middle_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Curl" " -av -k 1 2.94292036110621957"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Knuckle" " -av -k 1 7.24292036110621851"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:rt_hand_ctGRP|jackal_rig_master:rt_hand_CTRL1" 
		"Index_Tip" " -av -k 1 4.0816450306482368"
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
		"translate" " -type \"double3\" -0.37365520484937687 0.12497710225316021 0.033599753653072932"
		
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
		"Foot_Roll" " -av -k 1 1.94444454378551979"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"Foot_Twist" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:lf_foot_ctGRP|jackal_rig_master:lf_foot_CTRL" 
		"Ball_Roll" " -av -k 1 -0.48888891620768471"
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
		"translate" " -type \"double3\" 0 0 -0.16305481992730056"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL" 
		"rotate" " -type \"double3\" -0.16821575197525798 6.00000000000000089 0"
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
		"translate" " -type \"double3\" -0.00015572383631347802 -0.00010693072055740485 0"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"translateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_hips_ctGRP|jackal_rig_master:cl_hips_CTRL" 
		"rotate" " -type \"double3\" 6.53281175730313279 0 0"
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
		"rotate" " -type \"double3\" -8.72649998136868454 49.72376639454072489 -57.10447165566654348"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:lf_clavicle_ctGRP|jackal_rig_master:lf_clavicle_CTRL|jackal_rig_master:lf_shoulder_fk_ctGRP|jackal_rig_master:lf_shoulder_fkCTRL|jackal_rig_master:lf_elbow_fk_ctGRP|jackal_rig_master:lf_elbow_fkCTRL" 
		"rotate" " -type \"double3\" 39.53328993909584455 -33.31933085829788865 -6.55207126746514135"
		
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
		"rotate" " -type \"double3\" -9.01539361594485733 13.28155409244796381 -66.99500130701156309"
		
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateX" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateY" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL" 
		"rotateZ" " -av"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"visibility" " -av 1"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:rt_clavicle_ctGRP|jackal_rig_master:rt_clavicle_CTRL|jackal_rig_master:rt_shoulder_fk_ctGRP|jackal_rig_master:rt_shoulder_fkCTRL|jackal_rig_master:rt_elbow_fk_ctGRP|jackal_rig_master:rt_elbow_fkCTRL" 
		"rotate" " -type \"double3\" -3.23131336922345325 -40.34341676492944373 -0.77198068274272724"
		
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
		"rotate" " -type \"double3\" -0.36988195784639744 0.50692230060529231 -0.043305939916751864"
		
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
		"Ear_Left" " -av -k 1 -0.21893490831256196"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Ear_Right" " -av -k 1 -0.21893490831256196"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Upper" " -av -k 1 0"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Jaw_Bottom" " -av -k 1 0.11559349956045147"
		2 "|jackal_rig_master:ctrl|jackal_rig_master:cl_CoG_ctGRP|jackal_rig_master:cl_CoG_CTRL|jackal_rig_master:cl_belly_ctGRP|jackal_rig_master:cl_belly_CTRL|jackal_rig_master:cl_chest_ctGRP|jackal_rig_master:cl_chest_CTRL|jackal_rig_master:cl_head_ctGRP|jackal_rig_master:cl_head_CTRL" 
		"Beard" " -av -k 1 0"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translate" " -type \"double3\" 0.05486269815117184 -0.036957239912585968 0.039092633749855894"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:rg_ear_a_JNT|jackal_rig_master:rg_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translate" " -type \"double3\" 0.037072911776725594 0.054992680083868518 -0.039463243822908077"
		
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateX" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateZ" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"translateY" " -av"
		2 "|jackal_rig_master:rig|jackal_rig_master:cl_hips_JNT|jackal_rig_master:cl_spine_b_JNT|jackal_rig_master:cl_spine_c_JNT|jackal_rig_master:cl_spine_d_JNT|jackal_rig_master:cl_spine_e_JNT|jackal_rig_master:cl_head_JNT|jackal_rig_master:lf_ear_a_JNT|jackal_rig_master:lf_ear_b_JNT" 
		"rotate" " -type \"double3\" 0.15770036023040343 -0.37541128425393755 0.0040333467996634832"
		
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
		2 "jackal_rig_master:ctrls" "visibility" " 1"
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
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -30.758613088467385 13 -30.758613088467385
		 18 -30.758613088467385 31 -60.220044358584822 40 -60.220044358584822 47 -62.097419657124014
		 57 -89.681475628702273;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.2130590569717041 13 7.2130590569717041
		 18 7.2130590569717041 31 7.2130590569717041 40 7.2130590569717041 47 7.2130590569717041;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "lf_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.19123799088442006 13 0.19123799088442006
		 18 0.19123799088442006 31 0.19123799088442006 40 0.19123799088442006 47 0.19123799088442006;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.3 13 15.3 18 15.3 31 15.3 40 15.3 47 15.3;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.9 13 14.9 18 14.9 31 14.9 40 14.9 47 14.9;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.000000000000002 13 14.000000000000002
		 18 14.000000000000002 31 14.000000000000002 40 14.000000000000002 47 14.000000000000002;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.1 13 17.1 18 17.1 31 17.1 40 17.1 47 17.1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.9 13 8.9 18 8.9 31 8.9 40 8.9 47 8.9;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.4 13 14.4 18 14.4 31 14.4 40 14.4 47 14.4;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20 13 20 18 20 31 20 40 20 47 20;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.9 13 8.9 18 8.9 31 8.9 40 8.9 47 8.9;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.7 13 0.7 18 0.7 31 0.7 40 0.7 47 0.7;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.8 13 13.8 18 13.8 31 13.8 40 13.8 47 13.8;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.900000000000002 13 16.900000000000002
		 18 16.900000000000002 31 16.900000000000002 40 16.900000000000002 47 16.900000000000002;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.9 13 8.9 18 8.9 31 8.9 40 8.9 47 8.9;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.1 13 -0.1 18 -0.1 31 -0.1 40 -0.1 47 -0.1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.9 13 4.9 18 4.9 31 4.9 40 4.9 47 4.9;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.3 13 3.3 18 3.3 31 3.3 40 3.3 47 3.3;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.3 13 -0.3 18 -0.3 31 -0.3 40 -0.3 47 -0.3;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10 13 10 18 10 31 10 40 10 47 10;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -6.7 13 -6.7 18 -6.7 31 -6.7 40 -6.7 47 -6.7;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.2 13 -9.2 18 -9.2 31 -9.2 40 -9.2 47 -9.2;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.6 13 3.6 18 3.6 31 3.6 40 3.6 47 3.6;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_hand_CTRL_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "rt_wrist_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -37.411573516810236 13 -37.411573516810236
		 18 -37.411573516810236 31 -37.411573516810236 40 -37.411573516810236 47 -37.411573516810236;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.4584187939617648 13 7.4584187939617648
		 18 7.4584187939617648 31 7.4584187939617648 40 7.4584187939617648 47 7.4584187939617648;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_wrist_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.591117213862427 13 8.591117213862427
		 18 8.591117213862427 31 8.591117213862427 40 8.591117213862427 47 8.591117213862427;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "rt_wrist_fkCTRL_FK_IK_Switch";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8974492647643797 13 5.5974492647643803
		 18 5.5974492647643803 40 7.5782193882814521 47 13.29744926476438;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1974492647643791 13 9.8974492647643793
		 18 9.8974492647643793 40 11.878219388281451 47 17.597449264764379;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0361739343063974 13 6.7361739343063975
		 18 6.7361739343063975 40 8.7169440578234703 47 14.436173934306398;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Pinkie_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8974492647643797 13 5.5974492647643803
		 18 5.5974492647643803 40 7.5782193882814521 47 13.29744926476438;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1974492647643791 13 9.8974492647643793
		 18 9.8974492647643793 40 11.878219388281451 47 17.597449264764379;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0361739343063974 13 6.7361739343063975
		 18 6.7361739343063975 40 8.7169440578234703 47 14.436173934306398;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Ring_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8974492647643797 13 5.5974492647643803
		 18 5.5974492647643803 40 7.5782193882814521 47 13.29744926476438;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1974492647643791 13 9.8974492647643793
		 18 9.8974492647643793 40 11.878219388281451 47 17.597449264764379;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0361739343063974 13 6.7361739343063975
		 18 6.7361739343063975 40 8.7169440578234703 47 14.436173934306398;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Middle_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.8974492647643797 13 5.5974492647643803
		 18 5.5974492647643803 40 7.5782193882814521 47 13.29744926476438;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.1974492647643791 13 9.8974492647643793
		 18 9.8974492647643793 40 11.878219388281451 47 17.597449264764379;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0361739343063974 13 6.7361739343063975
		 18 6.7361739343063975 40 8.7169440578234703 47 14.436173934306398;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Index_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Knuckle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0998219451973306 13 4.0998219451973306
		 18 4.0998219451973306 40 4.0998219451973306 47 4.0998219451973306;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Tip";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0729935532865511 13 4.0729935532865511
		 18 4.0729935532865511 40 4.0729935532865511 47 4.0729935532865511;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0729935532865511 13 4.0729935532865511
		 18 4.0729935532865511 40 4.0729935532865511 47 4.0729935532865511;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Thumb_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -14.5 13 -14.5 18 -14.5 40 -14.5 47 -14.5;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Wiggle";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "rt_hand_CTRL1_Hand_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 18 0 40 0 47 0;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "lf_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 13 1 20 1 31 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 9 9;
	setAttr -s 7 ".kot[0:6]"  5 5 5 16 18 5 5;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTL -n "lf_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.30416408966219854 3 -0.67704163878395374
		 6 -1.0380469573860369 13 -1.0380469573860369 20 -1.0380469573860369 31 -0.55818265839832215
		 40 -0.55818265839832215 47 -0.54562577664603473 57 -0.36112897978655734;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
createNode animCurveTL -n "lf_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.099780553933715418 3 0.23584190378659142
		 6 0.37190324308337458 13 0.37190324308337458 20 0.37190324308337458 31 0.19026822014368583
		 40 0.19026822014368583 47 0.18562365992219942 57 0.11738167910326813;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
createNode animCurveTL -n "lf_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0.12959904318353416 6 -0.030115519229213222
		 13 -0.030115519229213222 20 -0.030115519229213222 31 0.23328540861555294 40 0.23328540861555294
		 47 0.23304277410651822 57 0.22947777360658711;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
createNode animCurveTA -n "lf_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 13 0 20 0 31 4.182456097238191 40 4.182456097238191
		 47 12.152639230289926 57 129.25760903408801;
	setAttr -s 8 ".kit[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".ktl[3:7]" no yes yes yes yes;
createNode animCurveTA -n "lf_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 13 0 20 0 31 81.313262072752352
		 40 81.313262072752352 47 81.356419965584848 57 81.99053384384527;
	setAttr -s 8 ".kit[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".ktl[3:7]" no no yes yes yes;
createNode animCurveTA -n "lf_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0 13 0 20 0 31 -12.524316373454688
		 40 -12.524316373454688 47 -4.6040679719350184 57 111.76721665416947;
	setAttr -s 8 ".kit[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".ktl[3:7]" no yes yes yes yes;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 7.5 6 0 13 0 20 0 31 7.3000000000000007
		 40 7.3000000000000007 47 6.8348209815849374 57 0;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".ktl[4:8]" no yes yes yes yes;
createNode animCurveTU -n "lf_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 13 0 20 0 31 0 40 0 47 0;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "lf_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -6.6000000000000005 13 0 20 0 31 0
		 40 0 47 0;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "rt_foot_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 4 1 6 1 13 1 20 1 24 1 31 1 40 1 47 1;
	setAttr -s 9 ".kit[4:8]"  16 9 18 9 9;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 16 5 18 5 
		5;
	setAttr -s 9 ".ktl[4:8]" no yes yes yes yes;
createNode animCurveTL -n "rt_foot_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 -0.1743961580917775 9 -0.37409521379043936
		 13 -0.73388286772383848 20 -0.73388286772383848 24 -0.6891380137128823 31 -0.53568849012991249
		 40 -0.53568849012991249 47 -0.52297238520258615 57 -0.33613614083058274;
	setAttr -s 11 ".kit[5:10]"  16 18 18 18 18 18;
	setAttr -s 11 ".kot[5:10]"  16 18 18 18 18 18;
createNode animCurveTL -n "rt_foot_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0.064665839201960798 9 0.13606135093555205
		 13 0.2721226891496592 20 0.2721226891496592 24 0.25469505173760898 31 0.19492811949103078
		 40 0.19492811949103078 47 0.19020530073074818 57 0.12081347634239946;
	setAttr -s 11 ".kit[5:10]"  16 18 18 18 18 18;
	setAttr -s 11 ".kot[5:10]"  16 18 18 18 18 18;
createNode animCurveTL -n "rt_foot_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 6 -0.0071564974241777428 9 0.15927223350110151
		 20 -0.03011551922921317 24 0.026775803703914268 31 0.22188084076483969 40 0.22188084076483969
		 47 0.22290993542688192 57 0.23803030309120204;
	setAttr -s 10 ".kit[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  16 18 18 18 18 18;
createNode animCurveTA -n "rt_foot_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 6 0 13 0 20 0 24 1.5648488978816661
		 31 6.9313949100885788 40 6.9313949100885788 47 8.2112204596665332 57 27.015547767522229;
	setAttr -s 10 ".kit[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".ktl[4:9]" no yes yes yes yes yes;
createNode animCurveTA -n "rt_foot_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 6 0 13 0 20 0 24 16.462709228233926
		 31 72.920483955555611 40 72.920483955555611 47 73.586877826340142 57 83.378125130563248;
	setAttr -s 10 ".kit[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".ktl[4:9]" no yes no yes yes yes;
createNode animCurveTA -n "rt_foot_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 13 0 20 0 24 -4.6540132957767471
		 31 -20.614644719691601 40 -20.614644719691601 47 -20.614644719691601;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".ktl[4:8]" no yes yes yes yes;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 9 7.7 13 0 20 0 24 1.6480660967548566
		 31 7.3000000000000007 40 7.3000000000000007 47 6.8348209815849374 57 0;
	setAttr -s 11 ".kit[5:10]"  16 18 18 18 18 18;
	setAttr -s 11 ".kot[5:10]"  16 18 18 18 18 18;
	setAttr -s 11 ".ktl[5:10]" no yes yes yes yes yes;
createNode animCurveTU -n "rt_foot_CTRL_Foot_Twist";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 13 0 20 0 24 0 31 0 40 0 47 0;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".ktl[4:8]" no yes yes yes yes;
createNode animCurveTU -n "rt_foot_CTRL_Ball_Roll";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 13 -8.4 20 -8.4 24 0 31 0 40 0
		 47 0;
	setAttr -s 9 ".kit[4:8]"  16 18 18 18 18;
	setAttr -s 9 ".kot[4:8]"  16 18 18 18 18;
createNode animCurveTU -n "lf_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "lf_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 0.076375209021338722 40 0.076375209021338722
		 47 0.084789424892052961 57 0.20841851584436413;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTL -n "lf_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 -0.37525272633456952 40 -0.37525272633456952
		 47 -0.39788781275012419 57 -0.73046249352599191;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTL -n "lf_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 0.15169562950568394 40 0.15169562950568394
		 47 0.15101223484090709 57 0.14097119685635978;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTU -n "rt_knee_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "rt_knee_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 0.003411403399008547 40 0.003411403399008547
		 47 0.005504618391934446 57 0.036259981781632054;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTL -n "rt_knee_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 -0.35194183781780081 40 -0.35194183781780081
		 47 -0.37369330045661697 57 -0.69328500029397055;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTL -n "rt_knee_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 -0.0063812220914775059
		 40 -0.0063812220914775059 47 -0.0013148381851047454 57 0.073124948764064127;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTU -n "cl_CoG_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 31 1 47 1;
	setAttr -s 5 ".kit[2:4]"  16 18 9;
	setAttr -s 5 ".kot[0:4]"  5 5 16 18 5;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTL -n "cl_CoG_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 0 18 0 31 0;
	setAttr -s 4 ".kit[2:3]"  16 18;
	setAttr -s 4 ".kot[2:3]"  16 18;
	setAttr -s 4 ".ktl[2:3]" no no;
createNode animCurveTL -n "cl_CoG_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 13 0 24 0 31 -0.49662953527820586 59 -0.81562849604155052;
	setAttr -s 5 ".kit[2:4]"  10 1 18;
	setAttr -s 5 ".kot[2:4]"  10 1 18;
	setAttr -s 5 ".ktl[2:4]" no no yes;
	setAttr -s 5 ".kwl[3:4]" no yes;
	setAttr -s 5 ".kix[3:4]"  0.0074244961142539978 1.1666666269302368;
	setAttr -s 5 ".kiy[3:4]"  -1.2188088893890381 0;
	setAttr -s 5 ".kox[3:4]"  2.9642634391784668 1.1666666269302368;
	setAttr -s 5 ".koy[3:4]"  -0.015905849635601044 0;
createNode animCurveTL -n "cl_CoG_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 -0.1339378560830905 9 -1.0834321414279626
		 17 -1.1764355357909357 31 0.0036126697970161048 59 0.82721545354424653;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".ktl[3:4]" no yes;
	setAttr -s 5 ".kwl[3:4]" no yes;
	setAttr -s 5 ".kix[3:4]"  0.625 1.1666666269302368;
	setAttr -s 5 ".kiy[3:4]"  0.32833898067474365 0;
	setAttr -s 5 ".kox[3:4]"  2.8004293441772461 1.1666666269302368;
	setAttr -s 5 ".koy[3:4]"  0.054784968495368958 0;
createNode animCurveTA -n "cl_CoG_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 -4.905171046922379 18 10.290989273932867
		 31 -30.555866851578347 57 74.837037322959489;
	setAttr -s 5 ".kit[2:4]"  16 1 1;
	setAttr -s 5 ".kot[2:4]"  16 1 1;
	setAttr -s 5 ".ktl[3:4]" no no;
	setAttr -s 5 ".kwl[3:4]" no no;
	setAttr -s 5 ".kix[3:4]"  0.35858526825904846 0.56135404109954834;
	setAttr -s 5 ".kiy[3:4]"  -1.0611573457717896 4.3288016319274902;
	setAttr -s 5 ".kox[3:4]"  1.8216580152511597 0.10251887142658234;
	setAttr -s 5 ".koy[3:4]"  0.020805936306715012 2.5213851928710938;
createNode animCurveTA -n "cl_CoG_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.0000000000000009 13 6.0000000000000009
		 18 6.0000000000000009 31 6.0000000000000009 47 6.0000000000000009;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTA -n "cl_CoG_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 18 0 31 0 47 0;
	setAttr -s 4 ".kit[1:3]"  16 18 18;
	setAttr -s 4 ".kot[1:3]"  16 18 18;
	setAttr -s 4 ".ktl[1:3]" no yes yes;
createNode animCurveTU -n "cl_CoG_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 31 1 47 1;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "cl_CoG_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 31 1 47 1;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "cl_CoG_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 18 1 31 1 47 1;
	setAttr -s 5 ".kit[2:4]"  16 18 18;
	setAttr -s 5 ".kot[2:4]"  16 18 18;
	setAttr -s 5 ".ktl[2:4]" no yes yes;
createNode animCurveTU -n "cl_hips_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "cl_hips_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.0055615650072433961 13 0 18 0
		 31 0.0033872849109562357 40 0.0033872849109562357 47 0.0033872849109562357;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTL -n "cl_hips_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 -0.0038189539105254675 13 0 18 0
		 31 0.012544910797459393 40 0.034469116105980885 47 0.076542091497478232 57 -0.022434252555640733;
	setAttr -s 8 ".kit[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".ktl[3:7]" no yes yes yes yes;
createNode animCurveTL -n "cl_hips_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 0 18 0 31 0.018451569411963954 40 0.028752091616657673
		 47 0.034098129799612784 57 0.082783229579519085;
	setAttr -s 7 ".kit[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".kot[2:6]"  16 18 18 18 18;
	setAttr -s 7 ".ktl[2:6]" no yes yes yes yes;
createNode animCurveTA -n "cl_hips_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.8354218132515978 10 -3.972079066800144
		 18 3.0435674711568947 31 13.466959920656237 40 20.133549798550057 47 19.84587463632004
		 57 15.619097080036976;
createNode animCurveTA -n "cl_hips_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "cl_hips_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "cl_hips_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "cl_hips_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "cl_hips_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "cl_belly_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 9 9;
	setAttr -s 7 ".kot[0:6]"  5 5 5 16 18 5 5;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTL -n "cl_belly_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0062891146172022105 9 0.0062891146172022105
		 11 0.0092187569679087616 13 0.0062891146172022105 17 0.0019331244331286951 28 0.00992105701718894
		 31 0.0062891146172022105 40 0.0062891146172022105 47 0.0062891146172022105;
createNode animCurveTL -n "cl_belly_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 9 0 11 0.0011927880519614718 13 0 18 0
		 28 -0.017076778231338772 31 -0.032237802958398551 40 0.0045410353379215264 47 0.042368011588568483
		 57 -0.016394261482968235;
	setAttr -s 10 ".kit[3:9]"  9 16 18 18 18 18 18;
	setAttr -s 10 ".kot[3:9]"  9 16 18 18 18 18 18;
	setAttr -s 10 ".ktl[4:9]" no yes yes yes yes yes;
createNode animCurveTL -n "cl_belly_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0029229894338721092 8 0.0029229894338721092
		 11 -0.018724765242784842 20 0.019333765404965217 28 -0.011840949606043712 31 0.023654578974410492
		 40 0.033170707934081001 47 0.035098187934248438 57 0.063418426434289882;
createNode animCurveTA -n "cl_belly_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.3174972603857418 9 -7.3174972603857418
		 13 -7.3174972603857418 18 -7.3174972603857418 31 2.1045342505426849 40 2.1045342505426849
		 47 2.704935808039874 57 11.526565761471115;
	setAttr -s 8 ".kit[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  16 18 18 18 18;
	setAttr -s 8 ".ktl[3:7]" no yes yes yes yes;
createNode animCurveTA -n "cl_belly_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.038304789489836011 9 0.038304789489836011
		 13 0.038304789489836011 18 0.038304789489836011 31 0.038304789489836011 40 0.038304789489836011
		 47 0.038304789489836011;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTA -n "cl_belly_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2861183605965452 9 1.2861183605965452
		 13 1.2861183605965452 18 1.2861183605965452 31 1.2861183605965452 40 1.2861183605965452
		 47 1.2861183605965452;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_belly_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_belly_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_belly_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_chest_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 33 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 9 9;
	setAttr -s 7 ".kot[0:6]"  5 5 5 16 18 5 5;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTL -n "cl_chest_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.019085073858312589 9 -0.019085073858312589
		 11 -0.014599620427181862 13 -0.019085073858312589 17 -0.023468183537101426 24 -0.012409891524660915
		 28 -0.012754840756616341 33 -0.019486020343663327 40 -0.019085073858312589 47 -0.019085073858312589;
createNode animCurveTL -n "cl_chest_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 9 0 11 0.0070340351823463074 17 -0.0051819370319234666
		 18 0 24 0.0070321067700508527 28 0.0024559267842427686 33 -0.018322579098243502 40 0.012738166079405644
		 47 0.050346084980508021;
	setAttr -s 10 ".kit[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".kot[4:9]"  16 18 18 18 18 18;
	setAttr -s 10 ".ktl[4:9]" no yes yes yes yes yes;
createNode animCurveTL -n "cl_chest_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8 0 11 -0.021740252003037808 20 0.0275556587742989
		 24 -0.06739780127517922 28 -0.067234723788194062 33 -0.0064871119956367244 40 0 47 0;
createNode animCurveTA -n "cl_chest_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 18 0 33 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "cl_chest_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.830043739835423 9 14.830043739835423
		 13 14.830043739835423 18 14.830043739835423 31 24.697880016111039 47 14.830043739835423;
	setAttr -s 6 ".kit[3:5]"  16 18 18;
	setAttr -s 6 ".kot[3:5]"  16 18 18;
	setAttr -s 6 ".ktl[3:5]" no yes yes;
createNode animCurveTA -n "cl_chest_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13398677887697583 9 0.13398677887697583
		 13 0.13398677887697583 18 0.13398677887697583 33 0.13398677887697583 40 0.13398677887697583
		 47 0.13398677887697583;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_chest_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 33 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_chest_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 33 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "cl_chest_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 9 1 13 1 18 1 33 1 40 1 47 1;
	setAttr -s 7 ".kit[3:6]"  16 18 18 18;
	setAttr -s 7 ".kot[3:6]"  16 18 18 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
createNode animCurveTU -n "lf_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "lf_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0.0020446738484805986 40 0
		 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "lf_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 -0.0086746409600113907
		 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "lf_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 -0.0025430609430870024
		 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "lf_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "lf_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 31 1 40 1 47 1;
	setAttr -s 5 ".kit[2:4]"  18 9 9;
	setAttr -s 5 ".kot[0:4]"  5 5 18 5 5;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -8.5796691333523469 13 -17.298246901166685
		 31 -7.0477638837381509 40 -7.0477638837381509 47 -11.044618161825893 57 -5.5158586341239531;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.969132721012087 13 -22.978701221551724
		 47 49.996910571769469 57 -12.208920295502304;
createNode animCurveTA -n "lf_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -57.698073518531857 13 -22.450957027486982
		 31 -53.770849272024378 40 -53.770849272024378 47 -60.036483422611248 57 -49.843625025516907;
createNode animCurveTU -n "lf_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 31 1 40 1 47 1;
	setAttr -s 5 ".kit[2:4]"  18 9 9;
	setAttr -s 5 ".kot[0:4]"  5 5 18 5 5;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 39.581210184402863 13 36.735783688497236
		 31 43.305388310674559 40 39.226318031312758 47 39.203703184269244 57 38.871425878222652
		 59 39.179339753260471;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -33.098719372932493 13 -46.95999222714962
		 47 -49.007522636224266 57 -12.923863098800663 59 -16.628319972235449;
createNode animCurveTA -n "lf_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  0 -6.3713360730641382 13 -17.103098976121654
		 31 0.022676182370078738 40 1.9741799602872865 47 2.5059825570765448 57 10.31969599363871
		 62 17.185200573065501;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".ktl[6]" no;
	setAttr -s 7 ".kwl[6]" no;
	setAttr -s 7 ".kix[6]"  0.42364367842674255;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTU -n "rt_clavicle_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 13 1 18 1 31 1 40 1 47 1;
	setAttr -s 6 ".kit[2:5]"  16 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 5 16 18 5 5;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "rt_clavicle_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0.00097229912317756779
		 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "rt_clavicle_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 -0.0087081886335163578
		 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTL -n "rt_clavicle_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 -0.0030198230130567246
		 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5 13 -5 18 -5 31 -5 40 -5 47 -5;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTA -n "rt_clavicle_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 13 0 18 0 31 0 40 0 47 0;
	setAttr -s 6 ".kit[2:5]"  16 18 18 18;
	setAttr -s 6 ".kot[2:5]"  16 18 18 18;
	setAttr -s 6 ".ktl[2:5]" no yes yes yes;
createNode animCurveTU -n "rt_shoulder_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 31 1 40 1 47 1;
	setAttr -s 5 ".kit[2:4]"  18 9 9;
	setAttr -s 5 ".kot[0:4]"  5 5 18 5 5;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.1147831510668968 13 -3.2131936487574371
		 31 -9.2169083763262982 40 -9.2169083763262982 47 -9.2234161177018574 57 -9.3190336015857014;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.239944656421704 13 15.710645525965694
		 31 15.507084694215637 40 15.507084694215637 47 15.651554006186933 57 17.774224732009571;
createNode animCurveTA -n "rt_shoulder_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -67.387380623406898 13 -44.088532794822946
		 31 -67.769056373334436 40 -67.769056373334436 47 -67.793377955622674 57 -68.150732123261989;
createNode animCurveTU -n "rt_elbow_fkCTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 13 1 31 1 40 1 47 1;
	setAttr -s 5 ".kit[2:4]"  18 9 9;
	setAttr -s 5 ".kot[0:4]"  5 5 18 5 5;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.2447471177220968 13 -2.4470729056542626
		 31 -3.2192193993968377 40 -2.8616057855576522 47 -2.8371908117479951 57 -2.4784644533932072;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.379162672731255 13 -96.635007778439146
		 31 -45.948367525550232 40 -25.387517877784827 47 -24.495926152890934 57 -11.395873082838387;
createNode animCurveTA -n "rt_elbow_fkCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82434935557964173 13 2.2852175569200117
		 31 -0.43392218428564416 40 -1.5377394889058087 47 -1.5831989576685015 57 -2.2511296222319759;
createNode animCurveTU -n "cl_head_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 13 1 18 1 31 1 40 1 47 1 57 1 59 1;
	setAttr -s 8 ".kit[2:7]"  16 18 9 9 9 9;
	setAttr -s 8 ".kot[0:7]"  5 5 16 18 5 5 5 5;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTL -n "cl_head_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 0 18 0 31 0.00071217123908190276
		 40 0 47 0 57 0 59 0;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTL -n "cl_head_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 0 18 0 31 -0.010596297650478918 40 0
		 47 0 57 0 59 0;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTL -n "cl_head_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 0 18 0 31 -0.0036925420728387984
		 40 0 47 0 57 0 59 0;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTA -n "cl_head_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 -21.962991142273076 18 -20.786859344274578
		 31 -39.948954823796107 40 -39.948954823796107 47 -39.948954823796107 57 -39.948954823796107
		 62 -46.466412583956881;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 1;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[7]" no;
	setAttr -s 8 ".kwl[7]" no;
	setAttr -s 8 ".kix[7]"  0.48694047331809998;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "cl_head_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 30.100224576615322 18 24.251992203760672
		 31 0 40 0 47 4.5247328587107454 57 71.006104233008273 59 71.006104233008273;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
createNode animCurveTA -n "cl_head_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 -2.5714365208221652 18 0 31 0 40 0
		 47 0 57 0 59 0;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 13 1 18 1 31 1 40 1 47 1 57 1 59 1;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 13 1 18 1 31 1 40 1 47 1 57 1 59 1;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 13 1 18 1 31 1 40 1 47 1 57 1 59 1;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_Ear_Left";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 -13 31 0 40 0 47 0 57 0 59 0;
createNode animCurveTU -n "cl_head_CTRL_Ear_Right";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 13 -13 31 0 40 0 47 0 57 0 59 0;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Upper";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 0 18 0 31 8.7000000000000011 40 8.7000000000000011
		 47 8.7000000000000011 57 8.7000000000000011 59 8.7000000000000011;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_Jaw_Bottom";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 13 6.8637546468401496 18 3.2202602230483262
		 31 15.600000000000001 36 15.600000000000001 47 6.8000000000000007 53 4.7024007250977089
		 56 8.4000000000000021 62 15.600000000000001;
	setAttr -s 9 ".kit[2:8]"  16 18 18 18 18 18 18;
	setAttr -s 9 ".kot[2:8]"  16 18 18 18 18 18 18;
	setAttr -s 9 ".ktl[2:8]" no yes yes yes yes yes yes;
createNode animCurveTU -n "cl_head_CTRL_Beard";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 13 0 18 0 31 0 40 0 47 0 57 0 59 0;
	setAttr -s 8 ".kit[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".kot[2:7]"  16 18 18 18 18 18;
	setAttr -s 8 ".ktl[2:7]" no yes yes yes yes yes;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -256.90476190476198 -115.59523809523809 ;
	setAttr ".vh" -type "double2" 258.09523809523807 114.04761904761907 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 184 ".hyp";
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
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].nvs" 1920;
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
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
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
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
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
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"left3\\\" -ps 1 51 50 -ps 2 49 100 -ps 3 51 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner4\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner4\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner4\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Graph Editor3\")) \n\t\t\t\t\t\"scriptedPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"graphEditor\\\" -l (localizedPanelLabel(\\\"Graph Editor3\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Graph Editor3\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"OutlineEd\\\");\\n            outlinerEditor -e \\n                -showShapes 1\\n                -showReferenceNodes 0\\n                -showReferenceMembers 0\\n                -showAttributes 1\\n                -showConnected 1\\n                -showAnimCurvesOnly 1\\n                -showMuteInfo 0\\n                -organizeByLayer 1\\n                -showAnimLayerWeight 1\\n                -autoExpandLayers 1\\n                -autoExpand 1\\n                -showDagOnly 0\\n                -showAssets 1\\n                -showContainedOnly 0\\n                -showPublishedAsConnected 0\\n                -showContainerContents 0\\n                -ignoreDagHierarchy 0\\n                -expandConnections 1\\n                -showUpstreamCurves 1\\n                -showUnitlessCurves 1\\n                -showCompounds 0\\n                -showLeafs 1\\n                -showNumericAttrsOnly 1\\n                -highlightActive 0\\n                -autoSelectNewObjects 1\\n                -doNotSelectNewObjects 0\\n                -dropIsParent 1\\n                -transmitFilters 1\\n                -setFilter \\\"0\\\" \\n                -showSetMembers 0\\n                -allowMultiSelection 1\\n                -alwaysToggleSelect 0\\n                -directSelect 0\\n                -displayMode \\\"DAG\\\" \\n                -expandObjects 0\\n                -setsIgnoreFilters 1\\n                -containersIgnoreFilters 0\\n                -editAttrName 0\\n                -showAttrValues 0\\n                -highlightSecondary 0\\n                -showUVAttrsOnly 0\\n                -showTextureNodesOnly 0\\n                -attrAlphaOrder \\\"default\\\" \\n                -animLayerFilterOptions \\\"allAffecting\\\" \\n                -sortOrder \\\"none\\\" \\n                -longNames 0\\n                -niceNames 1\\n                -showNamespace 1\\n                -showPinIcons 1\\n                -mapMotionTrails 1\\n                -ignoreHiddenAttribute 0\\n                $editorName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"GraphEd\\\");\\n            animCurveEditor -e \\n                -displayKeys 1\\n                -displayTangents 0\\n                -displayActiveKeys 0\\n                -displayActiveKeyTangents 1\\n                -displayInfinities 0\\n                -autoFit 0\\n                -snapTime \\\"integer\\\" \\n                -snapValue \\\"none\\\" \\n                -showResults \\\"off\\\" \\n                -showBufferCurves \\\"off\\\" \\n                -smoothness \\\"fine\\\" \\n                -resultSamples 1\\n                -resultScreenSamples 0\\n                -resultUpdate \\\"delayed\\\" \\n                -showUpstreamCurves 1\\n                -clipTime \\\"on\\\" \\n                -stackedCurves 0\\n                -stackedCurvesMin -1\\n                -stackedCurvesMax 1\\n                -stackedCurvesSpace 0.2\\n                -displayNormalized 0\\n                -preSelectionHighlight 0\\n                -constrainDrag 0\\n                -classicMode 1\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 65 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
connectAttr "sharedReferenceNode.sr" "jackal_rig_masterRN.sr";
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
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"jackal_rig_masterRN\" \"\" \"rig/jackal_rig_master.ma\" 3114748501 \"/Users/Aholic/GA/Projects/S02_BeforeLegends/Assets/Characters/Jackal/maya/scenes/rig/jackal_rig_master.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FO_Jackal_01_AM@Die_01.ma
