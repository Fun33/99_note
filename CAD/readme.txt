(C) Copyright 2005-2006 by Autodesk, Inc. 

========================================================================
						Render API Sample
========================================================================

Five commands are defined in this sample.
�b�o�ӨҤl��,������CMD�w�q
ObjsToRender
	Create a wood material and a cube and attach the material to the cube.
�s�W�@�Ӥ��M�@�ӥߤ���M�����o�Ӫ���TO THE �ߤ���
AddLights
	Add both a spot light and a point light. Both demonstrate among other things setting 
	shadow parameters as well
�W�[���I���M�I��,�i�ܤר�]�w���v�Ѽ�
AddSunAndBackground
	Add a sun and set background object.
�s�W�@�ӤӶ�,�]�w�I�v����
SetRenderSettings
	Set some render settings.
�]�w�@�Ǧ^���]�w
ListRenderSettings
	Output current render settings.
��X���T���^���]�w
GetLightInfo
	Gets light information like like physical intensity and lamp color type
��������T�����z�j�שM��������.
AddSunAndSky
	Add  sun with specific sky parameters
�W�[�Ӷ��H����ѪŰѶq
SetToneParams
	Add tone parameters (brightness, contrast, mid tones etc) for the current viewport


Before testing the sample, please set testing environment as:

1. The current workspace is 3D Modeling.
2. The current visual style is Conceptual.
3. This folder exists: 
	C:/Temp
4. This file exists:
	C:/Temp/background.jpg
   You may copy the background.jpg file in the Render sample folder to the C:/Temp folder.
 
 
Steps to run:

0. Load the Render.ARX into AutoCAD.

1. The following command sequence is recommended:
	1.1  Run ObjsToRender command.
	1.2	 Check the cube properties especially the Material proprty
	1.3  Run SetToneParams Command
	1.4  Check the contrast, brightness and mid tones in the Lights panel in the dashboard
	1.5  Run AddLights command.
	1.6  Run Zoom Extents command.
	1.7  Run the GetLightInfo command
	1.8  Use Sun Properties palette to check the sun of the current view.
	1.9  Run AddSunAndBackground or AddSunAndSky command.
	1.10 Use Sun Properties palette to check the sun of the current view again.
	1.11 Run ListRenderSettings command.
	1.12 Run SetRenderSettings command.
	1.13 Run ListRenderSettings command again.
	1.14 Run Render command.
	