SetTitleMatchMode 3
StallType = 0
RegionNumber = 68

+r::

Return
^r::
  Chat("//expand 20")
  Chat("/rg define stall"RegionNumber)
Return

^t::
Chat("//expand 40")
Chat("/rg define stall"RegionNumber)
StallType = 9x9
KeyWait, RButton, D
sleep 500
DefineStall("2000", RegionNumber)
RegionNumber++
Return
^g::
Chat("//expand 40")
Chat("/rg define stall"RegionNumber)
StallType = 11x11
KeyWait, RButton, D
sleep 500
DefineStall("3000", RegionNumber)
RegionNumber++
Return
^b::
Chat("//expand 40")
Chat("/rg define stall"RegionNumber)
StallType = 13x13
KeyWait, RButton, D
sleep 500
DefineStall("4000", RegionNumber)
RegionNumber++
Return
^v::
Chat("//expand 20")
Chat("/rg define stall"RegionNumber)
StallType = Custom
KeyWait, RButton, D
sleep 500
DefineStall("5000", RegionNumber)
RegionNumber++
Return

Chat(message){
  send {Bind}{t}
  sleep 150
  Send {text}%message%
  sleep 150
  Send {Enter}
  Return
}
DefineStall(Price, number){
  send, {text}[asrent]
  send, {Enter}
  send, {text}stall%number%
  send, {Enter}
  send, {text}1 w
  send, {Enter}
  send, {text}%Price%
}
