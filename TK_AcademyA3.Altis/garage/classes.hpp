#include "defines.hpp"

class PIXLOGISTIC_DIALOG_GARAGE 
{
	idd = PIXLOGISTIC_IDD_DIALOG_GARAGE;
	name = "PIXLOGISTIC_DIALOG_GARAGE";
	movingEnable = false;
	
	controlsBackground[] = 
	{
		PIXLOGISTIC_DIALOG_GARAGE_Title,
		PIXLOGISTIC_DIALOG_GARAGE_Background
	};
	objects[] = {};
	controls[] =
	{
		PIXLOGISTIC_DIALOG_GARAGE_SubTitle,
		PIXLOGISTIC_DIALOG_GARAGE_List,
		
		PIXLOGISTIC_DIALOG_GARAGE_ButtonOK,
		PIXLOGISTIC_DIALOG_GARAGE_ButtonCancel
	};
	
	class PIXLOGISTIC_DIALOG_GARAGE_Background: IGUIBack
	{
		idc = -1;
		x = GRID_ABS_X;
		y = GRID_ABS_Y;
		w = GRID_ABS_W;
		h = GRID_ABS_H;
	};	
	class PIXLOGISTIC_DIALOG_GARAGE_Title : RscTitle
	{
		idc = -1;
		x = GRID_ABS_X;
		y = GRID_ABS_Y - GRID_TITLE_H;
		w = GRID_ABS_W;
		h = GRID_TITLE_H;
		text = "Ausrüstung";
	};	
	class PIXLOGISTIC_DIALOG_GARAGE_SubTitle : RscText
	{
		idc = PIXLOGISTIC_IDC_DIALOG_GARAGE_SubTitle;
		x = 1 * GRID_W + GRID_ABS_X; 
		y = 1 * GRID_H + GRID_ABS_Y; 
		w = 8 * GRID_W;
		h = 1 * GRID_H;
		text = "Klasse";
		colorbackground[] = 
		{
			0,
			0,
			0,
			1
		};		
	};
	
	class PIXLOGISTIC_DIALOG_GARAGE_List : RscListBox
	{
		idc = PIXLOGISTIC_IDC_DIALOG_GARAGE_List;
		x = 1 * GRID_W + GRID_ABS_X; 
		y = 2 * GRID_H + GRID_ABS_Y; 
		w = 8 * GRID_W;
		h = 6 * GRID_H;
	};
	

	class PIXLOGISTIC_DIALOG_GARAGE_ButtonOK : RscButtonMenuOK
	{
		idc = PIXLOGISTIC_IDC_DIALOG_GARAGE_ButtonOK;
		x = 1 * GRID_W + GRID_ABS_X; 
		y = 8 * GRID_H + GRID_ABS_Y; 
		w = 3.9 * GRID_W;
		h = 0.9 * GRID_H;
		text = "OK";
		action = "execVM 'GARAGE\onButtonOKClicked.sqf';";
	};
	
	class PIXLOGISTIC_DIALOG_GARAGE_ButtonCancel : RscButtonMenuCancel
	{
		idc = PIXLOGISTIC_IDC_DIALOG_GARAGE_ButtonCancel;
		x = 5 * GRID_W + GRID_ABS_X; 
		y = 8 * GRID_H + GRID_ABS_Y; 
		w = 4 * GRID_W;
		h = 0.9 * GRID_H;
		text = "Abbrechen";
		action = "execVM 'GARAGE\onButtonCancelClicked.sqf';";
	};
};