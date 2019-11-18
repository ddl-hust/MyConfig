;管理员运行
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%" 
   ExitApp
}

;无环境变量
#NoEnv

;高进程
Process Priority,,High

;一直关闭 Capslock
SetCapsLockState, AlwaysOff  

; CapsLock -> Esc
CapsLock::
Send {Esc}
return

; 指针移动
CapsLock & k::
Send {Up}
return
CapsLock & j::
Send {Down}
return
CapsLock & h::
Send {Left}
return
CapsLock & l::
    Send {right}
return

; 行首行尾
CapsLock & u::
Send {home}
return
CapsLock & i::
Send {end}
return
; ‘=’，‘{}’
CapsLock & o::
Send {=}
return
CapsLock & y::
Send { { }
return
;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Ctrl + Delete (Delete a Word) ;|
;                     CapsLock + m  |  退格                    ;|
;                     CapsLock + ,  |  删除                   ;|
;                     CapsLock + .  |  Ctrl + BackSpace              ;|
;-----------------------------------o---------------------------------o
CapsLock & ,:: Send, {Del}                                           ;|
CapsLock & .:: Send, ^{Del}                                          ;|
CapsLock & m:: Send, {BS}                                            ;|
CapsLock & n:: Send, ^{BS}