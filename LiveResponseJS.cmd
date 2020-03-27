:: Live Response Script
:: Written by : Kogoon
:: Joongbu Univ. Assignment
:: 
:: help https://yong40.tistory.com/112
::
:: 2020.03.29 start

:: KOREAN GARBLED -> ENCODING ANSI or Korean(EUC-kr)
:: Don'show each command - only result - @echo off
@ECHO OFF
:: TITLE
TITLE DIGITAL FORENSIC tool - Live Response
:: Main Page
:_HOME
ECHO ===============start Network Response==============
ECHO.
ECHO                µðÁöÅÐ Æ÷·»½Ä  µµ±¸ °³¹ß
ECHO.
ECHO                1. Computer Current Time
ECHO.
ECHO                2. Network List
ECHO.
ECHO                3. Network Address
ECHO.
ECHO                4. Network Route
ECHO.
ECHO                5. Netbios list
ECHO.
ECHO                6. Exit
ECHO ====================================================

SET /p number= Enter the number: 

:: switch
if "%number%" == "1" GOTO _DATE
if "%number%" == "2" GOTO _NETSTAT
if "%number%" == "3" GOTO _IPCONFIG
if "%number%" == "4" GOTO _ROUTE
if "%number%" == "5" GOTO _NBTSTAT
if "%number%" == "6" GOTO:EOF

:: DATE
:_DATE
CLS
ECHO %DATE% %TIME%
PAUSE
GOTO _HOME

:: NETSTAT
:_NETSTAT
CLS
ECHO NETSTAT
PAUSE
GOTO _HOME

:: IPCONFIG
:_IPCONFIG
CLS
ECHO IPCONFIG
PAUSE
GOTO _HOME

:: ROUTE
:_ROUTE
CLS
ECHO ROUTE
PAUSE
GOTO _HOME

:: NBTSTAT
:_NBTSTAT
CLS
ECHO NBTSTAT
PAUSE
GOTO _HOME
