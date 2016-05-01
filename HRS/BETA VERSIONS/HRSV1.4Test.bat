@echo off
color 0a
mode 1000,1000
title Horse Racing Simulator Version 1.4
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
:start
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set winhorse=0
set cos= _NIL_
set wol= _NIL_
set winner12=0
set winner34=0
set winner56=0
set winner78=0
set winner1234=0
set winner5678=0
set winner=0
set trail1len=0
set trail2len=0
set trail3len=0
set trail4len=0
set trail5len=0
set trail6len=0
set trail7len=0
set trail8len=0
set horsename1=Golden Goose
set horsename2=Valiant Tree
set horsename3=Black Night 
set horsename4=Agile Beauty
set horsename5=Golden Goose
set horsename6=Valiant Tree
set horsename7=Black Night 
set horsename8=Agile Beauty
set /a odds1= %random% %%6+2
set /a odds2= %random% %%6+2
set /a odds3= %random% %%6+2
set /a odds4= %random% %%6+2
set /a odds5= %random% %%6+2
set /a odds6= %random% %%6+2
set /a odds7= %random% %%6+2
set /a odds8= %random% %%6+2
set horse1=@1@
set horse2=@2@
set horse3=@3@
set horse4=@4@
set horse5=@5@
set horse6=@6@
set horse7=@7@
set horse8=@8@
set playbethorse=0
set playbethorsename=0
set moneybet=0
set playbethorseodds=0
set moneybetamount=0
:menu
cls
echo -----------------------------------------
echo - Welcome to the Horse Racing Simulator -
echo -----------------------------------------
echo -  You can come back to this screen at  -
echo -       any time by typing "back"       -
echo -----------------------------------------
echo - 1. Place a bet         You have: $%money% 
echo - 2. Check Odds                         -
echo -----------------------------------------
set /p choice=
if %choice%==1 goto placebet
if %choice%==2 goto checkodds
if %choice%==back goto start
exit







