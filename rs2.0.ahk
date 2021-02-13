#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Event
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;only let the script be active if runelite is focused
#IfWinActive,  RuneLite
;bind 1, 2, 3, 4 to their associated f key
1::Send {F1}
2::Send {F2}
3::Send {F3}
4::Send {F4}
;bind the Ctrl versions back to their original numeric value (use the asci code of the numbers)
^1::Send, {Asc 49}
^2::Send, {Asc 50}
^3::Send, {Asc 51}
^4::Send, {Asc 52}
#IfWinActive
