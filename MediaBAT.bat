@echo off
set /p nota1=Informe a Nota1:
set /p nota2=Informe a Nota2:
set /a promedio=(%nota1%+%nota2%)/2
echo.
if %promedio% LEQ 10 (goto aprovado) else (goto reprovado)
:retorno
pause
exit
REM -
:reprovado
echo Reprovado
echo.
echo.
goto retorno
REM -
:aprovado
echo Aprovado
echo.
echo.
goto retorno
REM - término