instance1 = mov51 ;sets the names of each instance in use, soft coding for future prrofing
instance2 = mov52
instance3 = mov53
instance4 = mov54
page = 1
SetKeyDelay, 15, 20
SetTitleMatchMode 3
#SingleInstance Force
#WinActivateForce

;core page

;Add 1 from page pos
^F19::
if  WinActive(instance1){  ;checking if the window is selected
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	page := page - 1
	ControlSend, ,{text}/co l %page% , %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

;Subtract 10 from page pos
^!F19::
if  WinActive(instance1){  ;checking if the window is selected
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	page := page - 10
	ControlSend, ,{text}/co l %page% , %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

;Reset page
^F20::
if  WinActive(instance1){
	page = 1
	sleep 150
}
return

;Display the same page again
^!F20::
if  WinActive(instance1){  ;checking if the window is selected
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{text}/co l %page% , %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

;Add 1 to page pos
^F21::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	page := page + 1
	ControlSend, ,{text}/co l %page% , %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

;Add 10 to page pos
^!F21::
if  WinActive(instance1){  ;checking if the window is selected
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	page := page + 10
	ControlSend, ,{text}/co l %page% , %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

;Window switch
;------------------------


*^F17::
if WinExist (instance1){ ;checking if the window exists
	WinActivate, % instance1 ;activating window/bringing it to the front of the stack
	}
return

;repeating for the rest of the instances

*^F18::
if WinExist (instance2){
	WinActivate, % instance2
	}
return

*^F16::
if WinExist (instance3){
	WinActivate, % instance3
	}
return

*^F14::
if WinExist (instance4){
	WinActivate, %instance4%
	}
return

;Window name
;------------------------

oldTitle = noneYouMoron

*^!F15::
WinGetActiveTitle, Window ;getting active (selected) window and placing title in the variable %Window%
WinSetTitle, %Window%, , %oldTitle% ;Setting window acquired previously to old title
return

*^!F17::
WinGetActiveTitle, Window ;getting active (selected) window and placing title in the variable %Window%
oldTitle = %Window%
WinSetTitle, %Window%, , %instance1% ;Setting window acquired previously to appropriate instance
return

;repeating for the rest of the instances

*^!F18::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance2%
return

*^!F16::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance3%
return

*^!F14::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance4%
return

*^!F20::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , mov51-sprout
return

;Gamemode Switch
;------------------------

F19::
if  WinActive(instance1){  ;checking if the window is selected
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Raw}/gm s, %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

F20::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/gm sp, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

F21::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/gm c, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

F15::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/back, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

^F15::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 200
	ControlSend, ,{text}/wild, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
	SetTimer, Wilding, -300000 ;running the "Wilding" funcion after 300000 miliseconds (5 minutes)
}
return

F16::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/co i, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

Wilding:
msgbox, 4096 , ,you can use /wild again ;displaying a mesage box with the "always on top" setting

;List Homes
;------------------------


F17::
if  WinActive(instance1){ ;checking if the window is selected
	Loop, Files, %A_ScriptDir%\Commands\Homes\*.txt, F ;looping through all .txt files in directory
	{
		ButtonName := RegExReplace(A_LoopFileName,".txt$") ;setting button name to the file name while removing .txt from the end
		Gui, +AlwaysOnTop +Owner  ;setting gui to always on top and removing the task bar button
		Gui, Add, Button, gButtonHandler1 w200 h50, % ButtonName ;adding button with %buttonName% as label
	}
	Gui, Show ;showing gui
}
return

^F17::
if  WinActive(instance1)||WinActive(instance2)||WinActive(instance3)|WinActive(instance4){ ;checking if one of the windows are selected
	Loop, Files, %A_ScriptDir%\Commands\Scripts\*, D ;looping through every directory at the end of path
	{
		HeaderName := % A_LoopFileName ;setting %HeaderName% to found directory name
		Gui, +AlwaysOnTop +Owner  ;setting gui to always on top and removing the task bar button
		Gui, Add, Text, y0, % HeaderName ;Adding header labled with %HeaderName%
		Loop, Files, Commands\Scripts\%A_LoopFileName%\*.ahk , F ;looping through all .ahk files contained in found directory with every loop
		{
			ButtonName := RegExReplace(A_LoopFileName,".ahk$") ;setting button name to the file name while removing .ahk from the end
			Gui, Add, Button, gButtonHandler2 w200, %HeaderName%/%ButtonName% ;adding button with %HeaderName%/parent folder and %ButtonName% as label
		}
	}
	Gui, Show ;showing gui
}
return

ButtonHandler1:
	Gui, Hide ;Hides GUI
	SetWorkingDir, %A_ScriptDir%\Commands\Homes\ ;tells following code where to work
	FileRead, ComName, %A_GuiControl%.txt ;reads file from button label with appended .txt to make it a propper file path
	controlSend, , t, %instance1% ;opens chat screen with "t" key
	sleep 200
	controlSend, , %ComName%, %instance1% ;sends contents of file to window
	sleep 100
	controlSend, , {enter}, %instance1%
Return

ButtonHandler2:
	Gui, Hide ;Hides GUI
	SetWorkingDir, %A_ScriptDir%\Commands\Scripts\ ;tells following code where to work
    Run %A_AHKPath% %A_GuiControl%.ahk ;reads file from button label with appended .txt to make it a propper file path
Return


GuiClose: ;when gui closes
Gui, destroy ;destroy
return
