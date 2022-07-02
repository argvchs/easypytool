@echo off
cd /d %USERPROFILE%
md pip
cd pip
set src=tuna
set proxy=/
set /p src=pypi mirror source (tuna/aliyun/ustc/douban): 
set /p proxy=proxy: 
echo [global] > pip.ini
if %src%==aliyun (echo index-url = https://mirrors.aliyun.com/pypi/simple >> pip.ini) else if %src%==ustc (echo index-url = https://pypi.mirrors.ustc.edu.cn/simple >> pip.ini) else if %src%==doubal (echo index-url = https://pypi.douban.com/simple >> pip.ini) else (echo index-url = https://pypi.tuna.tsinghua.edu.cn/simple >> pip.ini)
if not %proxy%==/ (echo proxy = 127.0.0.1:61494 >> pip.ini)
echo [install] >> pip.ini
if %src%==aliyun (echo trusted-host = mirrors.aliyun.com >> pip.ini) else if %src%==ustc (echo trusted-host = pypi.mirrors.ustc.edu.cn >> pip.ini) else if %src%==doubal (echo trusted-host = pypi.douban.com >> pip.ini) else (echo trusted-host = pypi.tuna.tsinghua.edu.cn >> pip.ini)
@echo on
