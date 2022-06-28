#!/bin/bash

read -p "Введите путь: " filename
chmod 777 $filename

read -p "Введите строку поиска: " search
read -p "Введите строку замены: " replace


if [[ $search != ""  && $replace != "" ]]; then
    sed -i '' " s/$search/$replace/" $filename

    Logfile="/Users/manfryde/T02D02-0/src/file.log"
    echo "$filename - `stat -f%z $filename` - ` date -r $filename +"%Y-%m-%d %H:%M"` - `shasum -a 256 <$filename` sha256" >> $Logfile
else 
    echo "Error"
fi

exit 0