:checkodds
cls
echo --------
echo - Odds -
echo ----------------------
echo - %horsename1% - %odds1%:1 - 
echo - %horsename2% - %odds2%:1 - 
echo - %horsename3% - %odds3%:1 - 
echo - %horsename4% - %odds4%:1 -
echo - %horsename5% - %odds5%:1 - 
echo - %horsename6% - %odds6%:1 - 
echo - %horsename7% - %odds7%:1 - 
echo - %horsename8% - %odds8%:1 -
echo ----------------------
pause
goto menu
:placebet
cls
echo -------------------------------------------------
echo - Which horse would you like to place a bet on? -
echo -------------------------------------------------
echo - 1. %horsename1%                You have: $%money% 
echo - 2. %horsename2%                               -
echo - 3. %horsename3%                               -
echo - 4. %horsename4%                               -
echo - 5. %horsename5%                               -
echo - 6. %horsename6%                               -
echo - 7. %horsename7%                               -
echo - 8. %horsename8%                               -
echo -------------------------------------------------
set /p choicebet=
if %choicebet%==back goto start
if %choicebet%==1 set playbethorse=1
if %choicebet%==2 set playbethorse=2
if %choicebet%==3 set playbethorse=3
if %choicebet%==4 set playbethorse=4
if %choicebet%==5 set playbethorse=5
if %choicebet%==6 set playbethorse=6
if %choicebet%==7 set playbethorse=7
if %choicebet%==8 set playbethorse=8
if %choicebet%==1 set playbethorsename=%horsename1%
if %choicebet%==2 set playbethorsename=%horsename2%
if %choicebet%==3 set playbethorsename=%horsename3%
if %choicebet%==4 set playbethorsename=%horsename4%
if %choicebet%==5 set playbethorsename=%horsename5%
if %choicebet%==6 set playbethorsename=%horsename6%
if %choicebet%==7 set playbethorsename=%horsename7%
if %choicebet%==8 set playbethorsename=%horsename8%
if %choicebet%==1 set playbethorseodds=%odds1%
if %choicebet%==2 set playbethorseodds=%odds2%
if %choicebet%==3 set playbethorseodds=%odds3%
if %choicebet%==4 set playbethorseodds=%odds4%
if %choicebet%==5 set playbethorseodds=%odds5%
if %choicebet%==6 set playbethorseodds=%odds6%
if %choicebet%==7 set playbethorseodds=%odds7%
if %choicebet%==8 set playbethorseodds=%odds8%
cls
echo ---------------------------------------------------
echo - How much would you like to bet on %playbethorsename%? -
echo ---------------------------------------------------
echo - You have: $%money% 
echo ------------------
set /p moneybet=$
if %moneybet%==back goto start
set /a moneybetamount=%money%-%moneybet%  
echo %moneybetamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set trail1=-
set trail2=-
set trail3=-
set trail4=-
set trail5=-
set trail6=-
set trail7=-
set trail8=-
:hrloop
cls
echo ------------------------
echo - ### Horse Racing ### - You have: $%money% - Bet: $%moneybet% - %playbethorsename%
echo --------------------------------------------------------------------------------------------------------------
echo - %horsename1% -#%trail1%%horse1%
echo - %horsename2% -#%trail2%%horse2%
echo - %horsename3% -#%trail3%%horse3%
echo - %horsename4% -#%trail4%%horse4%
echo - %horsename5% -#%trail5%%horse5%
echo - %horsename6% -#%trail6%%horse6%
echo - %horsename7% -#%trail7%%horse7%
echo - %horsename8% -#%trail8%%horse8%
echo --------------------------------------------------------------------------------------------------------------
echo                                                                                                - Finish Line -
echo                                                                                                ---------------
set /a trail100=%random% %%7+1
if %odds1%==2 set /a trail100=%random% %%7+1
if %odds1%==3 set /a trail100=%random% %%7+1
if %odds1%==4 set /a trail100=%random% %%6+1
if %odds1%==5 set /a trail100=%random% %%6+1
if %odds1%==6 set /a trail100=%random% %%5+1
if %odds1%==7 set /a trail100=%random% %%5+1
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
if %odds2%==2 set /a trail200=%random% %%7+1
if %odds2%==3 set /a trail200=%random% %%7+1
if %odds2%==4 set /a trail200=%random% %%6+1
if %odds2%==5 set /a trail200=%random% %%6+1
if %odds2%==6 set /a trail200=%random% %%5+1
if %odds2%==7 set /a trail200=%random% %%5+1
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
if %odds3%==2 set /a trail300=%random% %%7+1
if %odds3%==3 set /a trail300=%random% %%7+1
if %odds3%==4 set /a trail300=%random% %%6+1
if %odds3%==5 set /a trail300=%random% %%6+1
if %odds3%==6 set /a trail300=%random% %%5+1
if %odds3%==7 set /a trail300=%random% %%5+1
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
if %odds4%==2 set /a trail400=%random% %%7+1
if %odds4%==3 set /a trail400=%random% %%7+1
if %odds4%==4 set /a trail400=%random% %%6+1
if %odds4%==5 set /a trail400=%random% %%6+1
if %odds4%==6 set /a trail400=%random% %%5+1
if %odds4%==7 set /a trail400=%random% %%5+1
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
set /a trail500=%random% %%7+1
if %odds5%==2 set /a trail500=%random% %%7+1
if %odds5%==3 set /a trail500=%random% %%7+1
if %odds5%==4 set /a trail500=%random% %%6+1
if %odds5%==5 set /a trail500=%random% %%6+1
if %odds5%==6 set /a trail500=%random% %%5+1
if %odds5%==7 set /a trail500=%random% %%5+1
if %trail500%==1 set trail50=-
if %trail500%==2 set trail50=--
if %trail500%==3 set trail50=---
if %trail500%==4 set trail50=----
if %trail500%==5 set trail50=-----
if %trail500%==6 set trail50=------
if %trail500%==7 set trail50=-------
if %trail500%==8 set trail50=--------
if %trail500%==9 set trail50=---------
if %trail500%==10 set trail50=----------
if %trail500%==11 set trail50=-----------
if %trail500%==12 set trail50=------------
if %trail500%==13 set trail50=-------------
if %trail500%==14 set trail50=--------------
if %trail500%==15 set trail50=---------------
if %trail500%==16 set trail50=----------------
set trail5=%trail5%%trail50%
set /a trail600=%random% %%7+1
if %odds6%==2 set /a trail600=%random% %%7+1
if %odds6%==3 set /a trail600=%random% %%7+1
if %odds6%==4 set /a trail600=%random% %%6+1
if %odds6%==5 set /a trail600=%random% %%6+1
if %odds6%==6 set /a trail600=%random% %%5+1
if %odds6%==7 set /a trail600=%random% %%5+1
if %trail600%==1 set trail60=-
if %trail600%==2 set trail60=--
if %trail600%==3 set trail60=---
if %trail600%==4 set trail60=----
if %trail600%==5 set trail60=-----
if %trail600%==6 set trail60=------
if %trail600%==7 set trail60=-------
if %trail600%==8 set trail60=--------
if %trail600%==9 set trail60=---------
if %trail600%==10 set trail60=----------
if %trail600%==11 set trail60=-----------
if %trail600%==12 set trail60=------------
if %trail600%==13 set trail60=-------------
if %trail600%==14 set trail60=--------------
if %trail600%==15 set trail60=---------------
if %trail600%==16 set trail60=----------------
set trail6=%trail6%%trail60%
set /a trail700=%random% %%7+1
if %odds7%==2 set /a trail700=%random% %%7+1
if %odds7%==3 set /a trail700=%random% %%7+1
if %odds7%==4 set /a trail700=%random% %%6+1
if %odds7%==5 set /a trail700=%random% %%6+1
if %odds7%==6 set /a trail700=%random% %%5+1
if %odds7%==7 set /a trail700=%random% %%5+1
if %trail700%==1 set trail70=-
if %trail700%==2 set trail70=--
if %trail700%==3 set trail70=---
if %trail700%==4 set trail70=----
if %trail700%==5 set trail70=-----
if %trail700%==6 set trail70=------
if %trail700%==7 set trail70=-------
if %trail700%==8 set trail70=--------
if %trail700%==9 set trail70=---------
if %trail700%==10 set trail70=----------
if %trail700%==11 set trail70=-----------
if %trail700%==12 set trail70=------------
if %trail700%==13 set trail70=-------------
if %trail700%==14 set trail70=--------------
if %trail700%==15 set trail70=---------------
if %trail700%==16 set trail70=----------------
set trail7=%trail7%%trail70%
set /a trail800=%random% %%8+1
if %odds8%==2 set /a trail800=%random% %%7+1
if %odds8%==3 set /a trail800=%random% %%7+1
if %odds8%==4 set /a trail800=%random% %%6+1
if %odds8%==5 set /a trail800=%random% %%6+1
if %odds8%==6 set /a trail800=%random% %%5+1
if %odds8%==7 set /a trail800=%random% %%5+1
if %trail800%==1 set trail80=-
if %trail800%==2 set trail80=--
if %trail800%==3 set trail80=---
if %trail800%==4 set trail80=----
if %trail800%==5 set trail80=-----
if %trail800%==6 set trail80=------
if %trail800%==7 set trail80=-------
if %trail800%==8 set trail80=--------
if %trail800%==9 set trail80=---------
if %trail800%==10 set trail80=----------
if %trail800%==11 set trail80=-----------
if %trail800%==12 set trail80=------------
if %trail800%==13 set trail80=-------------
if %trail800%==14 set trail80=--------------
if %trail800%==15 set trail80=---------------
if %trail800%==16 set trail80=----------------
set trail8=%trail8%%trail80%
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


