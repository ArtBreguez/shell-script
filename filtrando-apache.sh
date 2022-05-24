#!/bin/bash

cd /home/alertrack/estudo_shell

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep $1
	if [ $? -ne 0 ]
	then
		echo "num existe lixo"
	fi

else
	echo  "amanco amanco"
fi
