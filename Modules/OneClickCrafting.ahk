^+C::
if  WinActive(instance1){
	MouseGetPos, MY, MX
	Send {Shift down}
	sleep 5
	MouseClick, left, , , ,4
	sleep 5
	MouseClick, left, 1322, 386, ,4
	Send {Shift up}
	MouseMove, MY, MX
}
return
