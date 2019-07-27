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
		Sleep 1000
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAU
		Sleep 250
		}
	Return

!^b::
BreakLoop = 1
return
