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
			ControlClick, , %windowTitle%, ,left, , NAU
			break
		}

		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 500
		}
	Return

!^g::
BreakLoop = 1
return

NumpadAdd::
exitApp
