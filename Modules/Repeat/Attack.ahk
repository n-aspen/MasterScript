Attack(window, time){
  Sleep %time%
  ControlClick, , %instance1%, ,left, , NAD
  Sleep 10
  ControlClick, , %instance1%, ,left, , NAU
  Sleep 10
}

;mov51
!^f::
IfWinActive %instance1%
BreakLoop1 = 0
	Loop
	{
  	if (BreakLoop1 = 1)
  	   break
    if (BreakLoop1 = 0)
  	   Attack(%instance1%, 900)
	}
  BreakLoop1 = 0
	Return
!^g::
IfWinActive %instance1%
BreakLoop1 = 1
return

;mov52
!^v::
IfWinActive %instance2%
BreakLoop2 = 0
	Loop
	{
  	if (BreakLoop2 = 1)
  	   break
    if (BreakLoop2 = 0)
  	   Attack(%instance2%, 900)
	}
  BreakLoop2 = 0
	Return
!^b::
IfWinActive %instance2%
BreakLoop2 = 1
return

;mov53
!^x::
IfWinActive %instance3%
BreakLoop3 = 0
	Loop
	{
  	if (BreakLoop3 = 1)
  	   break
    if (BreakLoop3 = 0)
  	   Attack(%instance3%, 900)
	}
  BreakLoop3 = 0
	Return
!^c::
IfWinActive %instance3%
BreakLoop3 = 1
return

;mov54
!^s::
IfWinActive %instance4%
BreakLoop4 = 0
	Loop
	{
  	if (BreakLoop4 = 1)
  	   break
    if (BreakLoop4 = 0)
  	   Attack(%instance4%, 900)
	}
  BreakLoop4 = 0
	Return
!^d::
IfWinActive %instance4%
BreakLoop4 = 1
return
