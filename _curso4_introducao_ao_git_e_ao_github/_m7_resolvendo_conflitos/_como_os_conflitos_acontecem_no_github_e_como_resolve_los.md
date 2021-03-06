* Introdução ao Git e GitHub - Otávio Reis

Trabalhar em equipe gera muitas nuances que podem afetar o código, uma delas são os conflitos de códigos durante a união deles (merge).

## Atualizando o repositório local

**git pull** `origin master (main)`

## O que são conflitos?
Conflitos são modificações feito por um ou mais programadores onde as mudanças ocorrem na mesma linha, quando o GitHub ou o Git tenta juntar esses documentos ele sinaliza e questiona qual mudança deve prevalecer!

## Como encontra-los
Quando existe um conflito a gente abre os arquivos e faz as comparações o git normamente já nos aponta o conflito.

## Como eles ocorrem 
eles ocorrem quando modificações ocorrem na mesma linha, entre o repositório remoto e local por modificações feitas por nos mesmos no repositório local e remoto ou feita por outro programador que é subido para o github e quando fazemos um git pull origin master (main) as modificações foram realizadas na mesma linha.

## Exemplos práticos
Essa linha foi inserida para testar os conflitos entre repositórios remotos e locais no git e GitHub.
Essa linha foi gerada no VsCode.

Os conflitos foram gerados e foi recomendado usar o seguinte comando:  
**git pull** `origin` `master`

Sobre o git pull existe essa recomendação para ser lida quando eu tiver tempo:  
https://longair.net/blog/2009/04/16/git-fetch-and-merge/

O link acima foi retirado do seguinte local:  
https://qastack.com.br/programming/292357/what-is-the-difference-between-git-pull-and-git-fetch#:~:text=git%20fetch%20basta%20%22baixar%22%20as,mescla%20em%20sua%20filial%20atual.

No meu caso ele resolveu os conflitos gerados de forma automática pelo que parece porque ao usar o comando git pull ele retornou isso:  
**Merge made by the 'recursive' strategy.**

Depois que usei o comando git status nada de diferente foi retornado.

quando fui salvar a mensagem apareceu:      
Falha ao salvar '_como_os_conflitos_acontecem_no_github_e_como_resolve_los.md': o conteúdo do arquivo é mais recente. Compare sua versão com o conteúdo do arquivo ou substitua o conteúdo do arquivo pelas suas alterações.

Pelo Vs Code ficou confuso essa etapa porque o editor do VS Code tem ferramentas gráficas para solucionar esse problema.

# Resolvendo Conflitos
Escolhemos qual modificação manter, incluimos o arquivo com:  
**git add** `*`

e por fim colocamos o comando que salva o estado do arquivo:  
**git commit** `-m` "descrição das mudanças"

e atualizamos o repositório remoto:  
**git push** `origin master (main)`  

Pelo pouco que entendi a gente abre o arquivo onde os conflitos existem e editamos com o que desejamos que permaneça no arquivo. Salvamos esse arquivo e seguimos os comandos **git add** `*`, **git commit** `-m` "descrição das mudanças" e **git push** `origin master (main)`.

## Clonando um repositório remoto
No github escolhemos um projeto que desejamos obter localmente (em nosso computador), existem diversas formas de obter esse conteúdo, incluido até fazer o download do arquivo compactado no formato .zip, o que faremos é copiar usando o URL do projeto e tranferir para nossa máquina através do protocolo HTTPS 

copiamos e usamos o comando:  
**git clone** endereco_url

quando clonamos ele já vem como um repositório e não como um arquivo sem conexão com o repositório remoto.
podemos ter certeza disso usando o comando:  
**ls**  `-a`

para ver arquivos ocultos e atestar a existência do diretório oculto .git 

e podemos verificar o repositório remoto que ele aponta com o comando:  
**git remote** `-v`

## As competencias e conhecimentos que você provavelmente possui após o fim desse curso
1. Iniciar um repositório git entendendo os objetos que são gerados e sua complexidade.
2. Entendeu o conceito de iniciar um repositório através do comando **git init** e o que significa um versionamento de códigos.
3. Entedeu o que é um sistema de versionamento de código
4. Entendeu a diferença entre o Git e GitHub
5. Aprendeu a versionar o código com os comandos **git add** e **git commit**
6. Aprendeu a enviar seus arquivos para um repositório remoto e buscar atualizações no repositório remoto para o repositório local.
7. Desenvolveu uma proeficiência miníma para trabalhar compartilhamento e versionamento de códigos.


