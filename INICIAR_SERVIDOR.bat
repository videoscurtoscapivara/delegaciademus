@echo off
title Servidor Mus City
color 0A
cls

echo ===================================================
echo   INICIANDO SERVIDOR MUS CITY (PRODUCAO)
echo ===================================================
echo.

REM Verifica se node_modules existe
if not exist "node_modules" (
    echo [ERRO] As dependencias nao estao instaladas.
    echo Execute 'npm install' primeiro ou use o script de instalacao.
    pause
    exit
)

echo [1/2] Construindo a aplicacao para otimizacao...
echo Isso pode levar alguns minutos na primeira vez.
echo.
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERRO] Falha na construcao do projeto.
    pause
    exit
)

echo.
echo [2/2] Iniciando o servidor...
echo O servidor estara disponivel em http://localhost:3000
echo.

start http://localhost:3000
call npm start

pause
