^+t::
if  WinActive(instance1){
	MouseGetPos, MY, MX
	Send {Shift down}
	sleep 5
	MouseClick, left, , , ,4
	sleep 5
	MouseClick, left, 1239, 394, ,4
	Send {Shift up}
	MouseMove, MY, MX
}
return
