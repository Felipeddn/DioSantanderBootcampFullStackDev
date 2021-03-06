* Introdução ao Git e GitHub - Otávio Reis

# Instalando Git

* Instalando no Windows

link para download do git: https://git-scm.com/download

no acesso ao site o git reconhece seu sistema operacional e a arquitetura do seu processador (32 bits ou 64 bits)

Algumas opções que devem ser marcadas durante a instalação:

opção sobre Windows Explore Integration
[x] - Git Bash Here - essa opção permite abrir o git bash selecionando essa opção ao clicar com o botão direito dentro da pasta.
[] - Git Gui Here - não recomendo mais quase nunca será necessário uma interface gráfic. Se for necessario por questões didáticas o Windows tem opções melhores.

Na opção "Choosing the default editor used by git" ele vem por padrão a opção vim podemos mudar essa opção mas no tutorial o professor manteve o vim. se você tem o Windows provavelmente irá usar o VS Code.

Na opção "Configuring the line ending convertions"
se você souber que o time usa sistemas baseado em unix-like (distribuições Linux e versões de MacOS) marque a segunda opção caso esteja usando um windows deixe a primeira opção.

para as demais opções apenas aperte o botão **next**.

para conferir se a instalação foi bem sucedida aperte o botão windows e na barra de pesquisa digite git! você verá a opção para acessar o Git Bash ou Git GUI.

* Instalando em distribuições de Linux

**sudo su** - comando para executar como usuario root, para uma instalação não é recomendado usar esse comando, agora para diversas tarefas onde sempre será requisitado permissões é interessante para evitar repetir sempre o comando sudo antes de outros comandos. 

acesse a web e verifique os comandos para usa versõa de linux https://git-scm.com/download/linux

uma boa pratica é usar o comando apt get update para atualizar. 
**sudo apt-get update**  ou **sudo apt update**  
**sudo apt -y upgrade**  
Com esses comandos seus sistema fica atualizado.

agora podemos instalar com o comando (isso para ubuntu).
**apt-get install git**

para confirmar a instalação do git no linux use o comando:
**git --version**

ele precisa retornar uma mensagem parecida com essa:
git version 2.25.1

Para demonstrar que foi realizada a instalação no Linux, baixei o git, instalei e modifique essa linha em uma máquina virtual.

Usei o tutorial desse site para trabalhar um pouco sobre clone de projeto para atualizar o repositório remoto e local do Linux na máquina virtual https://www.lambda3.com.br/2016/02/mantendo-um-fork-atualizado-no-github/

* Instalando em MacOS

acesse o site https://git-scm.com/download/mac

instale o homebrew caso não tenha através do comando: 
**brew install git**

tive a mesma dificuldade do professor Otavio sobre a prática da instalação, não possuo um computador Macintosh.

# Ressaltando as diferença
