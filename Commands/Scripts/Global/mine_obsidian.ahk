windowTitle1 = mov52 ;window title to target, repeats down to target multiple windows.
windowTitle2 = mov53
windowTitle3 = mov54
SetTitleMatchMode 3 ;sets window match mode to exact
#SingleInstance Force ;only one version of the script can be open, makes it easy to replace old version with new one

!^v::
counts = 298 ;how many obsidian you plan on mining
;this varys depending on the height of the pillar and whether ort not you are mining 2 or 1 blocks per y height
loop{
	if (counts < 1) ; checks to see how far along the obsidian pillar you are
		{
			BreakLoop = 1 ;if you are at the end, it sets breakLoop to 1
		}
	if (BreakLoop = 1) ; if breakLoop is equal to 1 it runs the bwlow code, if not this is skipped
		{
			BreakLoop = 0;resets the break loop
			break
		}
	ControlClick, , %windowTitle1%, ,left, , NAD ;presses the left click button for each named window. to add more duplicate the line below the last one and iterate.
	ControlClick, , %windowTitle2%, ,left, , NAD;presses the left click button for each named window. to add more duplicate the line below the last one and iterate.
	ControlClick, , %windowTitle3%, ,left, , NAD;presses the left click button for each named window. to add more duplicate the line below the last one and iterate.
	Sleep 2470 ;waits the leanth of time it takes to mine one obsidian with an eff5 pick and haste 2
	ControlClick, , %windowTitle1%, ,left, , NAU ;releases the left click button for each named window. to add more duplicate the line below the last one and iterate.
	ControlClick, , %windowTitle2%, ,left, , NAU ;releases the left click button for each named window. to add more duplicate the line below the last one and iterate.
	ControlClick, , %windowTitle3%, ,left, , NAU ;releases the left click button for each named window. to add more duplicate the line below the last one and iterate.
	sleep 100
	counts--
}

!^b::
BreakLoop = 1 ;stops the script by setting the breakLoop variable to 1
return

!^r:: ;reloads the script. do this before running it again
reload