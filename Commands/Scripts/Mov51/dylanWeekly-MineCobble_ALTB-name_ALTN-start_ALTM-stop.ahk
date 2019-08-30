windowTitle = dylanWeekly
SetTitleMatchMode 2
#SingleInstance Force

!b::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , dylanWeekly
return

!n::
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

!m::
BreakLoop = 1
return

NumpadAdd::
exitApp