if %trail5%==----------------------------------------------------------------------------------------------- goto winc
if %trail5%==------------------------------------------------------------------------------------------------ goto winc
if %trail5%==------------------------------------------------------------------------------------------------- goto winc
if %trail5%==-------------------------------------------------------------------------------------------------- goto winc
if %trail5%==--------------------------------------------------------------------------------------------------- goto winc
if %trail5%==---------------------------------------------------------------------------------------------------- goto winc
if %trail5%==----------------------------------------------------------------------------------------------------- goto winc


if %trail6%==----------------------------------------------------------------------------------------------- goto winc
if %trail6%==------------------------------------------------------------------------------------------------ goto winc
if %trail6%==------------------------------------------------------------------------------------------------- goto winc
if %trail6%==-------------------------------------------------------------------------------------------------- goto winc
if %trail6%==--------------------------------------------------------------------------------------------------- goto winc
if %trail6%==---------------------------------------------------------------------------------------------------- goto winc
if %trail6%==----------------------------------------------------------------------------------------------------- goto winc


if %trail7%==----------------------------------------------------------------------------------------------- goto winc
if %trail7%==------------------------------------------------------------------------------------------------ goto winc
if %trail7%==------------------------------------------------------------------------------------------------- goto winc
if %trail7%==-------------------------------------------------------------------------------------------------- goto winc
if %trail7%==--------------------------------------------------------------------------------------------------- goto winc
if %trail7%==---------------------------------------------------------------------------------------------------- goto winc
if %trail7%==----------------------------------------------------------------------------------------------------- goto winc


