@echo off
color 0a
mode 1000,1000
set /p money=<C:\Users\%username%\Desktop\HRS\money.txt
:start
set /p money=<C:\Users\%username%\Desktop\HRS\money.txt
set winhorse=0
set cos= _NIL_
set wol= _NIL_
set trail1len=0
set trail2len=0
set trail3len=0
set trail4len=0
set horsename1=Golden Goose
set horsename2=Valiant Tree
set horsename3=Black Night 
set horsename4=Agile Beauty
set /a odds1= %random% %%6+2
set /a odds2= %random% %%6+2
set /a odds3= %random% %%6+2
set /a odds4= %random% %%6+2
set horse1=@1@
set horse2=@2@
set horse3=@3@
set horse4=@4@
set playbethorse=0
set playbethorsename=0
set moneybet=0
set playbethorseodds=0
set moneybetamount=0
:menu
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² Welcome to the Horse Racing Simulator ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ²  You can come back to this screen at  ²
echo ²       any time by typing "back"       ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² 1. Place a bet         You have: $%money% 
echo ² 2. Check Odds                         ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
set /p choice=
if %choice%==1 goto placebet
if %choice%==2 goto checkodds
if %choice%==back goto start
exit







:checkodds
cls
echo ²²²²²²²²
echo ² Odds ²
echo ²²²²²²²²²²²²²²²²²²²²²²
echo ² %horsename1% - 1:%odds1% ² 
echo ² %horsename2% - 1:%odds2% ² 
echo ² %horsename3% - 1:%odds3% ² 
echo ² %horsename4% - 1:%odds4% ²
echo ²²²²²²²²²²²²²²²²²²²²²²
pause
goto menu
:placebet
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² Which horse would you like to place a bet on? ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² 1. %horsename1%                You have: $%money% 
echo ² 2. %horsename2%                               ²
echo ² 3. %horsename3%                               ²
echo ² 4. %horsename4%                               ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
set /p choicebet=
if %choicebet%==back goto start
if %choicebet%==1 set playbethorse=1
if %choicebet%==2 set playbethorse=2
if %choicebet%==3 set playbethorse=3
if %choicebet%==4 set playbethorse=4
if %choicebet%==1 set playbethorsename=%horsename1%
if %choicebet%==2 set playbethorsename=%horsename2%
if %choicebet%==3 set playbethorsename=%horsename3%
if %choicebet%==4 set playbethorsename=%horsename4%
if %choicebet%==1 set playbethorseodds=%odds1%
if %choicebet%==2 set playbethorseodds=%odds2%
if %choicebet%==3 set playbethorseodds=%odds3%
if %choicebet%==4 set playbethorseodds=%odds4%
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² How much would you like to bet on %playbethorsename%? ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² You have: $%money% 
echo ²²²²²²²²²²²²²²²²²²
set /p moneybet=$
if %moneybet%==back goto start
set /a moneybetamount=%money%-%moneybet%  
echo %moneybetamount% > C:\Users\%username%\Desktop\HRS\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\money.txt
set trail1=-
set trail2=-
set trail3=-
set trail4=-
:hrloop
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² ### Horse Racing ### ² You have: $%money% ² Bet: $%moneybet%
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² %horsename1% -#%trail1%%horse1%
echo ² %horsename2% -#%trail2%%horse2%
echo ² %horsename3% -#%trail3%%horse3%
echo ² %horsename4% -#%trail4%%horse4%
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo                                                                                                ² Finish Line ²
echo                                                                                                ²²²²²²²²²²²²²²²
set /a trail100=%random% %%7+1
if %trail100%==1 set trail10=-
if %trail100%==2 set trail10=--
if %trail100%==3 set trail10=---
if %trail100%==4 set trail10=----
if %trail100%==5 set trail10=-----
if %trail100%==6 set trail10=------
if %trail100%==7 set trail10=-------
if %trail100%==8 set trail10=--------
if %trail100%==9 set trail10=---------
if %trail100%==10 set trail10=----------
if %trail100%==11 set trail10=-----------
if %trail100%==12 set trail10=------------
if %trail100%==13 set trail10=-------------
if %trail100%==14 set trail10=--------------
if %trail100%==15 set trail10=---------------
if %trail100%==16 set trail10=----------------
set trail1=%trail1%%trail10%
set /a trail200=%random% %%7+1
if %trail200%==1 set trail20=-
if %trail200%==2 set trail20=--
if %trail200%==3 set trail20=---
if %trail200%==4 set trail20=----
if %trail200%==5 set trail20=-----
if %trail200%==6 set trail20=------
if %trail200%==7 set trail20=-------
if %trail200%==8 set trail20=--------
if %trail200%==9 set trail20=---------
if %trail200%==10 set trail20=----------
if %trail200%==11 set trail20=-----------
if %trail200%==12 set trail20=------------
if %trail200%==13 set trail20=-------------
if %trail200%==14 set trail20=--------------
if %trail200%==15 set trail20=---------------
if %trail200%==16 set trail20=----------------
set trail2=%trail2%%trail20%
set /a trail300=%random% %%7+1
if %trail300%==1 set trail30=-
if %trail300%==2 set trail30=--
if %trail300%==3 set trail30=---
if %trail300%==4 set trail30=----
if %trail300%==5 set trail30=-----
if %trail300%==6 set trail30=------
if %trail300%==7 set trail30=-------
if %trail300%==8 set trail30=--------
if %trail300%==9 set trail30=---------
if %trail300%==10 set trail30=---------
if %trail300%==11 set trail30=-----------
if %trail300%==12 set trail30=------------
if %trail300%==13 set trail30=-------------
if %trail300%==14 set trail30=--------------
if %trail300%==15 set trail30=---------------
if %trail300%==16 set trail30=----------------
set trail3=%trail3%%trail30%
set /a trail400=%random% %%7+1
if %trail400%==1 set trail40=-
if %trail400%==2 set trail40=--
if %trail400%==3 set trail40=---
if %trail400%==4 set trail40=----
if %trail400%==5 set trail40=-----
if %trail400%==6 set trail40=------
if %trail400%==7 set trail40=-------
if %trail400%==8 set trail40=--------
if %trail400%==9 set trail40=---------
if %trail400%==10 set trail40=----------
if %trail400%==11 set trail40=-----------
if %trail400%==12 set trail40=------------
if %trail400%==13 set trail40=-------------
if %trail400%==14 set trail40=--------------
if %trail400%==15 set trail40=---------------
if %trail400%==16 set trail40=----------------
set trail4=%trail4%%trail40%
if %trail1%==----------------------------------------------------------------------------------------------- goto winc
if %trail1%==------------------------------------------------------------------------------------------------ goto winc
if %trail1%==------------------------------------------------------------------------------------------------- goto winc
if %trail1%==-------------------------------------------------------------------------------------------------- goto winc
if %trail1%==--------------------------------------------------------------------------------------------------- goto winc
if %trail1%==---------------------------------------------------------------------------------------------------- goto winc
if %trail1%==----------------------------------------------------------------------------------------------------- goto winc


