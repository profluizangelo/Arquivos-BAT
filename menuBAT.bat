cls
@echo on
REM - arquivo original: https://github.com/lqgusso/arquivobat/blob/master/Script%20Manuten��o.bat
REM - Autor lqgusso
REM - Adaptado por @profluizangelo
REM - GSO Gest�o de Sistemas Operacionais
REM - 1� InfoWeb
REM - Curso de T�cnico em Inform�tica para Internet
REM - Escola T�cnica Estadual Prof. Fausto Mazzola
REM - Centro Paula Souza - SP
REM - CABEC IDENTIFICA��O
echo # ----------------------------------------------------#
echo #       Trabalhando com menus
echo # ----------------------------------------------------#
REM - UTILIZANDO COMANDOS NO 
REM - MS-DOS PARA EXECUTAR 
REM -          PROGRAMAS

:menu
cls
color 03
@date /t
@time /t

@echo Computador: %computername%
@echo Usu�rio logado: #username%

@echo MENU MANUTEN��O
@echo ============================
@echo 1. Esvaziar lixeira
@echo 2. Limpar tela
@echo 3. Scandisk no drive c:
@echo 4. Painel de Controle
@echo 5. Sair do Menu Tarefas
@echo Escolha pelo numero: 
@echo ============================

SET /p opcao= Escolha uma opcao

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5

:opcao1
cls
rd /S /Q c:\$Recycle.bin
@echo -----------------------------------------------------
@echo               lixeira limpa!
@echo -----------------------------------------------------
pause
goto menu

:opcao2
cls
@echo -----------------------------------------------------
@echo                tela limpa!
@echo -----------------------------------------------------
chkdsk c:
pause
goto menu


:opcao3
cls
@echo -----------------------------------------------------
@echo      Scandisk - Manut. preventiva
@echo -----------------------------------------------------
chkdsk c:
pause
goto menu


:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
@echo ---------------------------------------------------
@echo Op��o inv�lida! Tente novamente!
@echo ---------------------------------------------------
pause
goto menu

echo # ----------------------------------------------------#
echo #           FIM DA EXECU��O            #
echo # ----------------------------------------------------#
