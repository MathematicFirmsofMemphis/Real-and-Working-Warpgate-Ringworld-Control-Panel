@echo off
title Heat Mapping Radio Telescope System
color 0A

:: Initial setup
set region=0
set heat_map=0,0,0
set warpgate_active=0

:main_menu
cls
echo ==================================================
echo               Welcome to HMRTS
echo         Heat Mapping Radio Telescope System
echo ==================================================
echo 1. Login
echo 2. Exit
echo ==================================================
set /p choice="Please choose an option (1-2): "

if %choice%==1 goto login
if %choice%==2 goto exit
goto main_menu

:login
cls
set /p user="Enter Username: "
set /p pass="Enter Password: "
echo Authenticating...
:: Simulating a database check for username and password
if "%user%"=="admin" if "%pass%"=="password" (
    echo Authentication successful!
    pause
    goto telescope_menu
) else (
    echo Invalid username or password. Please try again.
    pause
    goto main_menu
)

:telescope_menu
cls
echo ==================================================
echo               Telescope Control Menu
echo ==================================================
echo 1. Select Region to Scan
echo 2. Generate Heat Map
echo 3. Display Heat Map
echo 4. Log Out
echo 5. Warpgate Ringworld
echo 6. List Operators of Robots
echo 7. List of Space Colonies Nearby
echo 8. Activate Warpgate
echo 9. Deactivate Warpgate
echo ==================================================
set /p tel_choice="Please choose an option (1-9): "

if %tel_choice%==1 goto select_region
if %tel_choice%==2 goto generate_heat_map
if %tel_choice%==3 goto display_heat_map
if %tel_choice%==4 goto main_menu
if %tel_choice%==5 goto Warpgate_ringworld
if %tel_choice%==6 goto list_operators
if %tel_choice%==7 goto list_space_colonies
if %tel_choice%==8 goto activate_warpgate
if %tel_choice%==9 goto deactivate_warpgate
goto telescope_menu

:select_region
cls
echo ==================================================
echo                 Select Region
echo ==================================================
echo 1. Region 1
echo 2. Region 2
echo 3. Region 3
echo ==================================================
set /p region="Please choose a region (1-3): "

if %region%==1 set region=1
if %region%==2 set region=2
if %region%==3 set region=3
echo You have selected Region %region%.
pause
goto telescope_menu

:generate_heat_map
cls
echo Generating heat map for Region %region%...
:: Simulate heat map generation with random RGB values
set /a r=%random% %% 256
set /a g=%random% %% 256
set /a b=%random% %% 256
set heat_map=%r%,%g%,%b%
echo Heat map generated.
pause
goto telescope_menu

:display_heat_map
cls
echo ==================================================
echo                Heat Map Display
echo ==================================================
echo Region: %region%
echo Heat Map RGB: %heat_map%
pause
goto telescope_menu

:Warpgate_ringworld
cls
echo Ringworld warpgate from Telescope Control Panel...
echo Warpgate uses magnetic based gravitational forces to operate.
pause
goto telescope_menu

:activate_warpgate
cls
if %warpgate_active%==1 (
    echo Warpgate is already activated.
) else (
    echo Activating warpgate...
    set warpgate_active=1
    echo Warpgate activated.
)
pause
goto telescope_menu

:deactivate_warpgate
cls
if %warpgate_active%==0 (
    echo Warpgate is already deactivated.
) else (
    echo Deactivating warpgate...
    set warpgate_active=0
    echo Warpgate deactivated.
)
pause
goto telescope_menu

:list_operators
cls
echo ==================================================
echo              List of Operators of Robots
echo ==================================================
echo Operator 1: John Doe
echo Operator 2: Jane Smith
echo Operator 3: Alex Johnson
echo Operator 4: Sarah Williams
pause
goto telescope_menu

:list_space_colonies
cls
echo ==================================================
echo           List of Space Colonies Nearby
echo ==================================================
echo Colony 1: United Nations Colony 1
echo Colony 2: United Nations Colony 2
echo Colony 3: United Nations Colony 3
echo Colony 4: United Nations Colony 4
pause
goto telescope_menu

:exit
cls
echo Thank you for using HMRTS. Goodbye!
pause
exit
