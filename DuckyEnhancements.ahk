;Some general script config
#NoEnv
SendMode Event
SetWorkingDir %A_ScriptDir% 
; #Warn  ; Enable warnings to assist with detecting common errors.

;-----------------runelite specific--------------------
#IfWinActive,  RuneLite
    ;only apply this logic if the capslog is turned on, so it is easy to switch 'profiles'
    #If GetKeyState("CapsLock", "T")
    {
        ;bind 1-4 to their associated f keys 
        1::Send {F1}
        2::Send {F2}
        3::Send {F3}
        4::Send {F4}
        ;reverse of the above when using the ctrl+ 1-4 variation
        ^1::Send, {1}
        ^2::Send, {2}
        ^3::Send, {3}
        ^4::Send, {4}
    }
#IfWinActive

;-----------------fortnite specific--------------------
#IfWinActive,  Fortnite
;bind escape to f12 and ctrl escape back to a regular escape
Esc::Send {F12}
^Esc::Send, {Esc}
#IfWinActive

;-----------------Mediakeys--------------------
;Also configrue some basic media keys for next previous and pause
^!Right::Send {Media_Next}
^!Left::Send {Media_Prev}
^!Space::Send {Media_Play_Pause}
^!Up::Send   {Volume_Up}
^!Down::Send   {Volume_Down}

;-------------------Some other general stuff---------------
;bind ctrl + escape to ~
^Esc::Send {Asc 126}

