@echo off
TITLE IDK
color 0f
mode con cols=80 lines=25
chcp 65001 >nul
cls
                        
:menu
CALL :LOGO
echo]
echo]
echo                          [92m^>[91m^ [1] [94m Change name to number
echo.
echo                          [92m^>[91m^ [2] [94m Name Upper (Only Folder)
echo.
echo                          [92m^>[91m^ [Exit] [94m Exit
echo]
set /p "choice=  [92m >             [94m Enter your choice (1, 2, or "exit") : ": 

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="exit" goto exit

echo Invalid choice. Please try again.
cls
goto menu

:option1
cls
CALL :LOGO
echo                         [92m^>[97m You want to change stupid name to number? [92m(yes/no)
echo.
set /p yesno=-----------------------------------------------^>
if /i "%yesno%"=="yes" goto number
cls
goto menu

:number
python Change.py
echo.
echo                         [92m^> [97m  IMPORTANT !
echo                         [92m^> [97m  Check! . Enter the correct directory location.
echo                         [92m^> [97m  If true it will work !.
echo.
pause
cls
goto menu

:option2
cls
CALL :LOGO
echo                         [92m^>[97m You want to Upper Name? [92m(yes/no)
set /p yesno=-----------------------------------------------^>
if /i "%yesno%"=="yes" goto upper
cls
goto menu

:upper
python Upper.py
echo.
echo                         [92m^> [97m  IMPORTANT !
echo                         [92m^> [97m  Check! . Enter the correct directory location.
echo                         [92m^> [97m  If true it will work !.
echo.
pause
cls
goto menu

:exit
exit

REM               LOGO
:LOGO

echo                            [94m██[94m██[94m██╗ [94m██[94m██[94m██╗ [94m██╗   [94m██╗[94m██╗  [94m██╗
echo                            [94m██╔══[94m██╗[94m██╔══[94m██╗[94m██║   [94m██║[94m██║  [94m██║
echo                            [94m██[94m██[94m██╔╝[94m██[94m██[94m██╔╝[94m██║   [94m██║[94m██[94m██[94m███║
echo                            [94m██╔══[94m██╗[94m██╔══[94m██╗[94m██║   [94m██║[94m██╔══[94m██║
echo                            [94m██[94m██[94m██╔╝[94m██║  [94m██║╚[94m██[94m██[94m██╔╝[94m██║  [94m██║
echo                            ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝
echo                            [92m^> [97m Create : Nan
echo]

goto :eof