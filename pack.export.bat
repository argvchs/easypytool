@echo off
md packages
cd packages
pip freeze > requirements.txt
rd /s /q source
pip download -d source -r requirements.txt
@echo on
