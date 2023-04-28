echo off
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x32" > NUL && set OS=32BIT || set OS=64BIT

if %OS%==32BIT (
copy ADDON\gsdll32_src.dll gsdll32.dll
ADDON\gs910w32.exe
)


if %OS%==64BIT (
copy ADDON\gsdll64_src.dll gsdll32.dll
ADDON\gs910w64.exe
)