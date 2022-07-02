@echo off
python -m pip install -U pip setuptools wheel
pip install -U --no-index --find-links=packages/source -r packages/requirements.txt
@echo on
