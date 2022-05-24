#!/bin.bash

converte_imagem(){
cd /home/alertrack/estudo_shell/imagens-livros
if [ ! -d png ]
then
	mkdir png
fi

for imagem in *.jpg
do
	local imagem_sem_ext=$(ls $imagem | awk -F. '{ print $1 }')
	convert $imagem_sem_ext.jpg png/$imagem_sem_ext.png
done
}

converte_imagem 2>erros_conversao.txt
if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso"
else
	echo"Ta vaziii"
fi
