@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ========================================
echo   Google AI Studio Clone - 构建脚本
echo ========================================
echo.

REM 检查Node.js
node --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 未检测到Node.js，请先安装: https://nodejs.org/
    pause
    exit /b 1
)

REM 检查依赖
if not exist "node_modules" (
    echo 📦 正在安装依赖...
    call npm install
    if errorlevel 1 (
        echo ❌ 依赖安装失败！
        pause
        exit /b 1
    )
)

echo 🔨 正在构建生产版本...
call npm run build

if errorlevel 1 (
    echo.
    echo ❌ 构建失败！
    pause
    exit /b 1
)

echo.
echo ✅ 构建完成！
echo 📁 输出文件在 dist/ 目录中
echo.
pause
