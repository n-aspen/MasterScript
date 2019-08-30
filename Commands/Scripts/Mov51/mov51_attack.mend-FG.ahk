windowTitle = mov51
SetTitleMatchMode 2
#SingleInstance Force

!^f::
IfWinExist %windowTitle%

BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}
		Sleep 1000
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAU
		Sleep 500
		ControlClick, , %windowTitle%, ,WheelUp, , NAU
		Sleep 2000
		ControlClick, , %windowTitle%, ,WheelDown, , NAU
		Sleep 25
		}
	Return

!^g::
BreakLoop = 1
return

NumpadMult::
exitapp
