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
