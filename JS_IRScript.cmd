:: IR (Incident Response) Script
:: Written by : Kogoon
:: For Univ. Assignment
::
:: 2020.03.24 start
::
::
::
::
::
::
::
::
::
::
:: Change (Update)
::
::
::
::
::
:: Don'show each command - @echo off
@ECHO OFF
rem Color 0A
title K I R

::
::
SET LOG=%time:~0,2%%time:~3,2%%time:~6,2%log.txt

SET /p MYNAME= Enter your name:
ECHO %MYNAME%

:: Start Log File
ECHO KORKIR is running...
>> %LOG% ECHO               Kogoon Incident Response
>> %LOG% ECHO.
>> %LOG% ECHO      Destination :    %LOG%
>> %LOG% ECHO             Name :    %MYNAME%
>> %LOG% ECHO    Computer Name :    %HOST%
>> %LOG% ECHO               OS :    %VERSION%
>> %LOG% ECHO.
>> %LOG% ECHO   START -- Date: %DATE% / Time: %TIME%
>> %LOG% ECHO.
CALL lines.bat ENDLINE
ECHO %COMPUTERNAME%
CALL lines.bat ENDLINE
>> %LOG% ECHO.
>> %LOG% ECHO   END -- Date: %DATE% / Time: %TIME%
