@echo off
color 0a
mode 1000,1000
set horsename1= Golden Goose
set horsename2= Valiant Tree
set horsename3= Black Night 
set horsename4= Agile Beauty
:start
set /p money=<C:\Users\%username%\Desktop\HRS\money.txt
set horse1=@1@
set horse2=@2@
set horse3=@3@
set horse4=@4@
echo -----------------------------------------
echo - Welcome to the Horse Racing Simulator -
echo -----------------------------------------
echo - 1. Place a bet       - You have: $%money%  
echo - 2. Check Odds        ------------------
set /p choice=
if %choice%==1 goto placebet
if %choice%==2 goto check
exit
:placebet

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
pause
goto hrloop

