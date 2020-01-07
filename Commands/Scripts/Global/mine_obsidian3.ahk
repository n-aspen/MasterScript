windowTitle = mov52 ;window title to target, repeats down to target multiple windows.
SetTitleMatchMode 3 ;sets window match mode to exact
#SingleInstance Force ;only one version of the script can be open, makes it easy to replace old version with new one

!^v::
mine(mov52)
return

!^b::
BreakLoop = 1 ;stops the script by setting the breakLoop variable to 1
return

!^r:: ;reloads the script. do this before running it again
reload

mine(account){
	if WinExist(%account%){
		FileRead, counts, D:\minecraft\multimc\mov51\instances\%account%-1.14.4\.minecraft\config\positionWrite\Ypos.txt

		ControlSend , , {Alt down}, %account%
		ControlClick, , %account%, ,left, , NAD ;presses the left click button for each named window. to add more duplicate the line below the last one and iterate.
		ControlSend , , {Alt up}, %account%

		loop{
			if (counts <= 1 && counts != null) ; checks to see how far along the obsidian pillar you are
				{
				BreakLoop = 1 ;if you are at the end, it sets breakLoop to 1
				}
			if (BreakLoop = 1) ; if breakLoop is equal to 1 it runs the bwlow code, if not this is skipped
				{
				BreakLoop = 0;resets the break loop
				ControlClick, , %account%, ,left, , NAU ;releases the left click button for each named window. to add more duplicate the line below the last one and iterate.

				break
			}
			sleep 100
			FileRead, counts, D:\minecraft\multimc\%account%\instances\%account%-1.14.4\.minecraft\config\positionWrite\Ypos.txt
		}
	}
}
reload
