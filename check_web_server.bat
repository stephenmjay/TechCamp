@set @x=0 /*
:: ChkHTTP.cmd version 2


@echo off
setlocal
set "URL=http://www.google.com"
cscript /nologo /e:jscript "%~f0" %URL%

if %ErrorLevel% EQU 200 (
echo Web server ok
) else (
echo Web server error reported: %Errorlevel%
)
goto :EOF

JScript */
with(new ActiveXObject("Microsoft.XMLHTTP")){
open("GET",WSH.Arguments(0));send();
while(readyState!=4){WSH.Sleep(50)};
WSH.Quit(status)}
