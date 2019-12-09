@ECHO OFF
MOVE C:\msdia80.dll "C:\Program Files\Common Files\microsoft shared\VC"
regsvr32 "C:\Program Files\Common Files\Microsoft Shared\VC\msdia80.dll"
