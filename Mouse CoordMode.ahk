#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



CoordMode, Mouse, Relative ; Set the coordinate mode to the active window

x := 866 ; Set the X-coordinate of the button relative to the active window
y := 642 ; Set the Y-coordinate of the button relative to the active window

Loop, 2 { ; Loop 2 times
WinWait, Bio-Formats Import Options ; Wait for the pop-up window to appear
WinActivate, Bio-Formats Import Options ; Activate the pop-up window

Click, %x%, %y% ; Click on the button using the mouse cursor

WinWaitClose, Bio-Formats Import Options ; Wait for the pop-up window to close
}

