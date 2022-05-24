#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost) 

if [ $resposta_http -ne 200 ]
then
	mail -s "servidor faleceu" arthurbreguez@gmail.com<<del
	Servidor morreu cria.
del
	systemctl restart apache2
fi

