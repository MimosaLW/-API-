@echo off
chcp 65001 >nul 2>&1
setlocal enabledelayedexpansion

echo.
echo ==========================================
echo   Google AI Studio Clone - 启动脚本
echo ==========================================
echo.

cd /d "%~dp0"
echo 项目目录: %cd%
echo.

echo 第一步: 检查 Node.js...
call node --version
echo Node.js OK
echo.

echo 第二步: 检查 npm...
call npm --version
echo npm OK
echo.

echo 第三步: 安装依赖...
if not exist "node_modules" (
    echo 正在安装依赖，请稍候...
    call npm install
) else (
    echo 依赖已就绪
)
echo.

echo 第四步: 启动开发服务器...
echo.
echo 启动中...
start "npm dev server" npm run dev
echo.
echo ⏳ 等待服务器启动 (约10秒)...
echo.
echo ✅ 成功！
echo 🌐 浏览器地址: http://localhost:5173/
echo.
echo 正在打开浏览器...
start http://localhost:5173/
echo.
echo 💡 服务器运行中，按 Ctrl+C 可停止
echo 💡 如浏览器未打开，请手动访问: http://localhost:5173/
echo.
pause
