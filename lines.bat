:: For Division
:: .bat for make lines

if "%1"=="MAKELINE" goto MAKELINE
if "%1"=="ENDLINE" goto ENDLINE
if "%1"=="CLR" goto CLR

:MAKELINE
ECHO -------------------------------------------------------------------------------
GOTO:EOF

:ENDLINE
ECHO ===============================================================================
ECHO.
GOTO:EOF

:CLR
ECHO.
ECHO.
ECHO.
GOTO:EOF