:: 정보보호학과 15학번
:: 91514634 고 준성

:: Live Response Script
:: Written by : Kogoon
:: Joongbu Univ. Assignment
:: 
:: help https://yong40.tistory.com/112
::
:: 2020.03.29 start
:: Assignment - 

:: KOREAN GARBLED -> ENCODING ANSI or Korean(EUC-kr)
:: Don'show each command - only result - @echo off
@ECHO OFF


:: TITLE
TITLE DIGITAL FORENSIC tool - Live Response - 91514634 고준성


:: START
:_START
SET /p EXCUTE_NAME=Enter your name :

:_CHECK_NAME
ECHO Your name is %EXCUTE_NAME%
SET /p YN=Correct? (y/n) :
:: /i 대소문자 구분 x
if /i "%YN%" == "y" GOTO _Main
if /i "%YN%" == "n" GOTO _START
GOTO _CHECK_NAME

:: Main Page
:_Main

::SET
SET LINE=========================================================
SET LOG=%EXCUTE_NAME%_log.txt
if EXIST %LOG%. DEL %LOG%

>> %LOG% ECHO.
>> %LOG% ECHO %LINE%
>> %LOG% ECHO ==    %EXCUTE_NAME%            
>> %LOG% ECHO ==    DATE : %DATE%         
>> %LOG% ECHO ==    TIME : %TIME%         
>> %LOG% ECHO %LINE%
>> %LOG% ECHO.

:_HOME
>> %LOG% ECHO.
ECHO ===============start Network Response==============
ECHO.
ECHO                디지털 포렌식  도구 개발
ECHO.
ECHO              ---------------------------
ECHO                1. Computer Current Time
ECHO                2. OS version 
ECHO                3. Computer IP Address
ECHO                4.
ECHO                5. 
ECHO                6. 
ECHO                7.
ECHO                8.
ECHO                9.
ECHO                10.
ECHO                11. Exit
ECHO.
ECHO ====================================================

SET /p number= Enter the number:
>> %LOG% ECHO.

:: switch
if "%number%" == "1" GOTO _DATE
if "%number%" == "2" GOTO _OS
if "%number%" == "3" GOTO _IPCONFIG
if "%number%" == "4" GOTO _ROUTE
if "%number%" == "5" GOTO _NBTSTAT
::if "%number%" == "6" GOTO
::if "%number%" == "7" GOTO
::if "%number%" == "8" GOTO
::if "%number%" == "9" GOTO
::if "%number%" == "10" GOTO
if "%number%" == "11" GOTO:EOF

:: DATE
:_DATE
CLS
>> %LOG% ECHO %LINE%
ECHO 시스템의 날짜와 시간을 저장중입니다.
>> %LOG% ECHO DATE : %DATE% 
>> %LOG% ECHO TIME : %TIME%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: NETSTAT
:_OS
CLS
>> %LOG% ECHO %LINE%
ECHO Saving.. OS information
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: IPCONFIG
:_IPCONFIG
CLS
>> %LOG% ECHO %LINE%
>> %LOG% IPCONFIG
ECHO Saving.. Current IP Address
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: ROUTE
:_ROUTE
CLS
>> %LOG% ECHO %LINE%
ECHO ROUTE
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: NBTSTAT
:_NBTSTAT
CLS
>> %LOG% ECHO %LINE%
ECHO NBTSTAT
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_1
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_2
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_3
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_4
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_5
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

::
:_6
CLS
>> %LOG% ECHO %LINE%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME