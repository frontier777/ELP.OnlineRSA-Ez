@ECHO OFF

SET IISExpressExe=C:\Program Files\IIS Express\iisexpress.exe
SET WebsitePath=C:\web3
SET WebsitePort=9090

START "." "%IISExpressExe%" "/path:%WebsitePath%" /port:%WebsitePort%

START "." "http://localhost:%WebsitePort%/"


REM PAUSE