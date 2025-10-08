#!/bin/bash
# Script de calculadora simples

echo "=== Calculadora ==="
echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read -p "Opção: " opcao

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $opcao in
  1) resultado=$((num1 + num2));;
  2) resultado=$((num1 - num2));;
  3) resultado=$((num1 * num2));;
  4) 
     if [ $num2 -ne 0 ]; then
        resultado=$((num1 / num2))
     else
        echo "Erro: divisão por zero não é permitida."
        exit 1
     fi
     ;;
  *) echo "Opção inválida."; exit 1;;
esac

echo "Resultado: $resultado"


