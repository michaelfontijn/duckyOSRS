;AHK script to map certain keys to the f1, ... ,f4 keys without having to use fn. 
;And will map the original events of those keys to the fn combination with those keys instead
;The script will only be active while RuneLite is focused :D


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;only let the script be active if runelite is focused
#IfWinActive,  RuneLite
;bind q, w, e, r to their associated f key
q::Send {F1}
w::Send {F2}
e::Send {F3}
r::Send {F4}
;bind the Ctrl versions back to their original numeric value (use the asci code of the numbers)
^q::Send, {Asc 113}
^w::Send, {Asc 119}
^e::Send, {Asc 101}
^r::Send, {Asc 114}
#IfWinActive


;Also configrue some basic media keys for next previous and pause
^!Right::Send {Media_Next}
^!Left::Send {Media_Prev}
^!Space::Send {Media_Play_Pause}