if %trail8%==----------------------------------------------------------------------------------------------- goto winc
if %trail8%==------------------------------------------------------------------------------------------------ goto winc
if %trail8%==------------------------------------------------------------------------------------------------- goto winc
if %trail8%==-------------------------------------------------------------------------------------------------- goto winc
if %trail8%==--------------------------------------------------------------------------------------------------- goto winc
if %trail8%==---------------------------------------------------------------------------------------------------- goto winc
if %trail8%==----------------------------------------------------------------------------------------------------- goto winc

pause
goto hrloop

:winc

if %trail1%==----------------------------------------------------------------------------------------------- set trail1len=93
if %trail1%==------------------------------------------------------------------------------------------------ set trail1len=94
if %trail1%==------------------------------------------------------------------------------------------------- set trail1len=95
if %trail1%==-------------------------------------------------------------------------------------------------- set trail1len=96
if %trail1%==--------------------------------------------------------------------------------------------------- set trail1len=97
if %trail1%==---------------------------------------------------------------------------------------------------- set trail1len=98
if %trail1%==----------------------------------------------------------------------------------------------------- set trail1len=99

if %trail2%==----------------------------------------------------------------------------------------------- set trail2len=93
if %trail2%==------------------------------------------------------------------------------------------------ set trail2len=94
if %trail2%==------------------------------------------------------------------------------------------------- set trail2len=95
if %trail2%==-------------------------------------------------------------------------------------------------- set trail2len=96
if %trail2%==--------------------------------------------------------------------------------------------------- set trail2len=97
if %trail2%==---------------------------------------------------------------------------------------------------- set trail2len=98
if %trail2%==----------------------------------------------------------------------------------------------------- set trail2len=99

if %trail3%==----------------------------------------------------------------------------------------------- set trail3len=93
if %trail3%==------------------------------------------------------------------------------------------------ set trail3len=94
if %trail3%==------------------------------------------------------------------------------------------------- set trail3len=95
if %trail3%==-------------------------------------------------------------------------------------------------- set trail3len=96
if %trail3%==--------------------------------------------------------------------------------------------------- set trail3len=97
if %trail3%==---------------------------------------------------------------------------------------------------- set trail3len=98
if %trail3%==----------------------------------------------------------------------------------------------------- set trail3len=99

if %trail4%==----------------------------------------------------------------------------------------------- set trail4len=93
if %trail4%==------------------------------------------------------------------------------------------------ set trail4len=94
if %trail4%==------------------------------------------------------------------------------------------------- set trail4len=95
if %trail4%==-------------------------------------------------------------------------------------------------- set trail4len=96
if %trail4%==--------------------------------------------------------------------------------------------------- set trail4len=97
if %trail4%==---------------------------------------------------------------------------------------------------- set trail4len=98
if %trail4%==----------------------------------------------------------------------------------------------------- set trail4len=99