if %trail2%==----------------------------------------------------------------------------------------------- goto winc
if %trail2%==------------------------------------------------------------------------------------------------ goto winc
if %trail2%==------------------------------------------------------------------------------------------------- goto winc
if %trail2%==-------------------------------------------------------------------------------------------------- goto winc
if %trail2%==--------------------------------------------------------------------------------------------------- goto winc
if %trail2%==---------------------------------------------------------------------------------------------------- goto winc
if %trail2%==----------------------------------------------------------------------------------------------------- goto winc


if %trail3%==----------------------------------------------------------------------------------------------- goto winc
if %trail3%==------------------------------------------------------------------------------------------------ goto winc
if %trail3%==------------------------------------------------------------------------------------------------- goto winc
if %trail3%==-------------------------------------------------------------------------------------------------- goto winc
if %trail3%==--------------------------------------------------------------------------------------------------- goto winc
if %trail3%==---------------------------------------------------------------------------------------------------- goto winc
if %trail3%==----------------------------------------------------------------------------------------------------- goto winc


if %trail4%==----------------------------------------------------------------------------------------------- goto winc
if %trail4%==------------------------------------------------------------------------------------------------ goto winc
if %trail4%==------------------------------------------------------------------------------------------------- goto winc
if %trail4%==-------------------------------------------------------------------------------------------------- goto winc
if %trail4%==--------------------------------------------------------------------------------------------------- goto winc
if %trail4%==---------------------------------------------------------------------------------------------------- goto winc
if %trail4%==----------------------------------------------------------------------------------------------------- goto winc


