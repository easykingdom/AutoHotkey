#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; eject all external hard drives
#^e::
DriveGet, drives, List
Loop, %drives%
{
    DriveGet, type, Type, %A_Index%
    If (type = "Removable")
    {
        DriveGet, label, Label, %A_Index%
        DriveGet, file_system, FileSystem, %A_Index%
        If (file_system = "NTFS")
        {
            DriveEject, %A_Index%
            MsgBox You have ejected %label% (%A_Index%)
        }
    }
}
return