if %trail5%==----------------------------------------------------------------------------------------------- set trail5len=93
if %trail5%==------------------------------------------------------------------------------------------------ set trail5len=94
if %trail5%==------------------------------------------------------------------------------------------------- set trail5len=95
if %trail5%==-------------------------------------------------------------------------------------------------- set trail5len=96
if %trail5%==--------------------------------------------------------------------------------------------------- set trail5len=97
if %trail5%==---------------------------------------------------------------------------------------------------- set trail5len=98
if %trail5%==----------------------------------------------------------------------------------------------------- set trail5len=99

if %trail6%==----------------------------------------------------------------------------------------------- set trail6len=93
if %trail6%==------------------------------------------------------------------------------------------------ set trail6len=94
if %trail6%==------------------------------------------------------------------------------------------------- set trail6len=95
if %trail6%==-------------------------------------------------------------------------------------------------- set trail6len=96
if %trail6%==--------------------------------------------------------------------------------------------------- set trail6len=97
if %trail6%==---------------------------------------------------------------------------------------------------- set trail6len=98
if %trail6%==----------------------------------------------------------------------------------------------------- set trail6len=99

if %trail7%==----------------------------------------------------------------------------------------------- set trail7len=93
if %trail7%==------------------------------------------------------------------------------------------------ set trail7len=94
if %trail7%==------------------------------------------------------------------------------------------------- set trail7len=95
if %trail7%==-------------------------------------------------------------------------------------------------- set trail7len=96
if %trail7%==--------------------------------------------------------------------------------------------------- set trail7len=97
if %trail7%==---------------------------------------------------------------------------------------------------- set trail7len=98
if %trail7%==----------------------------------------------------------------------------------------------------- set trail7len=99

if %trail8%==----------------------------------------------------------------------------------------------- set trail8len=93
if %trail8%==------------------------------------------------------------------------------------------------ set trail8len=94
if %trail8%==------------------------------------------------------------------------------------------------- set trail8len=95
if %trail8%==-------------------------------------------------------------------------------------------------- set trail8len=96
if %trail8%==--------------------------------------------------------------------------------------------------- set trail8len=97
if %trail8%==---------------------------------------------------------------------------------------------------- set trail8len=98
if %trail8%==----------------------------------------------------------------------------------------------------- set trail8len=99

pause
echo %trail1len% 
echo %trail2len% 
echo %trail3len% 
echo %trail4len% 
echo %trail5len% 
echo %trail6len% 
echo %trail7len% 
echo %trail8len% 
pause
if  %trail1len% GTR %trail2len% set winner12=%trail1len%
if  %trail2len% GTR %trail1len% set winner12=%trail2len%
if  %trail3len% GTR %trail4len% set winner34=%trail3len%
if  %trail4len% GTR %trail3len% set winner34=%trail4len%
if  %trail5len% GTR %trail6len% set winner56=%trail5len%
if  %trail6len% GTR %trail5len% set winner56=%trail6len%
if  %trail7len% GTR %trail8len% set winner78=%trail7len%
if  %trail8len% GTR %trail7len% set winner78=%trail8len%
if  %winner12% GTR %winner34% set winner1234=%winner12%
if  %winner34% GTR %winner12% set winner1234=%winner34%
if  %winner56% GTR %winner78% set winner5678=%winner56%
if  %winner78% GTR %winner56% set winner5678=%winner78%
if  %winner1234% GTR %winner5678% set winner=%winner1234%
if  %winner5678% GTR %winner1234% set winner=%winner5678%
echo %winner%
pause
exit
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
echo %newamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
goto winscreen

:winscreen
cls
echo ---------------------------------
echo - %winhorse% Has Won the Race -
echo --------------------------------- 
echo - %cos%, your horse has %wol% the race.
echo - What do you want to do now?
echo -----------------------------
echo - 1. Back to Menu  -      
echo - 2. Exit          -
echo --------------------
set /p boe=
if %boe%==1 goto start
if %boe%==back goto start
if %boe%==2 goto end
exit
:end 
cls
echo ---------------------------------------
echo - Made and Coded by Hugo Lyons Keenan -
echo ---------------------------------------
echo -   Feel free to email me about any   -
echo -       bugs or suggestions at:       -
echo -    LYO0007@balwynhs.vic.edu.au      -
echo ---------------------------------------
pause
exit