pause
goto hrloop

:winc

if %trail1%==----------------------------------------------------------------------------------------------- set trail1len=93
if %trail1%==------------------------------------------------------------------------------------------------ set trail1len=94
if %trail1%==------------------------------------------------------------------------------------------------- set trail1len=95
if %trail1%==-------------------------------------------------------------------------------------------------- set trail1len=96
if %trail1%==--------------------------------------------------------------------------------------------------- set trail1len=97

if %trail2%==----------------------------------------------------------------------------------------------- set trail2len=93
if %trail2%==------------------------------------------------------------------------------------------------ set trail2len=94
if %trail2%==------------------------------------------------------------------------------------------------- set trail2len=95
if %trail2%==-------------------------------------------------------------------------------------------------- set trail2len=96
if %trail2%==--------------------------------------------------------------------------------------------------- set trail2len=97

if %trail3%==----------------------------------------------------------------------------------------------- set trail3len=93
if %trail3%==------------------------------------------------------------------------------------------------ set trail3len=94
if %trail3%==------------------------------------------------------------------------------------------------- set trail3len=95
if %trail3%==-------------------------------------------------------------------------------------------------- set trail3len=96
if %trail3%==--------------------------------------------------------------------------------------------------- set trail3len=97

if %trail4%==----------------------------------------------------------------------------------------------- set trail4len=93
if %trail4%==------------------------------------------------------------------------------------------------ set trail4len=94
if %trail4%==------------------------------------------------------------------------------------------------- set trail4len=95
if %trail4%==-------------------------------------------------------------------------------------------------- set trail4len=96
if %trail4%==--------------------------------------------------------------------------------------------------- set trail4len=97

pause
if  %trail1len% GTR 1 set winner=1
if  %trail2len% GTR 1 set winner=2
if  %trail3len% GTR 1 set winner=3
if  %trail4len% GTR 1 set winner=4
if %winner%==1 set winhorse=%horsename1%
if %winner%==2 set winhorse=%horsename2%
if %winner%==3 set winhorse=%horsename3%
if %winner%==4 set winhorse=%horsename4%
if %playbethorse%==%winner% set cos=Congradulations
if not %playbethorse%==%winner% set cos=Sorry
if %playbethorse%==%winner% set wol=won
if not %playbethorse%==%winner% set wol=lost
if %playbethorse%==%winner% goto settextmoneywon
if not %playbethorse%==%winner% goto winscreen

:settextmoneywon
set /a xamount=%moneybet%*%playbethorseodds%
if %wol%==won set /a newamount=%money%+%xamount%  
echo %newamount% > C:\Users\%username%\Desktop\HRS\money.txt
goto winscreen

:winscreen
cls
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² %winhorse% Has Won the Race ²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²² 
echo ² %cos%, your horse has %wol% the race.
echo ² What do you want to do now?
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ² 1. Back to Menu  ²      
echo ² 2. Exit          ²
echo ²²²²²²²²²²²²²²²²²²²²
set /p boe=
if %boe%==1 goto start
if %boe%==back goto start
if %boe%==2 goto end
exit
:end 
cls
echo Made and Coded by Hugo Lyons Keenan
pause
exit