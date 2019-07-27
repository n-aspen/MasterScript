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
		Sleep 1000
		ControlClick, , %windowTitle%, ,left, , NAD
		Sleep 100
		ControlClick, , %windowTitle%, ,left, , NAU
		Sleep 250
		}
	Return

!^d:: 	; Pressing ctrl + alt + p will stop it
BreakLoop = 1
return
