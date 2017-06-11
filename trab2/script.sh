#!/bin/bash
echo "Trabalho 2 - Aluno: Wallace Freixo"
echo "[1] Listar conteúdo da pasta atual"
echo "[2] Ver conteúdo de um arquivo"
echo "[3] Testar se uma url está no ar"
echo "[0] Sair"
echo "Escolha uma opção: "
read opcao
echo ""
  while [ $opcao != 0 ]
    do
     if [ $opcao == 1 ]
       then
         echo "$(ls)"
         echo ""
      else
       if [ $opcao == 2 ]
         then
           echo "Digite o  nome do arquivo a ser buscado: "
           read arq
           echo ""
           if [ -f $arq ]
             then 
               cat $arq
             else 
               echo "$arq : esse arquivo nao existe"
               echo ""
            fi
        else
         if [ $opcao == 3 ]
          then
             echo "Digite o ip ou url a ser testado: "
             read ip
             echo ""
             ping -c 1 $ip
             echo ""
        else
         if [ $opcao == 0 ]
          then
          exit 0
        fi
     fi
    fi
  fi 
    echo "Trabalho 2 - Aluno: Wallace Freixo" 
    echo "[1] Listar conteúdo da pasta atual"
    echo "[2] Ver conteúdo de um arquivo" 
    echo "[3] Testar se uma url está no ar"
    echo "[0] Sair"
    echo "Escolha uma opção: " 
    read opcao
    echo ""
    done

