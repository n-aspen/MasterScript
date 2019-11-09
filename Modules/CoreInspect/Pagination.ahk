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
