^F17::
if  WinActive(instance1)||WinActive(instance2)||WinActive(instance3)|WinActive(instance4){ ;checking if one of the windows are selected
  Gui, Scripts:New
	Loop, Files, %A_ScriptDir%\Commands\Scripts\*, D ;looping through every directory at the end of path
	{
		HeaderName := % A_LoopFileName ;setting %HeaderName% to found directory name
		Gui, +AlwaysOnTop +Owner  ;setting gui to always on top and removing the task bar button
		Gui, Scripts:Add, Text, y0, % HeaderName ;Adding header labled with %HeaderName%
		Loop, Files, Commands\Scripts\%A_LoopFileName%\*.ahk , F ;looping through all .ahk files contained in found directory with every loop
		{
			ButtonName := RegExReplace(A_LoopFileName,".ahk$") ;setting button name to the file name while removing .ahk from the end
			Gui, Scripts:Add, Button, gButtonHandler2 w200, %HeaderName%/%ButtonName% ;adding button with %HeaderName%/parent folder and %ButtonName% as label
		}
	}
	Gui, Scripts:Show ;showing gui
}
return

ButtonHandler2:
	Gui, Hide ;Hides GUI
	SetWorkingDir, %A_ScriptDir%\Commands\Scripts\ ;tells following code where to work
    Run %A_AHKPath% %A_GuiControl%.ahk ;reads file from button label with appended .txt to make it a propper file path
Return
