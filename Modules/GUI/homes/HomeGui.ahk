F17::
if  WinActive(instance1){ ;checking if the window is selected
  Gui, Homes:New
	Loop, Files, %A_ScriptDir%\Commands\Homes\*.txt, F ;looping through all .txt files in directory
	{
		ButtonName := RegExReplace(A_LoopFileName,".txt$") ;setting button name to the file name while removing .txt from the end
		Gui, +AlwaysOnTop +Owner  ;setting gui to always on top and removing the task bar button
		Gui, Homes:Add, Button, gButtonHandler1 w200 h50, % ButtonName ;adding button with %buttonName% as label
	}
	Gui, Homes:Show ;showing gui
}
return

ButtonHandler1:
	Gui, Homes:Hide ;Hides GUI
	SetWorkingDir, %A_ScriptDir%\Commands\Homes\ ;tells following code where to work
	FileRead, ComName, %A_GuiControl%.txt ;reads file from button label with appended .txt to make it a propper file path
	controlSend, , t, %instance1% ;opens chat screen with "t" key
	sleep 200
	controlSend, , %ComName%, %instance1% ;sends contents of file to window
	sleep 100
	controlSend, , {enter}, %instance1%
Return
