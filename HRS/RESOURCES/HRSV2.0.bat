@echo off
color 0a
mode 1000,1000
title Horse Racing Simulator Version 2.0


:start
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p ownhorseleague=<C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorseleague.txt
set /p ownhorselevel=<C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorselevel.txt
set /p ownhorsename=<C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorsename.txt
set /p ownhorseodds=<C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorseodds.txt
set /p income=<C:\Users\%username%\Desktop\HRS\RESOURCES\income.txt
set /a incomeifwon=%income%*8
set /p hasboughthorse=<C:\Users\%username%\Desktop\HRS\RESOURCES\hasboughthorse.txt
if %ownhorselevel%==5 goto leagueadv
if %hasboughthorse%==1 set opt4= Race your Horse 
if %hasboughthorse%==0 set opt4= __NOT AVAILBLE__
if %hasboughthorse%==1 set ton=Train your Horse
if %hasboughthorse%==0 set ton=__NOT AVAILBLE__
if %hasboughthorse%==1 set opt6= Check your Horse's Stats 
if %hasboughthorse%==0 set opt6= __NOT AVAILBLE__         
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set winhorse=0
set cos=_NIL_
set wol=_NIL_
set winner12=0
set winner34=0
set winner56=0
set winner78=0
set winner1234=0
set winner5678=0
set winnerall=0
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
set horsename5=Poster Boy  
set horsename6=Autumn Storm
set horsename7=Floating Cat
set horsename8=Tambourine  
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
echo - 3. Store                              -
echo - 4.%opt4%                   -
echo - 5. Skip this Race                     -
echo - 6.%opt6%          -
echo -----------------------------------------
set /p choice=
if %choice%==1 goto placebet
if %choice%==2 goto checkodds
if %choice%==3 goto store
if %choice%==4 goto racefi
if %choice%==5 goto start
if %choice%==givemecash goto adder
if %choice%==resetshit goto reset
if %choice%==back goto start
exit
:racefi 
if %hasboughthorse%==1 goto racefigood
if %hasboughthorse%==0 goto menu
goto menu
:leagueadv
set ownhorselevel=0
echo %ownhorselevel% > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorselevel.txt
set /a ownhorseleague=%ownhorseleague%+1
echo %ownhorselevel% > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorselevel.txt
goto start
:racefigood
cls
echo ------------------------------
echo - Welcome to the Horse Races -
echo -----------------------------------------
echo - 1. Enter Your Horse In a Race         - 
echo - 2. Back to Menu                       -
echo -----------------------------------------
set /p racefichoice=
if %racefichoice%==1 goto enthrs
if %racefichoice%==2 goto menu
if %racefichoice%==back goto menu
exit
:reset
echo 0 > C:\Users\%username%\Desktop\HRS\RESOURCES\hasboughthorse.txt
echo 0 > C:\Users\%username%\Desktop\HRS\RESOURCES\income.txt
echo _NIL_ > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorsename.txt
echo 1 > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorseleague.txt
echo 0 > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorselevel.txt
goto start
:enthrs
cls
echo -------------------------------
echo - Press any key to start race -
pause
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
cls
echo - Horses are Racing - Progress #²              #
cls
echo - Horses are Racing - Progress #²²             #
cls
echo - Horses are Racing - Progress #²²²            #
cls
echo - Horses are Racing - Progress #²²²²           #
cls
echo - Horses are Racing - Progress #²²²²²          #
cls
echo - Horses are Racing - Progress #²²²²²²         #
cls
echo - Horses are Racing - Progress #²²²²²²²        #
cls
echo - Horses are Racing - Progress #²²²²²²²²       #
cls
echo - Horses are Racing - Progress #²²²²²²²²²      #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²     #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²    #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²   #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²  #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²² #
cls
echo - Horses are Racing - Progress #²²²²²²²²²²²²²²²#
echo.
echo - Horses Have Finished Racing - 
set /a enthrswinner=%random% %%8+1
if %enthrswinner%==1 set haswonownrace=1
if not %enthrswinner%==1 set haswonownrace=0
if %haswonownrace%==1 set cos1=Congradulations
if not %haswonownrace%==1 set cos1=Sorry
if %haswonownrace%==1 set wol1=won
if not %haswonownrace%==1 set wol1=lost
if %haswonownrace%==1 set wop1=winning 
if not %haswonownrace%==1 set wop1=participating
if %haswonownrace%==1 set /a money=%incomeifwon%+%money%
if not %haswonownrace%==1 set /a money=%income%+%money%
echo %enthrswinner% enthrswinner 
echo %haswonownrace% haswonownrace
pause
cls
echo --------------------------------- 
echo - %cos1%, your horse has %wol1% the race.
echo - You get $%income% for %wop1%
echo - What do you want to do now?
echo -----------------------------
echo - 1. Back to Menu  -      
echo - 2. Exit          -
echo --------------------
set /p boeenthrs=
if %boeenthrs%==1 goto start
if %boeenthrs%==back goto start
if %boeenthrs%==2 goto end
exit
:store
cls
echo ------------------------
echo - Welcome to the Store -
echo -----------------------------------------
echo - 1. Buy a Horse         You have: $%money% 
echo - 2. %ton%                    -
echo - 3. Back to Menu                       -
echo -----------------------------------------
set /p storechoice=
if %storechoice%==1 goto buyhorse
if %storechoice%==2 goto train
if %storechoice%==3 goto menu
if %storechoice%==back goto menu
exit
:canttrain
cls
echo ------------------------------
echo - You have insufficent funds -
echo ------------------------------
pause
:train
cls
echo ------------------
echo - Horse Training -
echo -----------------------------------------------
echo - Train for how long?        You have: $%money%
echo - 1. 1 Hour - $1000
echo - 2. 2 Hours - $1800
echo - 3. 3 Hours - $2500
echo - 4. Back to Menu 
set /p horsetrainop=
if %horsetrainop%==1 goto horsetrain1
if %horsetrainop%==2 goto horsetrain2
if %horsetrainop%==3 goto horsetrain3
if %horsetrainop%==4 goto start

