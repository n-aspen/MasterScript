^F19::
if  WinActive(instance1){  ;checking if the window is selected
	page := page - 1
  chat("/co l "page,instance1)
}
return

;Subtract 10 from page pos
^!F19::
if  WinActive(instance1){  ;checking if the window is selected
	page := page - 10
  chat("/co l "page,instance1)
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
	chat("/co l "page,instance1)
}
return

;Add 1 to page pos
^F21::
if  WinActive(instance1){
	page := page + 1
	chat("/co l "page,instance1)
}
return

;Add 10 to page pos
^!F21::
if  WinActive(instance1){  ;checking if the window is selected
	page := page + 10
	chat("/co l "page,instance1)
}
return
