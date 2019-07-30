;hotkey to activate OCR
g::
	getSelectionCoords(x_start, x_end, y_start, y_end)
	RunWait, D:\git\Capture2Text\Capture2Text.exe %x_start% %y_start% %x_end% %y_end%
	MsgBox, In area :: x_start: %x_start% --> x_end: %x_end% , y_start: %y_start% --> y_end: %y_end%`n`nFound Text:`n`n%clipboard%
return

; creates a click-and-drag selection box to specify an area
getSelectionCoords(ByRef x_start, ByRef x_end, ByRef y_start, ByRef y_end) {
	;Mask Screen
	Gui, Color, FFFFFF
	}