:horsetrain1
if 1000 GTR %money% goto canttrain
set /a trainedamount= %money%-1000
echo %trainedamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /a ownhorselevel=%ownhorselevel%+1
cls 
echo -----------------
echo - Horse Trained -
echo -----------------
pause
goto train
:horsetrain2
if 1800 GTR %money% goto canttrain
set /a trainedamount= %money%-1800
echo %trainedamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /a ownhorselevel=%ownhorselevel%+2
cls 
echo -----------------
echo - Horse Trained -
echo -----------------
pause
goto train
:horsetrain3
if 2500 GTR %money% goto canttrain
set /a trainedamount= %money%-2500
echo %trainedamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /a ownhorselevel=%ownhorselevel%+3
cls 
echo -----------------
echo - Horse Trained -
echo -----------------
pause
goto train
:cantbuyhorse
cls
echo ----------------------------
echo - You already have a horse -
echo ----------------------------
goto store
:buyhorse
if %hasboughthorse%==1 goto cantbuyhorse
cls
echo --------------------------------------------
echo - Would you like to buy a horse for $10000 -
echo --------------------------------------------
echo - 1. Yes                You have: $%money% 
echo - 2. No                                 -
echo - 3. Back to Menu                       -
echo -----------------------------------------
set /p buyhorsechoice=
if %buyhorsechoice%==1 goto buyhorseyes
if %buyhorsechoice%==2 goto store
if %buyhorsechoice%==3 goto store
exit
:sorrycantbuy
cls
echo -------------------------------------
echo - Sorry, you have insufficent funds -
echo -------------------------------------
pause
goto store
:buyhorseyes
if 10000 GTR %money% goto sorrycantbuy
set hasboughthorse=1 
echo %hasboughthorse% > C:\Users\%username%\Desktop\HRS\RESOURCES\hasboughthorse.txt
set income=100
set /a incomeifwon=%income%*8
echo %income% > C:\Users\%username%\Desktop\HRS\RESOURCES\income.txt
set /a nbhamount=%money%-10000
echo %nbhamount% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
set /p money=<C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
cls
echo ----------------------------------------------
echo - What would you like to name your new horse -
echo ----------------------------------------------
set /p ownhorsename=
echo %ownhorsename% > C:\Users\%username%\Desktop\HRS\RESOURCES\ownhorsename.txt
cls
echo --------------------------------------
echo - %ownhorsename% successfully created
echo --------------------------------------
echo - You can put your horse in a race   -
echo - and if it wins you'll recieve $%incomeifwon% -
echo --------------------------------------
pause
goto start
:adder
set /p addwhat=Howmuch$
echo %addwhat% > C:\Users\%username%\Desktop\HRS\RESOURCES\money.txt
goto start
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
goto howmuchbet
:betzero
cls
echo --------------------
echo - You can't bet $0 -
goto howmuchbet
:bettoomuch
cls
echo ---------------------------
echo - You can't bet that much -
goto howmuchbet
:howmuchbet
echo ---------------------------------------------------
echo - How much would you like to bet on %playbethorsename%? -
echo ---------------------------------------------------
echo - You have: $%money% 
echo ------------------
set /p moneybet=$
if %moneybet%==back goto start
if %moneybet% GTR %money% goto bettoomuch
if %moneybet%==0 goto 
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

cls
echo ------------------------
echo - ### Horse Racing ### - You have: $%money% - Bet: $%moneybet% - %playbethorsename%
echo ---------------------------------------------------------------------------------------------------------------------
echo - %horsename1% -#%trail1%%horse1%
echo - %horsename2% -#%trail2%%horse2%
echo - %horsename3% -#%trail3%%horse3%
echo - %horsename4% -#%trail4%%horse4%
echo - %horsename5% -#%trail5%%horse5%
echo - %horsename6% -#%trail6%%horse6%
echo - %horsename7% -#%trail7%%horse7%
echo - %horsename8% -#%trail8%%horse8%
echo ---------------------------------------------------------------------------------------------------------------------
echo                                                                                                       - Finish Line -
echo                                                                                                       ---------------

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
if  %winner1234% GTR %winner5678% set winnerall=%winner1234%
if  %winner5678% GTR %winner1234% set winnerall=%winner5678%
if  %winnerall%==%trail1len% set winner=1
if  %winnerall%==%trail2len% set winner=2
if  %winnerall%==%trail3len% set winner=3
if  %winnerall%==%trail4len% set winner=4
if  %winnerall%==%trail5len% set winner=5
if  %winnerall%==%trail6len% set winner=6
if  %winnerall%==%trail7len% set winner=7
if  %winnerall%==%trail8len% set winner=8
if %winner%==1 set winhorse=%horsename1%
if %winner%==2 set winhorse=%horsename2%
if %winner%==3 set winhorse=%horsename3%
if %winner%==4 set winhorse=%horsename4%
if %winner%==5 set winhorse=%horsename5%
if %winner%==6 set winhorse=%horsename6%
if %winner%==7 set winhorse=%horsename7%
if %winner%==8 set winhorse=%horsename8%
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