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
