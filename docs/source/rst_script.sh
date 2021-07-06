#! /bin/bash

#Use the command "chmod +x rst_script.sh" to make this file executable
sudo apt-get install python3-sphinx
pip install html2rest
sphinx-quickstart #May answer everything as yes by default
read -p "Enter the saved file name (e.g. source.html): " FILE
if [ -f "${FILE}" ]
then
    #conversion to rst file takes place here
    FILENAME=`echo "$(basename "$FILE" | sed 's/\(.*\)\..*/\1/')"`
    EXT1=".html"
    EXT2=".rst"
    FILENAME_HTML="$FILENAME$EXT1"
    FILENAME_RST="$FILENAME$EXT2"
    html2rest "$FILENAME_HTML" > "$FILENAME_RST"
    #move the rst file to docs/source
    mv "$FILENAME_RST" source/
    make clean
    make html
    echo "The resulting file can be viewed in build/html"
else
    echo "Please move the saved html file to: "
    pwd
fi