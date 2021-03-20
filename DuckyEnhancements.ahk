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
        ;bind q-e to their associated f keys 
        q::Send {F1}
        w::Send {F2}
        e::Send {F3}
        r::Send {F4}
        ;reverse of the above when using the ctrl+ q-e variation
        ^q::Send, {q}
        ^w::Send, {w}
        ^e::Send, {e}
        ^r::Send, {r}
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

