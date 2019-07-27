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

^!Numpad5::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance1%
return

^!Numpad4::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance2%
return

^!Numpad6::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance3%
return

^!Numpad2::
WinGetActiveTitle, Window
WinSetTitle, %Window%, , %instance4%
return
	
