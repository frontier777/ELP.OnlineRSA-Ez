@ECHO OFF

SETLOCAL

SET Success=0
SET ExitCode=1

SET searchreplaceexe=E:\My Projects\Frontier Search and Replace\Solution\Frontier.SearchReplace\bin\Frontier.SearchReplace.exe

IF NOT EXIST "%searchreplaceexe%" CALL :AppNotFoundError "Frontier Search Replace"

SET file1=%~1%
SET file2=%~2%

REM PUSHD ..\rsa
CD ..\rsa
"%searchreplaceexe%" "..\__build\Updates-01.srconfig" *.html /Recurse
REM /Backup
REM /First
REM /Verbose
REM POPD
CD ..
"%searchreplaceexe%" "__build\Updates-02-Root.srconfig" *.html /Recurse


REM Sync abbreviation pages
PUSHD RSA-Online-Training
COPY "RSA-Online-ACT-Australian-Capital-Territory-RSA-Certificate.html" "RSA-Online-ACT.html"
COPY "RSA-Online-NSW-New-South-Wales-RSA-Certificate.html" "RSA-Online-NSW.html"
COPY "RSA-Online-NT-Northern-Territory-RSA-Certificate.html" "RSA-Online-NT.html"
COPY "RSA-Online-QLD-Queensland-RSA-Certificate.html" "RSA-Online-QLD.html"
COPY "RSA-Online-SA-South-Australia-RSA-Certificate.html" "RSA-Online-SA.html"
COPY "RSA-Online-TAS-Tasmania-RSA-Certificate.html" "RSA-Online-TAS.html"
COPY "RSA-Online-VIC-Victoria-RSA-Certificate.html" "RSA-Online-Vic.html"
COPY "RSA-Online-WA-Western-Australia-RSA-Certificate.html" "RSA-Online-WA.html"
POPD

SET ExitCode=0
GOTO Success

:AppNotFoundError
ECHO.
ECHO Error: A required application was not found. (%*)
ECHO.
GOTO TheEnd

:Success
SET Success=1
REM ECHO Success!
PAUSE
GOTO TheEnd

:TheEnd
IF %Success% == 0 PAUSE
ENDLOCAL & EXIT /B %ExitCode%
