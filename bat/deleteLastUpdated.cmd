@echo off
rem create by canyuda(helloyuda95@gmail.com)
rem hello bat
 
echo 选择仓库路径1or2:(1.D:\repo   2.D:\localrepo)
set /p repo=>nul
echo 选择了 ： %repo%

if %repo%==1 (set REPOSITORY_PATH=D:\repo) else (
if %repo%==2 (set REPOSITORY_PATH=D:\localrepo) else (
echo 输入错误，请选择1or2 ,你的输入: %repo%
PAUSE
GOTO :EOF
) )

rem 正在搜索...
for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated*"') do (
    del /s /q %%i
)
rem 搜索完毕
pause