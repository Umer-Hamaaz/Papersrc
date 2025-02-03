@echo off
REM Build the GrainOverlay executable with embedded icon
echo Compiling GrainOverlay...

REM Check if icon file exists
if not exist "icon.ico" (
    echo Error: icon.ico not found in current directory
    pause
    exit /b 1
)

REM Update the path below to match your .NET Framework directory
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe" ^
/target:winexe ^
/out:Papersrc.exe ^
/win32icon:icon.ico ^
/res:icon.ico,GrainOverlay.icon.ico ^
Program.cs

IF %ERRORLEVEL% NEQ 0 (
    echo Compilation failed.
    pause
    exit /b %ERRORLEVEL%
) ELSE (
    echo Compilation succeeded. The executable "Papersrc.exe" has been created.
)

pause