instance1 = mov51
instance2 = mov52
instance3 = mov53
instance4 = mov54

;Window switch
;------------------------


*^NumpadClear::
if WinExist (instance1){
	WinRestore, % instance1
	WinActivate, % instance1
	MouseGetPos, X, Y
	WinMove, %instance1%, , %X%, %Y%
	WinMaximize, %instance1%
	}
return

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
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance1%
return

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
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/gm s, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}
return

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
ControlSend, ,{Bind}{t}, %instance1%
sleep 200
ControlSend, ,{text}/wild, %instance1%
sleep 150
ControlSend, ,{Enter}, %instance1%
SetTimer, Wilding, -1000
return

Numpad4::
if  WinActive(instance1){
	ControlSend, ,{Bind}{t}, %instance1%
	sleep 150
	ControlSend, ,{Raw}/co i, %instance1%
	sleep 150
	ControlSend, ,{Enter}, %instance1%
}

Wilding:
msgbox, 4096 , ,you can use /wild again
	
