@echo off
color 0a
mode 1000,1000
set winhorse=0
set trail1len=0
set trail2len=0
set trail3len=0
set trail4len=0
set horsename1=Golden Goose
set horsename2=Valiant Tree
set horsename3=Black Night 
set horsename4=Agile Beauty
set odds1= 1:1
set odds2= 1:2
set odds3= 1:3
set odds4= 1:4
set /p money=<C:\Users\%username%\Desktop\HRS\money.txt
set horse1=@1@
set horse2=@2@
set horse3=@3@
set horse4=@4@
:start
cls
echo -----------------------------------------
echo - Welcome to the Horse Racing Simulator -
echo -----------------------------------------
echo - 1. Place a bet       - You have: $%money%  
echo - 2. Check Odds        ------------------
set /p choice=
if %choice%==1 goto placebet
if %choice%==2 goto checkodds
exit
:checkodds
cls
echo --------
echo - Odds -
echo -----------------------
echo - %horsename1% - %odds1% - 
echo - %horsename2% - %odds2% - 
echo - %horsename3% - %odds3% - 
echo - %horsename4% - %odds4% - 
echo -----------------------
pause
goto start
:placebet
cls
set trail1=-
set trail2=-
set trail3=-
set trail4=-
:hrloop
cls
echo ------------------------
echo - ### Horse Racing ### -
echo -----------------------------------------------------------------------------------------------------------------
echo - %horsename1% -#%trail1%%horse1%
echo - %horsename2% -#%trail2%%horse2%
echo - %horsename3% -#%trail3%%horse3%
echo - %horsename4% -#%trail4%%horse4%
echo -----------------------------------------------------------------------------------------------------------------
set /a trail100=%random% %%5+1
if %trail100%==1 set trail10=-
if %trail100%==2 set trail10=--
if %trail100%==3 set trail10=---
if %trail100%==4 set trail10=----
if %trail100%==5 set trail10=-----
set trail1=%trail1%%trail10%
set /a trail200=%random% %%5+1
if %trail200%==1 set trail20=-
if %trail200%==2 set trail20=--
if %trail200%==3 set trail20=---
if %trail200%==4 set trail20=----
if %trail200%==5 set trail20=-----
set trail2=%trail2%%trail20%
set /a trail300=%random% %%5+1
if %trail300%==1 set trail30=-
if %trail300%==2 set trail30=--
if %trail300%==3 set trail30=---
if %trail300%==4 set trail30=----
if %trail300%==5 set trail30=-----
set trail3=%trail3%%trail30%
set /a trail400=%random% %%5+1
if %trail400%==1 set trail40=-
if %trail400%==2 set trail40=--
if %trail400%==3 set trail40=---
if %trail400%==4 set trail40=----
if %trail400%==5 set trail40=-----
set trail4=%trail4%%trail40%
if %trail1%==------------------------------------------------------------------------------------------------ goto winc
if %trail1%==------------------------------------------------------------------------------------------------- goto winc
if %trail1%==-------------------------------------------------------------------------------------------------- goto winc
if %trail1%==--------------------------------------------------------------------------------------------------- goto winc
if %trail1%==---------------------------------------------------------------------------------------------------- goto winc

if %trail2%==------------------------------------------------------------------------------------------------ goto winc
if %trail2%==------------------------------------------------------------------------------------------------- goto winc
if %trail2%==-------------------------------------------------------------------------------------------------- goto winc
if %trail2%==--------------------------------------------------------------------------------------------------- goto winc
if %trail2%==---------------------------------------------------------------------------------------------------- goto winc

if %trail3%==------------------------------------------------------------------------------------------------ goto winc
if %trail3%==------------------------------------------------------------------------------------------------- goto winc
if %trail3%==-------------------------------------------------------------------------------------------------- goto winc
if %trail3%==--------------------------------------------------------------------------------------------------- goto winc
if %trail3%==---------------------------------------------------------------------------------------------------- goto winc

if %trail4%==------------------------------------------------------------------------------------------------ goto winc
if %trail4%==------------------------------------------------------------------------------------------------- goto winc
if %trail4%==-------------------------------------------------------------------------------------------------- goto winc
if %trail4%==--------------------------------------------------------------------------------------------------- goto winc
if %trail4%==---------------------------------------------------------------------------------------------------- goto winc
pause
goto hrloop

:winc

if %trail1%==------------------------------------------------------------------------------------------------ set trail1len=93
if %trail1%==------------------------------------------------------------------------------------------------- set trail1len=94
if %trail1%==-------------------------------------------------------------------------------------------------- set trail1len=95
if %trail1%==--------------------------------------------------------------------------------------------------- set trail1len=96
if %trail1%==---------------------------------------------------------------------------------------------------- set trail1len=97

if %trail2%==------------------------------------------------------------------------------------------------ set trail2len=93
if %trail2%==------------------------------------------------------------------------------------------------- set trail2len=94
if %trail2%==-------------------------------------------------------------------------------------------------- set trail2len=95
if %trail2%==--------------------------------------------------------------------------------------------------- set trail2len=96
if %trail2%==---------------------------------------------------------------------------------------------------- set trail2len=97

if %trail3%==------------------------------------------------------------------------------------------------ set trail3len=93
if %trail3%==------------------------------------------------------------------------------------------------- set trail3len=94
if %trail3%==-------------------------------------------------------------------------------------------------- set trail3len=95
if %trail3%==--------------------------------------------------------------------------------------------------- set trail3len=96
if %trail3%==---------------------------------------------------------------------------------------------------- set trail3len=97

if %trail4%==------------------------------------------------------------------------------------------------ set trail4len=93
if %trail4%==------------------------------------------------------------------------------------------------- set trail4len=94
if %trail4%==-------------------------------------------------------------------------------------------------- set trail4len=95
if %trail4%==--------------------------------------------------------------------------------------------------- set trail4len=96
if %trail4%==---------------------------------------------------------------------------------------------------- set trail4len=97
echo 1
if  %trail1len% GTR %trail2len% set trail2len=0
if  %trail1len% GTR %trail3len% set trail3len=0
if  %trail1len% GTR %trail4len% set trail4len=0
if  %trail2len% GTR %trail1len% set trail1len=0
if  %trail2len% GTR %trail3len% set trail3len=0
if  %trail2len% GTR %trail4len% set trail4len=0
if  %trail3len% GTR %trail1len% set trail1len=0
if  %trail3len% GTR %trail3len% set trail3len=0
if  %trail3len% GTR %trail4len% set trail4len=0
if  %trail4len% GTR %trail2len% set trail2len=0
if  %trail4len% GTR %trail3len% set trail3len=0
if  %trail4len% GTR %trail1len% set trail1len=0
echo 2
if  %trail1len% GTR 1 set winner=1
if  %trail2len% GTR 1 set winner=2
if  %trail3len% GTR 1 set winner=3
if  %trail4len% GTR 1 set winner=4
if %trail1len%==1 set winhorse= %horsename1%
if %trail2len%==2 set winhorse= %horsename2%
if %trail3len%==3 set winhorse= %horsename3%
if %trail4len%==4 set winhorse= %horsename4%
cls
echo -----------------------
echo %winner%
pause
goto start