windowTitle = mov51
SetTitleMatchMode 3
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
		Sleep 800
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAU
		Sleep 250
		}
	Return

!^g::
BreakLoop = 1
return

NumpadMult:: 
exitapp 