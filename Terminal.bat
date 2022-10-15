@echo off
set name=the terminal v0.0.1
prompt =$G
echo Welcome to %name%.
title %name%
:start
echo Current date is %date%
echo What would you like to do?
set /p select=""
if %select% == ? goto list
if %select% == clear goto clear
if %select% == return goto cmd
if %select% == credits goto credits
if %select% == die goto die
if %select% == test goto test

:list 
echo Current options:
echo.
echo ? - show current options
echo clear - clear the terminal
echo return - Return to the regular cmd
echo credits - show the credits
echo die - kill the console
echo test - Test if your antivirus flags %name%
goto start



:clear
cls
echo Success in clearning..
goto start

:cmd
start cmd
exit

:credits
cls
echo This was made by Incy#3764
echo if you would like to contribute or just make a suggestion, contact me!
goto start
:die
exit
:test
mkdir Temp
echo %date% > temp.txt
echo pong.
echo Success
del /q Temp
goto start
