windowTitle = mov52
SetTitleMatchMode 2
#SingleInstance Force

!^v::
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
		ControlClick, , %windowTitle%, ,Right, , NAD
		Sleep 500
		ControlClick, , %windowTitle%, ,Right, , NAU
		}
	Return

!^b::
BreakLoop = 1
return
