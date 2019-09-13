cls
@echo on
REM - arquivo original: https://github.com/lqgusso/arquivobat/blob/master/Script%20Manutenção.bat
REM - Autor lqgusso
REM - Adaptado por @profluizangelo
REM - GSO Gestão de Sistemas Operacionais
REM - 1º InfoWeb
REM - Curso de Técnico em Informática para Internet
REM - Escola Técnica Estadual Prof. Fausto Mazzola
REM - Centro Paula Souza - SP
REM - CABEC IDENTIFICAÇÃO
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
@echo Usuário logado: #username%

@echo MENU MANUTENÇÃO
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
@echo Opção inválida! Tente novamente!
@echo ---------------------------------------------------
pause
goto menu

echo # ----------------------------------------------------#
echo #           FIM DA EXECUÇÃO            #
echo # ----------------------------------------------------#
