wintit = mov53
SetTitleMatchMode 2
#SingleInstance Force

!^x::
IfWinExist %wintit%

BreakLoop = 0
	Loop
	{
		if (BreakLoop = 1)
		{
			BreakLoop = 0
			break
		}

		Sleep 50
		ControlClick, , %wintit%, ,Right, , NAD
		Sleep 50
		ControlClick, , %wintit%, ,Right, , NAU
		}
	Return

!^c::
BreakLoop = 1
return
