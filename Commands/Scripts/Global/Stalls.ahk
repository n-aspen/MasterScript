SetTitleMatchMode 3
StallType = 0
RegionNumber = 67 ;Stall number to start at

^t::
;small outdoor stall 9x9
Chat("//expand 40 up")
Chat("/rg define stall"RegionNumber)
KeyWait, RButton, D ;waits for right button press
sleep 500 ;sleeps for sign GUI to open
DefineStall("2000", RegionNumber)
RegionNumber++
Return
^g::
;meduim outdoor stall 11x11
Chat("//expand 40 up")
Chat("/rg define stall"RegionNumber)
KeyWait, RButton, D ;waits for right button press
sleep 500
DefineStall("3000", RegionNumber)
RegionNumber++
Return
^b::
;large outdoor stall 13x13
Chat("//expand 40 up")
Chat("/rg define stall"RegionNumber)
KeyWait, RButton, D ;waits for right button press
sleep 500 ;sleeps for sign GUI to open
DefineStall("4000", RegionNumber)
RegionNumber++
Return
^v::
;Custom stall 13x13 no building
Chat("//expand 20 up")
Chat("//expand 2 down")
Chat("/rg define stall"RegionNumber)
KeyWait, RButton, D ;waits for right button press
sleep 500 ;sleeps for sign GUI to open
DefineStall("5000", RegionNumber)
RegionNumber++
Return

Chat(message){
  send {Bind}{t} ;opens chat GUI
  sleep 150 ;waits for chat GUI to beready
  Send {text}%message% ;sends message that was sent to funcion
  sleep 150 ;waits for minecraft to finish displaying the text
  Send {Enter} ;sends chat message
  Return
}
DefineStall(Price, number){
  send, {text}[asrent] ;starts off by defining the sarea shop sign
  send, {Enter} ;moves to next line on sign
  send, {text}stall%number% ;sets stall number
  send, {Enter} ;moves to next line on sign
  send, {text}1 w ;defines rent time on stall
  send, {Enter} ;moves to next line on sign
  send, {text}%Price% ;sets price of stall
}
