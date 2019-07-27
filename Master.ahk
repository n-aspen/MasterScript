instance1 = mov51 ;sets the names of each instance in use, soft coding for future prrofing
instance2 = mov52
instance3 = mov53
instance4 = mov54
SetTitleMatchMode 2
#SingleInstance Force

;Window switch
;------------------------


*^NumpadClear::
if WinExist (instance1){ ;checking if the window exists
	WinRestore, % instance1 ;restring window in preperation to maximize it (fixes issue with maximizing window out of screen bounds)
	WinActivate, % instance1 ;activating window/bringing it to the front of the stack
	MouseGetPos, X, Y ;placing cursor position in the %X% and %Y% variables for window placement
	WinMove, %instance1%, , %X%, %Y% ;moving window to cursor position
	WinMaximize, %instance1% ;maximizing window at new position
	}
return

;repeating for the rest of the instances

*^NumpadLeft::
if WinExist (instance2){
	WinRestore, % instance2
	WinActivate, % instance2
	MouseGetPos, X, Y
	WinMove, %instance2%, , %X%, %Y%
	WinMaximize, %instance2%
	}
return

*^NumpadRight::
if WinExist (instance3){
	WinRestore, % instance3
	WinActivate, % instance3
	MouseGetPos, X, Y
	WinMove, %instance3%, , %X%, %Y%
	WinMaximize, %instance3%
	}
return

*^NumpadDown::
if WinExist (instance4){
	WinRestore, %instance4%
	WinActivate, %instance4%
	MouseGetPos, X, Y
	WinMove, %instance4%, , %X%, %Y%
	WinMaximize, %instance4%
	}
return

;Window name
;------------------------

*^!NumpadClear::
WinGetActiveTitle, Window ;getting active (selected) window and placing title in the variable %Window%
WinSetTitle, %Window%, , %instance1% ;Setting window acquired previously to appropriate instance
return

;repeating for the rest of the instances

*^!NumpadRight::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance2%
return

*^!NumpadLeft::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance3%
return

*^!NumpadDown::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance4%
return

;Gamemode Switch
;------------------------

Numpad7::
if  WinActive(instance1){  ;checking if the window exists
	ControlSend, ,{Bind}{t}, %instance1% ;sending "t" to the %instance1% window
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Raw}/gm s, %instance1% ;sending the command to the %instance1% window now that the chat menu is open
	sleep 150 ;waiting for minecraft to react
	ControlSend, ,{Enter}, %instance1% ;sending the enter key to send command
}
return

;repeating for the rest of the instances

Numpad8::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/gm sp, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

Numpad9::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/gm c, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

Numpad3::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/back, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

^Numpad3::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 200
	ControlSend, ,{text}/wild, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
	SetTimer, Wilding, -300000 ;running the "Wilding" funcion after 300000 miliseconds (5 minutes)
}
return

Numpad4::
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


numpad5:: 
if  WinActive(instance1){
	Loop, Files, D:\git\MasterScript\MasterScript\Commands\Homes\*.txt, F
	{
		ButtonName := RegExReplace(A_LoopFileName,".txt$")
		Gui, +AlwaysOnTop +Owner 
		Gui, Add, Button, gButtonHandler1 w200, % ButtonName
	}
	Gui, Show 
}
return

^numpad5:: 
if  WinActive(instance1)||WinActive(instance2)||WinActive(instance3)|WinActive(instance4){
	Loop, Files, D:\git\MasterScript\MasterScript\Commands\Scripts\*, D
	{
		HeaderName := % A_LoopFileName 
		Gui, +AlwaysOnTop +Owner  
		Gui, Add, Text, y0, % HeaderName
		Loop, Files, D:\git\MasterScript\MasterScript\Commands\Scripts\%A_LoopFileName%\*.ahk , F
		{
			ButtonName := RegExReplace(A_LoopFileName,".ahk$") 
			Gui, Add, Button, gButtonHandler2 w200, %HeaderName%/%ButtonName%
		}
	}
	Gui, Show 
}
return

GuiClose:
Gui, destroy
return


ButtonHandler1:
	Gui, Hide
	SetWorkingDir, D:\git\MasterScript\MasterScript\Commands\Homes\
	FileRead, ComName, %A_GuiControl%.txt
	controlSend, , t, %instance1%
	sleep 200
	controlSend, , %ComName%, %instance1%
	sleep 100
	controlSend, , {enter}, %instance1%
Return

ButtonHandler2:
	Gui, Hide
	SetWorkingDir, D:\git\MasterScript\MasterScript\Commands\Scripts\
	Gui, Submit
    Run %A_AHKPath% %A_GuiControl%.ahk
	Gui, Hide
Return
	
