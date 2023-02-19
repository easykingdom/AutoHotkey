#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetTitleMatchMode, 2 ; Set the matching mode to match any part of the window title

WinWait, Bio-Formats Import Options ; Wait for the pop-up window to appear
ControlClick, Button17, Bio-Formats Import Options ; Click on the 'Yes' button in the pop-up window
