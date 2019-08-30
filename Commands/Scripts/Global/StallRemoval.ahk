stallNumber = 2
^r::
Loop
{
  if (stallNumber = 152)
  {
    break
  }
  chat("/as del stall"stallNumber)
  chat("/rg del stall"stallNumber)
  sleep 300
  stallNumber++
  }
return

Chat(message){
  send {Bind}{t} ;opens chat GUI
  sleep 150 ;waits for chat GUI to beready
  Send {text}%message% ;sends message that was sent to funcion
  sleep 150 ;waits for minecraft to finish displaying the text
  Send {Enter} ;sends chat message
  Return
}
