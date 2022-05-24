#!/bin/bash

converte_imagem(){
	local caminho_imagem=$1
	local imagem_sem_ext=$(ls $caminho_imagem | awk -F. '{print $1 }')
	convert $imagem_sem_ext.jpg $imagem_sem_ext.png
}

varrer_diretorio(){
	cd $1
	for arquivo in *
	do
		local caminho_arquivo=$(find /home/alertrack/estudo_shell/imagens-novos-livros -name $arquivo)
		if [ -d $caminho_arquivo ]
		then
			varrer_diretorio  $caminho_arquivo
		else
			converte_imagem $caminho_arquivo
		fi
	done
}

varrer_diretorio /home/alertrack/estudo_shell/imagens-novos-livros
if [ $? -eq 0 ]
then
	echo "Conversao realizada com sucesso"
else
	echo "riuston temos um probema"
fi
