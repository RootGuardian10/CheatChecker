@echo off
:check
title CheatChecker Alpha
cls
color 1
echo "  ____  _                   _     ____  _                  _                ";
echo " / ___|| |__    ___   __ _ | |_  / ___|| |__    ___   ___ | | __ ___  _ __  ";
echo "| |    | '_ \  / _ \ / _` || __|| |    | '_ \  / _ \ / __|| |/ // _ \| '__| ";
echo "| |___ | | | ||  __/| (_| || |_ | |___ | | | ||  __/| (__ |   <|  __/| |    ";
echo " \____||_| |_| \___| \__,_| \__| \____||_| |_| \___| \___||_|\_\\___||_|    ";
echo "                                                                           
chcp 65001
echo Здраствуйте, %UserName%!
echo !!ВЫБИРАТЬ ЦИФРАМИ ОТ 1 ДО 4!!
echo 1. Открыть AppData
echo 2. Открыть Prefetch
echo 3. Открыть папку с версиями
echo 4. О программе
set /p input=
if /i %input%==1 goto appdata
if /i %input%==2 goto pref
if /i %input%==3 goto resource
if /i %input%==4 goto about
if /i not %input%== 1,2,3,4 goto err

:err
echo Вы ввели неправильную цифру
echo Нажмите на любую клавишу для возвращения в меню
pause
goto check

:appdata
start %appdata%
echo Открываю...
cls
echo Нажмите любую клавишу для возвращения в меню
pause
goto check

:pref
start C:/Windows/Prefetch
echo Открываю...
cls
echo Нажмите любую клавишу для возвращения в меню
pause
goto check

:resource
start C:/Users/%UserName%/AppData/Roaming/.minecraft/versions
echo Открываю...
cls
echo Нажмите любую клавишу для возвращения в меню
pause
goto check

:about
cls
echo Программа сделана : RootGuardian10
echo Сделано только для проверки
echo GitHub : https://github.com/RootGuardian10
echo Если хотите вернуться назад нажмите любую кнопку
pause
goto check