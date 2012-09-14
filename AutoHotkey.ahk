; General
SetCapsLockState, AlwaysOff



; MacOs-ish bindings
F10::Volume_Mute
F11::Volume_Down
F12::Volume_Up
*~LWin:: Ctrl



; Functions
Emote(emote)
{
  Send {Enter}/emote{Enter}
  Exit
}



; The Secret World - emotes
*F1::
{
  Random, rand, 1, 5

  If ( rand = 1 )
  {
    Emote("applaud")
  }
  If ( rand = 2 )
  {
    Emote("cheer")
  }
  If ( rand = 3 )
  {
    Emote("snapsnaphoney")
  }
  If ( rand = 4 )
  {
    Emote("tapdance")
  }
  If ( rand = 5 )
  {
    Emote("score")
  }
}

; idle
*F2::
{
  Random, rand, 1, 11
  If ( rand = 1 )
  {
    Emote("handsonhips")
  }
  If ( rand = 2 )
  {
    Emote("rockonheels")
  }
  If ( rand = 3 )
  {
    Emote("scratchchin")
  }
  If ( rand = 4 )
  {
    Emote("scratchneck")
  }
  If ( rand = 5 )
  {
    Emote("crossedarms")
  }
  If ( rand = 6 )
  {
    Emote("rockonheels")
  }
  If ( rand = 7 )
  {
    Emote("stand")
  }
  If ( rand = 8 )
  {
    Emote("stretch")
  }
  If ( rand = 9 )
  {
    Emote("yawn")
  }
  If ( rand = 10 )
  {
    Emote("yawnbig")
  }
  If ( rand = 11 )
  {
    Emote("handsbehindback")
  }
}


; laugh
*F3::
{
  Random, rand, 1, 3
  If ( rand = 1 )
  {
    Emote("giggle")
  }
  If ( rand = 2 )
  {
    Emote("laugh")
  }
  If ( rand = 3 )
  {
    Emote("lol")
  }
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
      Send 5
      Exit
   }
   KeyWait, XButton2, T0.2    ; and released within 0.2 sec
   If ( ErrorLevel = 1 )      ; Timed out, double hold detected
   {
      Send 7
      Exit
   }
   KeyWait, XButton2, D T0.2   ; Wait for RB to be pressed a 3rd times
   If ( ErrorLevel = 1 )       ; Timed out, double click detected
   {
      Send 7
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
      Send 2
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
      Send 4
      Exit
   }
   KeyWait, XButton1, D T0.2   ; Wait for RB to be pressed a 3rd times
   If ( ErrorLevel = 1 )       ; Timed out, double click detected
   {
      Send 3
      Exit
   }
}


; emotes ref
;Send {Enter}/emote accuse{Enter}
;Send {Enter}/emote applaud{Enter}
;Send {Enter}/emote arrogant{Enter}
;Send {Enter}/emote blowkiss{Enter}
;Send {Enter}/emote born{Enter}
;Send {Enter}/emote bow{Enter}
;Send {Enter}/emote cartwheel{Enter}
;Send {Enter}/emote cheer{Enter}
;Send {Enter}/emote clap{Enter}
;Send {Enter}/emote clapexcited{Enter}
;Send {Enter}/emote cough{Enter}
;Send {Enter}/emote covereyes{Enter}
;Send {Enter}/emote crossedarms{Enter}
;Send {Enter}/emote cry{Enter}
;Send {Enter}/emote deaf{Enter}
;Send {Enter}/emote digmusic{Enter}
;Send {Enter}/emote drink{Enter}
;Send {Enter}/emote facepalm{Enter}
;Send {Enter}/emote follow{Enter}
;Send {Enter}/emote funkychicken{Enter}
;Send {Enter}/emote giggle{Enter}
;Send {Enter}/emote graffiti{Enter}
;Send {Enter}/emote handsbehindback{Enter}
;Send {Enter}/emote handsonhips{Enter}
;Send {Enter}/emote headstand{Enter}
;Send {Enter}/emote jazzhands{Enter}
;Send {Enter}/emote kickdirt{Enter}
;Send {Enter}/emote laugh{Enter}
;Send {Enter}/emote lol{Enter}
;Send {Enter}/emote lookleft{Enter}
;Send {Enter}/emote lookright{Enter}
;Send {Enter}/emote lookup{Enter}
;Send {Enter}/emote me message{Enter}
;Send {Enter}/emote meditate{Enter}
;Send {Enter}/emote moonwalk{Enter}
;Send {Enter}/emote phone{Enter}
;Send {Enter}/emote pickupitem{Enter}
;Send {Enter}/emote played{Enter}
;Send {Enter}/emote point{Enter}
;Send {Enter}/emote pray{Enter}
;Send {Enter}/emote preach{Enter}
;Send {Enter}/emote punkstance{Enter}
;Send {Enter}/emote pushups{Enter}
;Send {Enter}/emote rockonheels{Enter}
;Send {Enter}/emote rubface{Enter}
;Send {Enter}/emote scaredcower{Enter}
;Send {Enter}/emote scaredlook{Enter}
;Send {Enter}/emote score{Enter}
;Send {Enter}/emote scratchchin{Enter}
;Send {Enter}/emote scratchneck{Enter}
;Send {Enter}/emote showfist{Enter}
;Send {Enter}/emote shrug{Enter}
;Send {Enter}/emote shy{Enter}
;Send {Enter}/emote sit{Enter}
;Send {Enter}/emote sit_eat{Enter}
;Send {Enter}/emote sleep{Enter}
;Send {Enter}/emote slouch{Enter}
;Send {Enter}/emote snapsnaphoney{Enter}
;Send {Enter}/emote spit{Enter}
;Send {Enter}/emote stand{Enter}
;Send {Enter}/emote stretch{Enter}
;Send {Enter}/emote talktothehand{Enter}
;Send {Enter}/emote tapdance{Enter}
;Send {Enter}/emote thank{Enter}
;Send {Enter}/emote wavebig{Enter}
;Send {Enter}/emote wavesmall{Enter}
;Send {Enter}/emote wounded{Enter}
;Send {Enter}/emote yawn{Enter}
;Send {Enter}/emote yawnbig{Enter}

