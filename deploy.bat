@echo off
chcp 65001 >nul
echo ========================================
echo    TWY's Personal Website - Git 部署
echo ========================================
echo.

REM 初始化 Git 仓库
echo [1/6] 初始化 Git 仓库...
git init
if errorlevel 1 (
    echo ❌ Git 初始化失败！请确保已安装 Git
    pause
    exit /b 1
)
echo ✅ Git 仓库初始化完成

REM 配置 Git 用户信息
echo.
echo [2/6] 配置 Git 用户信息...
git config user.name "Your Name"
git config user.email "your.email@example.com"
echo ✅ 用户信息配置完成

REM 添加所有文件
echo.
echo [3/6] 添加所有文件到暂存区...
git add .
if errorlevel 1 (
    echo ❌ 添加文件失败！
    pause
    exit /b 1
)
echo ✅ 文件添加完成

REM 创建第一次提交
echo.
echo [4/6] 创建第一次提交...
git commit -m "Initial commit: TWY's Personal Website"
if errorlevel 1 (
    echo ❌ 提交失败！
    pause
    exit /b 1
)
echo ✅ 提交完成

REM 提示用户输入 GitHub 仓库地址
echo.
echo [5/6] 连接到 GitHub 仓库...
echo.
echo ⚠️  请先在 GitHub 创建仓库：
echo    1. 访问：https://github.com/new
echo    2. 仓库名：twy-channel
echo    3. 选择 Public（公开）
echo    4. 不要勾选任何初始化选项
echo    5. 点击 Create repository
echo.
set /p repo_url="请输入您的 GitHub 仓库地址（例如：https://github.com/username/twy-channel.git）: "

if "%repo_url%"=="" (
    echo ❌ 未输入仓库地址！
    pause
    exit /b 1
)

git remote add origin %repo_url%
echo ✅ 远程仓库连接完成

REM 推送到 GitHub
echo.
echo [6/6] 推送到 GitHub...
git branch -M main
git push -u origin main
if errorlevel 1 (
    echo ❌ 推送失败！可能需要输入 GitHub 账号密码或 Token
    echo.
    echo 💡 如果提示密码错误，您需要使用 Personal Access Token：
    echo    1. 访问：https://github.com/settings/tokens
    echo    2. 点击 Generate new token（classic）
    echo    3. 勾选 repo 权限
    echo    4. 生成后复制 Token，在命令行中用 Token 代替密码
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ 部署完成！
echo ========================================
echo.
echo 接下来请启用 GitHub Pages：
echo 1. 访问您的仓库页面
echo 2. 点击 Settings → Pages
echo 3. Source 选择：main 分支
echo 4. 点击 Save
echo 5. 等待几分钟，您的网站就会上线！
echo.
echo 您的网站地址将会是：
echo https://您的用户名.github.io/twy-channel/
echo.
pause

