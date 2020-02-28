+^F17::
if WinExist (instance1){ ;checking if the window exists
	WinMinimize
	WinActivate, % instance1 ;activating window/bringing it to the front of the stack
	}
return

;repeating for the rest of the instances

+^F18::
if WinExist (instance2){
	WinMinimize
	WinActivate, % instance2
	}
return

+^F16::
if WinExist (instance3){
	WinMinimize
	WinActivate, % instance3
	}
return

+^F14::
if WinExist (instance4){
	WinMinimize
	WinActivate, %instance4%
	}
return
