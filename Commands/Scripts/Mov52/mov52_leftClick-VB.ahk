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
			ControlClick, , %windowTitle%, ,left, , NAU
			break
		}
		Sleep 500
		ControlClick, , %windowTitle%, ,left, , NAD
		}
	Return

!^b::
BreakLoop = 1
return
