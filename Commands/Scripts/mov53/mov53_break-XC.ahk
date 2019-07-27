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
			ControlClick, , %wintit%, ,left, , NAU
			break
		}
		ControlClick, , %wintit%, ,left, , NAD
		}
	Return

!^c::
BreakLoop = 1
return
