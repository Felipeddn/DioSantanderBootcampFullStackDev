* Introdução ao Git e GitHub - Otávio Reis

# Ciclo de vida dos arquivos

`o arquivo _ciclo_de_vida_git_imagem.png possui uma visualização sobre esses conceitos`

## Git init

Esse comando inicializa um repositório e começa a retornar tracked files que foram adicionados com **git add** e untracked files que o Git sabe que estão ali mas que não estão com seus estados sendo monitorados. Os untracked files podem ser ignorados com um arquivo chamado .gitingnore .

* Tracked  (Monitorado em português)
Tracked são arquivos que foram adicionados para o git verificar seu estado com **git add**, só possuem esses estados arquivos adicionados com **git add**

1. Unmodified (não modificado) - é um arquivo que não sofreu alteração 


2. Modified (alterado) - é um arquivo que sofreu modificações, o Git sabe disso comparando valores de SHA1

3. Staged - arquivos que estão se preparando para fazer parte de outro tipo de agrupamento, eles assume esse estado com o comando **git add** e o **git commit** muda eles para unmodified

* Untracked (não rastreado em português)
arquivos que o git sabe que existe mas não está monitorando seu estado de mudanças que são os estados de Tracked.

## O que é um repositório?

* Ambiente de Desenvolvimento 
É o ambiente onde o programador trabalha com o código
1. Working Directory  
Pasta onde está o código que está sendo editado sem o monitoramento do Git.
2. Staging area  
A partir desse momento o arquivo está sendo monitorado para o Git mas não foi salvo pelo git um estado para ser recuperado
3. Local repository?

* Servidor
1. Remote repository (GitHub)
Servidor é um computador onde armazena os códigos online. Servidor é qualquer computador que compartilha documentos na internet.

comando para saber os estados dos arquivos:  
**git status** - com esse comando é possível ver se os arquivos estão untracked, modified, staged, entre outros.    

comando para criar diretorios:  
**mkdir** nome_do_diretório

comando para mover arquivos entre diretorios:  
**mv** nome_do_arquivo nome_do_diretorio_destino

comando para retornar os arquivos e diretorios para untracked  
**git restore** `--staged`

comando para adicionar todos os arquivos do diretório para ser salvo seus estados no git.
**git add** nome_do_arquivo

**git commit -am** é uma forma de adicionar os arquivos e já adicionar a mensagem para saber qual momento está sendo guardado pelo Git.