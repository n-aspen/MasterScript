windowTitle = mov53 ;window title to target, repeats down to target multiple windows.
SetTitleMatchMode 3 ;sets window match mode to exact
#SingleInstance Force ;only one version of the script can be open, makes it easy to replace old version with new one

!^x::
BreakLoop = 0
;this varys depending on the height of the pillar and whether ort not you are mining 2 or 1 blocks per y height
loop{
	FileRead, counts, D:\minecraft\multimc\mov51\instances\mov53-1.14.4\.minecraft\config\positionWrite\Ypos.txt
	if (counts <= 1 && counts != null) ; checks to see how far along the obsidian pillar you are
		{
			BreakLoop = 1 ;if you are at the end, it sets breakLoop to 1
		}
	if (BreakLoop = 1) ; if breakLoop is equal to 1 it runs the bwlow code, if not this is skipped
		{
			BreakLoop = 0;resets the break loop
			ControlClick, , %windowTitle%, ,left, , NAU ;releases the left click button for each named window. to add more duplicate the line below the last one and iterate.

			break
		}
	ControlClick, , %windowTitle%, ,left, , NAD ;presses the left click button for each named window. to add more duplicate the line below the last one and iterate.
	sleep 100
	FileRead, counts, D:\minecraft\multimc\mov51\instances\mov53-1.14.4\.minecraft\config\positionWrite\Ypos.txt
}

!^c::
BreakLoop = 1 ;stops the script by setting the breakLoop variable to 1
return

!^r:: ;reloads the script. do this before running it again
reload
