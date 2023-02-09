echo https://www.python.org/ftp/python
read -p 'version: ' version
read -p 'filename: ' filename
curl https://www.python.org/ftp/python/$version/$filename --output $filename
