@echo off
rem create by canyuda(helloyuda95@gmail.com)
rem hello bat
 
echo ѡ��ֿ�·��1or2:(1.D:\repo   2.D:\localrepo)
set /p repo=>nul
echo ѡ���� �� %repo%

if %repo%==1 (set REPOSITORY_PATH=D:\repo) else (
if %repo%==2 (set REPOSITORY_PATH=D:\localrepo) else (
echo ���������ѡ��1or2 ,�������: %repo%
PAUSE
GOTO :EOF
) )

rem ��������...
for /f "delims=" %%i in ('dir /b /s "%REPOSITORY_PATH%\*lastUpdated*"') do (
    del /s /q %%i
)
rem �������
pause