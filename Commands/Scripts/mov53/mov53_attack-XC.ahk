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
		Sleep 1000
		ControlClick, , %wintit%, ,left, , NAD
		Sleep 100
		ControlClick, , %wintit%, ,left, , NAU
		Sleep 250
		}
	Return

!^c::
BreakLoop = 1
return