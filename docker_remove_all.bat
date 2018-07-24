@echo off

net session >nul 2>&1
 if %errorLevel% == 0 (
          CHOICE /C YN /M "You're about to force delete all Docker images. Are you sure? "
          If ErrorLevel 1 Goto Yes
          If ErrorLevel 2 Goto No
 ) else (
          ECHO Error! Run me with admin rights.
          GOTO End
 )

:Yes
ECHO Deleting all docker images...
for /f delims^=^ eol^= %%i in ('docker images -a -q') do docker rmi -f %%i
ECHO Complete.
GOTO End

:No
ECHO Error! Exiting script.
GOTO End

:End
ECHO.
ECHO End of script.
pause > nul
