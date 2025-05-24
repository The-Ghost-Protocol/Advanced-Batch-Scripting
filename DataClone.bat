::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC9cSUSlNGSpEvUs+ufv4OmIrnE5UfE0bIDL5piLLfUB40TqNaU512hmvMoYDThUcRyuIAosrA4=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal EnableDelayedExpansion

:: Script directory and target
set "scriptDir=%~dp0"
set "targetDir=%scriptDir%DATA"

:: Create target directory if it doesn't exist
if not exist "%targetDir%" mkdir "%targetDir%"

echo.
echo Starting Data Cloning...

:: Loop through each user's Documents folder
for /d %%U in ("C:\Users\*") do (
    if exist "%%U\Documents" (
        echo Copying from: %%U\Documents
        xcopy "%%U\Documents\*" "%targetDir%\%%~nxU\Documents\" /E /Y /I
        if errorlevel 1 (
            echo ERROR: Copy failed for %%U\Documents. Destination drive full.
            echo ABORT
            goto :cleanup
        )
    )
)

echo.
echo Data Cloning Complete.

:end
pause
