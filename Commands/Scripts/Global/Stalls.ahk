indoorNUM = 64
outdoor9NUM = 30
outdoor11NUM = 34
outdoor13NUM = 17
custom13NUM = 24

!^r:: ;HOTKEY
;small indoor stall
Chat("/rg define indoor-"indoorNUM)
Chat("//sel")
MakeSign("[arm-rent]","","indoor-"indoorNUM,"indoor")
Chat("/arm sethotel indoor-"indoorNUM " true")
Chat("/arm setregionkind indoor indoor-"indoorNUM)
indoorNUM++
Return
!^t:: ;HOTKEY
;small outdoor stall 9x9
Chat("//expand 10 up")
Chat("/rg define outdoor-sm-"outdoor9NUM)
Chat("//sel")
MakeSign("[arm-rent]","","outdoor-sm-"outdoor9NUM,"outdoorsm")
Chat("/arm sethotel outdoor-sm-"outdoor9NUM " true")
Chat("/arm setregionkind outdoorsmall outdoor-sm-"outdoor9NUM)
outdoor9NUM++
Return
!^y:: ;HOTKEY
;meduim outdoor stall 11x11
Chat("//expand 20 up")
Chat("/rg define outdoor-md-"outdoor11NUM)
Chat("//sel")
MakeSign("[arm-rent]","","outdoor-md-"outdoor11NUM,"outdoormd")
Chat("/arm sethotel outdoor-md-"outdoor11NUM " true")
Chat("/arm setregionkind outdoooormed outdoor-md-"outdoor11NUM)
outdoor11NUM++
Return
!^f:: ;HOTKEY
;large outdoor stall 13x13
Chat("//expand 25 up")
Chat("/rg define outdoor-lg-"outdoor13NUM)
Chat("//sel")
MakeSign("[arm-rent]","","outdoor-lg-"outdoor13NUM,"outdoorlg")
Chat("/arm sethotel outdoor-lg-"outdoor13NUM " true")
Chat("/arm setregionkind outdooorlg outdoor-lg-"outdoor13NUM)
outdoor13NUM++
Return
!^g:: ;HOTKEY
;Custom stall 13x13 no building
Chat("//expand 35 up")
Chat("//expand 2 down")
Chat("/rg define custom-13-"custom13NUM)
Chat("//sel")
MakeSign("[arm-rent]","","custom-13-"custom13NUM,"custom")
Chat("/arm setregionkind custom custom-13-"custom13NUM)
custom13NUM++
Return

Chat(message){
  sleep 150 ;waits for chat GUI to beready
  send {Bind}{t} ;opens chat GUI
  sleep 150 ;waits for chat GUI to beready
  Send {text}%message% ;sends message that was sent to funcion
  sleep 150 ;waits for minecraft to finish displaying the text
  Send {Enter} ;sends chat message
  Return
}
MakeSign(line1,line2,line3,line4){
  KeyWait, RButton, D
  sleep 1000
  type(line1)
  type(line2)
  type(line3)
  type(line4)
  click, 969, 673
}

type(text){
  sleep 100
  Send {text}%text%
  sleep 100
  Send {Enter}
}
