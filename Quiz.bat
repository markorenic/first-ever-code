X=MsgBox("Start",1+15,"Start game?")
@echo off
mode 1000
color b0
:menu
cls
echo Hey! Dobro dosao u Qviz_Amreika v.1.0.0.Beta!
echo 1) start!
echo 2) how to play
echo 3) Exit 
set /p number=

if %number% == 1 goto StartGame
if %number% == 2 goto help
if %number% == 3 goto exit

:startgame
cls
echo Type your name:
set /p name=
echo Hello %name%!
echo Do you want to start the quiz? (y/n)
set /p start=
if %start% == y goto level1
if %start% == n goto menu
goto startgame

:findhelp
cls
echo Press the number of the answer then hit enter.
echo go back? (y/n)
set /p mentgoto=
if %menugoto%== y goto menu
if %menugoto% ==n goto exit
goto help

:exit
goto exit

:level1
cls Ok ajmo!!! Krenimo!!!
echo Koji je Americki predsjednik ukinuo ropstvo?
echo 1) Bush
echo 2) Lincoln
echo 3) Obama
set /p answer1=
if %answer1% == 1 goto wrong1
if %answer1% == 1 goto correct1
if %answer1% == 1 goto wrong1

:correct1
echo Bravo da, to je toèno.Da nastavimo? (y/n)
set /p NL1=

if %NL1% == y goto level2
if %NL1% == n goto menu
goto correct1

:wrong1
Echo Uhuhu malo se nezna.Oæeš probat ponovo? (y/n)
set /p WA1=
if %WA1% == y goto level1
if %WA1% == n goto menu
goto menu

:level2
cls
echo Tko je na 100 dollara?
echo 1) Ben Franklin
echo 2) Tommy King
echo 3) Thomas Train
echo 4) Jeff Dunham
set /p aa=
if %aa% == 1 goto correct2
if %aa% == 2 goto wrong2
if %aa% == 3 goto wrong2
if %aa% == 4 goto wrong2
goto correct2
:correct2
cls 
echo Bravo da, to je toèno.Da nastavimo? (y/n)
set /p ka=
if %ka% == y goto level3
if %ka% == n goto menu

:wrong2
cls
echo Uhuhu malo se nezna.Oæeš probat ponovo? (y/n)
set/p retry=
if %retry% == y goto level2
if %retry% == n goto menu

:level3
cls
echo Koliko najviše može 1 Americki precjednik imat mandata u svom životu? 
echo 1) 1
echo 2) 2
echo 3) 4
echo 4) Bilo koliko.
set /p ni=
if %ni% == 1 goto wrong3
if %ni% == 2 goto correct3
if %ni% == 3 goto wrong3
if %ni% == 4 goto wrong3

:wrong3
cls
echo Uhuhu malo se nezna.Oæeš probat ponovo? (y/n)
set/p retry=
if %retry% == y goto level3
if %retry% == n goto menu

:correct3
cls 
echo Bravo da, to je toèno.Nastavimo? (y/n)
set /p ka=
if %ka% == y goto level4
if %ka% == n goto menu


:level4
cls
echo The Statue of liberty je bio poklon koga?
echo 1) Engleske
echo 2) Francuske
echo 3) Kanade
set /p ka=
if %ka% == 1) goto wrong4
if %ka% == 2) goto correct4
if %ka% == 3) goto wrong4
goto correct3

:correct4
echo Bravo da, to je toèno. Rjesio si prvu igru za nastavak pokreni igru 2!!
goto exit

:wrong4
cls
echo Uhuhu malo se nezna.Oæeš probat ponovo? (y/n)
set/p retry=
if %retry% == y goto level4
if %retry% == n goto exit

:exit
exit