:login
@echo off
set /P usuario=Informe o nome do seu usuário:
if %usuario%==admin (goto sistema) else (goto error)

:error
echo Usuario incorreto. Tente novamente
echo.
echo.
goto login

:sistema
echo.
echo ..::[Bem vindo ao Sistema!]::..
pause
exit