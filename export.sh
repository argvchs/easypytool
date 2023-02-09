mkdir -p packages
cd packages
rm -rf source
pip freeze > requirements.txt
pip download -d source -r requirements.txt
