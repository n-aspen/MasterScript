windowTitle = mov53 ;the title of the window you are fishing with IE Minecraft 1.14.3
SetTitleMatchMode 2
#SingleInstance Force ;ensures that only 1 version of the script is running

!^x:: ;key to start the loop. get key combos from here https://www.autohotkey.com/docs/KeyList.htm
IfWinExist %windowTitle% ;checks if the window exists

BreakLoop = 0 ;a variable used to break out of the loop
	Loop ;the start of the loop
	{
		if (BreakLoop = 1) ;checks if the break variable is set
		{
			BreakLoop = 0 ;resets break variable
			break ;exits loop
		}

		Sleep 100 ;waits 100ms
		ControlClick, , %windowTitle%, ,right, , NAD ;presses down the right mouse button
		Sleep 500	;waits 500ms
		ControlClick, , %windowTitle%, ,right, , NAU ;lifts the right mouse button
		}
	Return ;returns when you exit the loop, waiting for another keybind

!^c:: ;key to break the loop. get key combos from here https://www.autohotkey.com/docs/KeyList.htm
BreakLoop = 1
return

NumpadAdd:: ;key to close the script. get key combos from here https://www.autohotkey.com/docs/KeyList.htm
exitApp
