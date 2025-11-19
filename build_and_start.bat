@echo off
echo Building Mus City Server (Production)...
echo This may take a few minutes...
echo.
call npx next build
if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Build failed!
    pause
    exit /b %errorlevel%
)
echo.
echo Build successful! Starting Server...
echo.
call npx next start
pause
