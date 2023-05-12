@echo off
title O2's Multi-Level Chat System by O2systems
color 70
:Menu
cls
echo.
echo --------------------------------------------------------
echo O2 MLCS
echo --------------------------------------------------------
echo.
echo (1.) Change Color
echo (2.) Go to the Dashboard
echo (3.) Exit
echo.
set /p menuchoice="Option: "

IF %menuchoice%==1 goto Change
IF %menuchoice%==2 goto NE
IF %menuchoice%==3 exit

:Change
cls
echo.
echo 1. Hacker
echo 2. Dark Mode
echo 3. Ikea
echo.
set /p "a=Choice: "

if ["%a%"] == ["1"] color 0a

if ["%a%"] == ["2"] color 08

if ["%a%"] == ["3"] color 9e

if ["%a%"] == [" "] goto Change

Goto Menu


:NE
cls
set /p "name= Enter your name: "
::echo %name% Joined the chat (%time%::%date%) >> W:\hjk.cdat 
::Enters line of text in a file (hjk.cdat) notifys when a name logged in. If the two colons are removed the code is activated.
cls
:Home
cls
echo.
echo ==================================
echo Homepage
echo ==================================
echo.
echo 1. Go to Group Chats
echo 2. Change your Username
echo 3. Exit

set /p "a=Choice: "

if ["%a%"] == ["1"] goto GGC

if ["%a%"] == ["2"] goto NE

if ["%a%"] == ["3"] goto Menu

if ["%a%"] == [" "] goto Home

:GGC
cls
echo.
echo Availible Chat Channels
echo.
echo 1. General - Anything and Everything
echo 2. Memes - Memes
echo 3. News - Post updates about whats going on
echo 4. Go Back
echo.
set /p "a=Choice: "

if ["%a%"] == ["1"] goto Gen

if ["%a%"] == ["2"] goto Mem

if ["%a%"] == ["3"] goto News

if ["%a%"] == ["4"] goto Home

if ["%a%"] == [" "] goto GGC

:Gen
cls
:Gen2
title General
echo /r To refresh
echo /h To go to available chats.
type W:\General.cdat
timeout /t 2 >nul
echo Updating Chat...
set /p "message=>>"

IF %message%==/r goto Gen
IF %message%== goto Gen
IF %message%==/h goto GGC

timeout /t 2 >nul
echo Updating Chat...
echo %name%:%message%>>W:\General.cdat
echo ----------->>W:\General.cdat
cls
goto Gen

:Mem
cls
:Mem2
title Memes
echo /r To refresh
echo /h To go to available chats.
type W:\Memes.cdat
timeout /t 2 >nul
echo Updating Chat...
set /p "message=>>"

IF %message%==/r goto Mem
IF %message%== goto Mem
IF %message%==/h goto GGC

timeout /t 2 >nul
echo Updating Chat...
echo %name%:%message%>>W:\Memes.cdat
echo ----------->>W:\Memes.cdat
cls
goto Mem

:News
cls
:News
title News
echo /r To refresh
echo /h To go to available chats.
type W:\News.cdat
timeout /t 2 >nul
echo Updating Chat...
set /p "message=>>"

IF %message%==/r goto News
IF %message%== goto News
IF %message%==/h goto GGC

timeout /t 2 >nul
echo Updating Chat...
echo %name%:%message%>>W:\News.cdat
echo ----------->>W:\News.cdat
cls
goto News


:: Credit to O2systems @ https://github.com/O2SYSTEMS
:: Modding permitted as long as boot title states made by O2systems and this line of text and the one above it does not be edited or removed