#!/bin/bash
#
# Verifica se um arqgumento foi fornecido e imprime uma mensagem
# de uso caso não tenha sido fornecido.

if [ $# -eq 0 ] ; then
    echo "Uso: argumento $0"
    exit 1
fi
echo $1
exit 0
