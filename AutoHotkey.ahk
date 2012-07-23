; General
SetCapsLockState, alwaysoff



; MacOs-ish bindings
F10::Volume_Mute
F11::Volume_Down
F12::Volume_Up
*~LWin:: Ctrl



; The Secret World - emotes
*F1::
{
  Random, rand, 1, 5

  If ( rand = 1 )
  {
    Send {Enter}/emote applaud{Enter}
    Exit
  }
  If ( rand = 2 )
  {
    Send {Enter}/emote cheer{Enter}
    Exit
  }
  If ( rand = 3 )
  {
    Send {Enter}/emote snapsnaphoney{Enter}
    Exit
  }
  If ( rand = 4 )
  {
    Send {Enter}/emote tapdance{Enter}
    Exit
  }
  If ( rand = 5 )
  {
    Send {Enter}/emote score{Enter}
    Exit
  }
}
*F2::
{
  Send {Enter}/emote handsbehindback{Enter}
}



; The Secret World - mouse
*~XButton2::
Loop
{
   KeyWait, XButton2, D       ; Wait for XButton2 to be pressed
   KeyWait, XButton2, T0.5    ; and released within 0.5 sec
   If ( ErrorLevel = 1 )      ; Timed out, hold detected
   {
      Send 6
      Exit
   }
   KeyWait, XButton2, D T0.2   ; Wait for RB to be pressed a 2nd time
   If ( ErrorLevel = 1 )       ; Timed out, single click detected
   {
      Send 4
      Exit
   }
   KeyWait, XButton2, T0.2    ; and released within 0.2 sec
   If ( ErrorLevel = 1 )      ; Timed out, double hold detected
   {
      Continue
   }
   KeyWait, XButton2, D T0.2   ; Wait for RB to be pressed a 3rd times
   If ( ErrorLevel = 1 )       ; Timed out, double click detected
   {
      Send 5
      Exit
   }
}

*~XButton1::
Loop
{
   KeyWait, XButton1, D       ; Wait for XButton1 to be pressed
   KeyWait, XButton1, T0.4    ; and released within 0.5 sec
   If ( ErrorLevel = 1 )      ; Timed out, hold detected
   {
      Send 3
      Exit
   }
   KeyWait, XButton1, D T0.2   ; Wait for RB to be pressed a 2nd time
   If ( ErrorLevel = 1 )       ; Timed out, single click detected
   {
      Send 1
      Exit
   }
   KeyWait, XButton1, T0.2    ; and released within 0.2 sec
   If ( ErrorLevel = 1 )      ; Timed out, double hold detected
   {
      Continue
   }
   KeyWait, XButton1, D T0.2   ; Wait for RB to be pressed a 3rd times
   If ( ErrorLevel = 1 )       ; Timed out, double click detected
   {
      Send 2
      Exit
   }
}