#NoEnv
SendMode Input
 
_auto := true ;Toggle for the anti-recoil being on or off. default is on
 
~*LButton::autofire() ; When the LButton is pressed run the autofire() function
!LButton::_auto := ! _auto ;Shift + LButton used to toggle the anti-recoil on and off
F11::suspend ; F1 used to exit the ahk script file
 
; autofire() function, name is misleading could easily be antiRecoil()
autofire()
{
  global _auto 
  if _auto ; if _auto == true. i.e. is anti-recoil on? 
  { ; anti-recoil on?  If yes do this
    Loop ; Continuously loop until a 'break' command
    {
      if GetKeyState("LButton", "P") ; If LButton is pressed
      { ; LButton pressed? If yes do this
	Send !{F10}
	Send !{F10}
	mouseXY(0, 7)
	Send !{F12}
	Send !{F12}
	mouseXY(0, 1) ;Call the mouseXY() function which moves the mouse the specified distance. mouseXY( X, Y,)
	Sleep 13
	mouseXY(0, 1) ;Call the mouseXY() function which moves the mouse the specified distance. mouseXY( X, Y,)
	Sleep 13
	mouseXY(0, 1) ;Call the mouseXY() function which moves the mouse the specified distance. mouseXY( X, Y,)
	Sleep 13
	mouseXY(0, 1) ;Call the mouseXY() function which moves the mouse the specified distance. mouseXY( X, Y,)
	Sleep 13
	mouseXY(0, 1) ;Call the mouseXY() function which moves the mouse the specified distance. mouseXY( X, Y,)
	Sleep 13
	
	
	
        	
      }
      else ;LButton pressed? If no do this, i.e. exit the loop
        break ;will stop the loop
    } ;; loop
  } ;; if
} ;; autofire() ; anti-recoil on? If no do nothing
 
mouseXY(x,y)
{
  DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0) ; moves the mouse could easily be the built in autohotkey MouseMove, X, Y
}
