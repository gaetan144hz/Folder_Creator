@echo off
setlocal enabledelayedexpansion


set PROJECT="GDU_Hitman"

:: #################### Launch State #####################
set "TOOLS=true"
set "PERFORCE=false"
set "GIT=false"
set "STEAM=false"
set "OCULUS=false"
set "UNREAL=false"
set "UNITY=false"
:: ######################################################


:: #################### Path of App #####################
set "STARTING_PAGE= https://start.me/p/aLz1Oj/page-d-accueil https://miro.com/app/board/uXjVNz6606I=/ https://g144hz.atlassian.net/jira/software/projects/HIT/boards/5 https://g144hz.atlassian.net/wiki/spaces/Hitman/overview"
set "PERFORCE_PATH=C:\Program Files\Perforce\p4v.exe"
set GIT_PATH="D:\Users\g.dumas\AppData\Local\gitkraken\gitkraken.exe"
set STEAM_PATH="D:\steam\steam.exe"
set OCULUS_PATH="D:\Oculus\Support\oculus-client\OculusClient.exe"
set UNREALPROJECT_PATH="D:\Unreal_Project\UE_5.3\GDU_Hitman\%PROJECT%.uproject"
set "UNITYPROJECT_PATH=C:\Program Files\Unity Hub\Unity Hub.exe"
:: ######################################################


:: ######################################################
echo Lancement des Applciations pour le Projet: %PROJECT%
:launch_tools
:launch_perforce
:launch_git
:launch_steam
:launch_oculus
:launch_unreal
:end
:: ######################################################

:launch_tools
if "%TOOLS%" == "true" (
    for %%s in (%STARTING_PAGE%) do (
        start %%s
    )
    echo -----------------------------------------
    echo Lancement des Outils de Gestion de Projet
    echo -----------------------------------------
) else (
    echo Launch Tools on %TOOLS%
)

:launch_perforce
if "%PERFORCE%" == "true" (
    start "Perforce" "%PERFORCE_PATH%"
    echo ------------------
    echo Lancement Perforce
    echo ------------------
) else (
    echo Launch Perforce on %PERFORCE%
)

:launch_git
if "%GIT%" == "true" (
    start "Git" "%GIT_PATH%"
    echo ----------------
    echo Lancement de Git
    echo ----------------
) else (
    echo Launch Git on %GIT%
)

:launch_steam
if "%STEAM%" == "true" (
    start "Steam" "%STEAM_PATH%"
    echo ------------------
    echo Lancement de Steam
    echo ------------------
) else (
    echo Launch Steam on %STEAM%
)

:launch_oculus
if "%OCULUS%" == "true" (
    start "Oculus" "%OCULUS_PATH%"
    echo -------------------
    echo Lancement de Oculus
    echo -------------------
) else (
    echo Launch Oculus on %OCULUS%
)

:launch_unreal
if "%UNREAL%" == "true" (
    start "%PROJECT%" "%UNREALPROJECT_PATH%"
    echo --------------------------------------
    echo Lancement du Projet Unreal "%PROJECT%"
    echo --------------------------------------
) else (
    echo Launch Unreal Project on %UNREAL%
)


:launch_unity
if "%UNITY%" == "true" (
    start "%PROJECT%" "%UNITYPROJECT_PATH%"
    echo --------------------------------------
    echo Lancement du Projet Unity "%PROJECT%"
    echo --------------------------------------
) else (
    echo Launch Unity Project on %UNITY%
)

:end
echo ----------------
echo FIN DU PROCESSUS
echo ----------------
endlocal
pause
exit /b