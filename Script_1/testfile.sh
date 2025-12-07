#!/bin/bash

# Solicita ao usuário o nome de um diretório e, em seguida , o cria com mkdir.

echo "Dê um nome ao diretório a ser criado:"
read NEW_DIR

# Salvar o diretório original para que possamnos retornar a ele (também poderíamos usar pushd ou popd)

ORIG_DIR=$(pwd)

# Verifique se já não existe!

[[ -d $NEW_DIR ]] && echo $NEW_DIR já existe, abortando && exit 

mkdir $NEW_DIR

# Faz as alterações para o novo diretório e imprime onde ele está usando o comando pwd.

cd $NEW_DIR
pwd

# Usando o comando touch, cria vários arquivos vazios e executa o comando ls neles para verificar se estão vazios.

for n in 1 2 3 4 
do  
    touch file$n 
done

ls file?

# (Poderia ter usado apenas touch file1 file2 file3 file4, só queira mostrar o loop 'do'!)

# Insere algum conteúdo neles usando echo e redirecionamento

for names in file?
do 
    echo Este arquivo se chama $names > $names
done    

# Exibe seu conteúdo usando cat

cat file?

# Despede-se do usuário e limpa tudo depois

cd $ORIG_DIR
rm -rf $NEW_DIR
echo "Adios, amigo!"