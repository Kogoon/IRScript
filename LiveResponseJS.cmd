:: 정보보호학과 15학번
:: 91514634 고 준성

:: Live Response Script
:: Written by : Kogoon
:: Joongbu Univ. Assignment
:: 
:: Help https://yong40.tistory.com/112
:: Git https://github.com/Kogoon/forensic-lecture.git
::
:: 2020.03.29 start
:: 2020.04.02 end

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
ECHO       설정하신 이름이 로그 파일 이름으로 저장됩니다.
ECHO.
ECHO                디지털 포렌식  도구 개발
ECHO.
ECHO              ---------------------------
ECHO                1. Computer Current Time
ECHO                2. OS version 
ECHO                3. Computer IP Address
ECHO                4. Network Connect list
ECHO                5. Process list
ECHO                6. Loggedon User
ECHO                7. Shared files
ECHO                8. Open port
ECHO                9. Service list
ECHO                10. Scheduled tasks
ECHO                11. Exit
ECHO.
ECHO ====================================================

SET /p number= Enter the number:
>> %LOG% ECHO.

:: switch
if "%number%" == "1" GOTO _DATE
if "%number%" == "2" GOTO _OS
if "%number%" == "3" GOTO _IPCONFIG
if "%number%" == "4" GOTO _NETSTAT
if "%number%" == "5" GOTO _PROCESS
if "%number%" == "6" GOTO _LOGONUSER
if "%number%" == "7" GOTO _SHAREDFILE
if "%number%" == "8" GOTO _PORT
if "%number%" == "9" GOTO _SERVICE
if "%number%" == "10" GOTO _SCHEDULER
if "%number%" == "11" GOTO:EOF

:: DATE
:_DATE
CLS
>> %LOG% ECHO %LINE%
ECHO TIME : %TIME%
ECHO Saving.. System's Date and Time
>> %LOG% ECHO DATE : %DATE% 
>> %LOG% ECHO TIME : %TIME%
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: NETSTAT
:_OS
CLS
>> %LOG% ECHO %LINE%
>> %LOG% SYSTEMINFO
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

:: NETSTAT
:_NETSTAT
CLS
>> %LOG% ECHO %LINE%
netstat -nao >> %LOG%
ECHO Saving.. NETSTAT
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: PROCESS
:_PROCESS
CLS
>> %LOG% ECHO %LINE%
pslist.exe >> %LOG%
ECHO Saving.. PROCESS
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: LOGGEDON USER
:_LOGONUSER
CLS
>> %LOG% ECHO %LINE%
net session >> %LOG%
ECHO Saving.. LOGONUSER
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: SHARED FILE
:_SHAREDFILE
CLS
>> %LOG% ECHO %LINE%
net use >> %LOG%
ECHO Saving.. SHAREDFILE
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: PORT
:_PORT
CLS
>> %LOG% ECHO %LINE%
netstat -b >> %LOG%
ECHO Saving.. PORT
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: SERVICE LIST
:_SERVICE
CLS
>> %LOG% ECHO %LINE%
PsService.exe >> %LOG%
ECHO Saving.. SERVICE
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME

:: CHECK SCHEDULER TASKS
:_SCHEDULER
CLS
>> %LOG% ECHO %LINE%
schtasks >> %LOG%
ECHO Saving.. CHECK SCHEDULER TASKS
>> %LOG% ECHO %LINE%
PAUSE
GOTO _HOME
