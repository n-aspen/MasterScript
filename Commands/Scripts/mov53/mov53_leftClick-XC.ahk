windowTitle = mov53
SetTitleMatchMode 2
#SingleInstance Force

!^x::
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

!^c::
BreakLoop = 1
return
