indoorNUM = 1
outdoor9NUM = 1
outdoor11NUM = 1
outdoor13NUM = 1
custom13NUM = 1

^r:: ;HOTKEY
;small indoor stall
Chat("/rg define indoor-"indoorNUM)
Chat("/as add rent indoor-"outdoor9NUM)
Chat("/as groupadd indoor indoor-"outdoor9NUM)
indoorNUM++
Return
^t:: ;HOTKEY
;small outdoor stall 9x9
Chat("//expand 30 up")
Chat("/rg define outdoor9-"outdoor9NUM)
Chat("/as add rent outdoor9-"outdoor9NUM)
Chat("/as groupadd outdoor9 outdoor9-"outdoor9NUM)
outdoor9NUM++
Return
^y:: ;HOTKEY
;meduim outdoor stall 11x11
Chat("//expand 30 up")
Chat("/rg define outdoor11-"outdoor11NUM)
Chat("/as add rent outdoor11-"outdoor11NUM)
Chat("/as groupadd outdoor11 outdoor11-"outdoor11NUM)
outdoor11NUM++
Return
^f:: ;HOTKEY
;large outdoor stall 13x13
Chat("//expand 30 up")
Chat("/rg define outdoor13-"outdoor13NUM)
Chat("/as add rent outdoor13-"outdoor13NUM)
Chat("/as groupadd outdoor13 outdoor13-"outdoor13NUM)
outdoor13NUM++
Return
^g:: ;HOTKEY
;Custom stall 13x13 no building
Chat("//expand 20 up")
Chat("//expand 2 down")
Chat("/rg define custom13-"custom13NUM)
Chat("/as add rent custom13-"custom13NUM)
Chat("/as groupadd custom13 custom13-"custom13NUM)
custom13NUM++
Return

Chat(message){
  send {Bind}{t} ;opens chat GUI
  sleep 150 ;waits for chat GUI to beready
  Send {text}%message% ;sends message that was sent to funcion
  sleep 150 ;waits for minecraft to finish displaying the text
  Send {Enter} ;sends chat message
  Return
}
