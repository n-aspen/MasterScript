windowTitle = mov54
SetTitleMatchMode 2
#SingleInstance Force

!^s::
IfWinExist %windowTitle%

BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 500
		ControlClick, , %windowTitle%, ,left, , NAU
		}
	Return

!^d::
BreakLoop = 1
return
