windowTitle = mov52
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
			break
		}
		Sleep 300
		ControlClick, , %windowTitle%, ,left, , NAD
		sleep 1500
		ControlClick, , %windowTitle%, ,left, , NAU
		Sleep 300
		ControlClick, , %windowTitle%, ,right, , NAD
		sleep 150
		ControlClick, , %windowTitle%, ,right, , NAU
		}
	Return

!^c::
BreakLoop = 1
return
