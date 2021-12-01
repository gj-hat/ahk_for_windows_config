#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ctrl -> ^
; shift -> +
; alt -> !
; win -> #
; <^ -> Left ctrl
; >^ -> Right ctrl


; 打开应用程序





; key
; vim hjkl
CapsLock & h::Left
CapsLock & j::Down
CapsLock & k::Up
CapsLock & l::Right
; Home End
CapsLock & [::Home
CapsLock & ]::End

; caps & d -> Backspace
CapsLock & d::BackSpace


; altF4 -> CapsLock q
CapsLock & q::Send !{F4}


 ; F3 -> Ctrl+Win+Right
  F3::send,^#{Right}
  return

 ; F1 -> Ctrl+Win+Left
  F1::send,^#{Left}
  return



; caps & a -> goback
CapsLock & a::Send,!{Left}

; caps & s -> gonext
CapsLock & s::Send,!{Right}


; Alt + CapsLock = Up/On
!Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return


; double CapsLock -> Enter
CapsLock::
if caps_presses = 0 
{
    SetCapsLockState, AlwaysOff
    caps_presses += 1
    return
}else{
        Send, {Enter}
    caps_presses = 0
    return
}


; ; double CapsLock -> Enter
; CapsLock::
; if caps_presses = 0 
; {
;     SetCapsLockState, AlwaysOff
;     return
; }else{
;     SetTimer, KeyCpas, 200 
;     return
; }
; KeyCpas:
;     SetTimer, KeyCpas, off
;     Send, {Enter}
;     caps_presses = 0
;     return




;鼠标放在任务栏，滚动滚轮实现音量的加减
~lbutton & enter:: 
exitapp  
~WheelUp::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Up}  
Return  
~WheelDown::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Down}  
Return  
~MButton::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Mute}  
Return  

Existclass(class)  
{  
MouseGetPos,,,win  
WinGet,winid,id,%class%  
if win = %winid%  
Return,1  
Else  
Return,0  
}

 ;窗口透明化增加
#=::
    WinGet, ow, id, A
    WinTransplus(ow)
    return

 ;窗口透明化减弱
#-:: 
    WinGet, ow, id, A
    WinTransMinus(ow)
    return
WinTransplus(w){
 
    WinGet, transparent, Transparent, ahk_id %w%
    if transparent < 255
        transparent := transparent+10
    else
        transparent =
    if transparent
        WinSet, Transparent, %transparent%, ahk_id %w%
    else
        WinSet, Transparent, off, ahk_id %w%
    return
}
WinTransMinus(w){
 
    WinGet, transparent, Transparent, ahk_id %w%
    if transparent
        transparent := transparent-10
    else
        transparent := 240
    WinSet, Transparent, %transparent%, ahk_id %w%
    return
}

; 开启/关闭窗口置顶
^2:: 
    WinSet AlwaysOnTop,On,A
    return

; 关闭窗口置顶
^!2::
    WinSet AlwaysOnTop,Off,A
    return


