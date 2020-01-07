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

^!f13::
if  WinActive(instance1){
	chat("/hub")
}
return
^!f14::
if  WinActive(instance1){
	chat("/survival")
}
return

^!f15::
if  WinActive(instance1){
	chat("/creative")
}
return


Wilding:
msgbox, 4096 , ,you can use /wild again ;displaying a mesage box with the "always on top" setting
