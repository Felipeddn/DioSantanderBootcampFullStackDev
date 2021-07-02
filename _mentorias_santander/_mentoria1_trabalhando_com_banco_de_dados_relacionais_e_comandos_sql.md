# Trabalhando com banco de dados relacionais e comandos sql - Nádia Ramaldes - Santander - Mentoria 1

Mentora Nadia Ramaldes DBA - Santander

## Get started PostgreSQL 

## Objetivos da aula

1. Fundamentos Database   
2. Banco de dados relacionais   
3. Get started PostgreSQL   
4. Exemplos práticos   
5. Links úteis


## Requisitos básicos 

* Conceitos de banco de dados  
* Sistemas operacional Windows, Linux   
* Client PostgreSQL PGAdmin.

## Parte 1 - Fundamentos Database

* Dado x Informação   
 * Dado - elemento bruto
 * Informação - conjunto de dados tratados

* Banco de dados    
 * É o conjunto de dados relacionados e armazenados de forma estruturada.

## Parte 2 - Banco de dados Relacional

* Conceito base: Entidade x Relacionamento   
 * Atributo: campo, coluna, tipo
 * Cliente <- <comprou> -> Produto

* ACID - Atomicidade, consistência, isolamento e durabilidade - Garante integridade

`Exemplo de Diagrama MER` 

Draw.io https://app.diagrams.net/

## Parte 3 - Get started PostgreSQL

* Open-source  
* Desenvolvido pela PostgreSQL Global Development Group   
* Ferramenta: sql, PGAdmin   
* Integração com diversos plugins (python);
* Padrão SQL: 2008   
* Manutenção online - non-blocking indexes;  
  Manuntenção online são manuntenções no qual não preciso tornar indisponível o banco de dados, isso é uma característica importante.
* SQL/JSON path


Plataforma que suportam o PostgreSQL

* macOS  
* Linxu/Windows  
* BSD / Solaris

* Cloud Marketplace  
 * AWS, Azure

* Single instance, Replication (Primary-Standby)

Faqs da live.

Pergunta do Eric Romanciuc
Qual a diferença básica entre postgre e SQL, quais os prós e contras de cada um? 

Pergunta da Thamirys Juijo   
Quais são as vantagens do postgreSQL que fez o Santander escolher ele em detrimento de outros bancos de dados?

O conceito de open-source, alta aderência do mercado, o conceito de multicloud, facilidade de migração foi um diferencial, grandes empresas 
trabalham no código fonte desse banco de dados, os comandos são similares a outros bancos de dados.

Pegunta da Míriam Nunes   
Explique qual a diferença entre banco de dados relacionais e não relacionais, com exemplos? 

Banco de dados não relacional muda a forma de organizar os dados, nomeclaturas como tabela que passa a ser chamada de coleção, os atributos não são 
normalizados. 

Pergunta do Flavio Santos  
O Santander utiliza outros bancos de dados além de PostgreSQL?

Sim, o Santander utiliza outros bancos não relacionais e relacionais como oracle, sqlserver, db2, mongodb, redis. 

## Links úteis

* Sites oficiais: https://www.postgresql.org  

* Documentação: https://www.postgresql.org/docs

* Versões/Features: https://www.postgresql.org/support/versioning/ | https://www.postgresql.org/about/featurematrix

* Produtos/Softwares PostgreSQL: https://www.postgresql.org/download/product-categories

O cluster não está presente de forma nativa no postgresql para configurar um é necessario baixar uma ferramenta para isso e o link acima ajuda nessa 
tarefa.

* Listas de discussão: https://www.postgresql.org/download/product-categories

Eu estava no curso do banco de dados e já havia instalado o postgresql em uma maquina virtual centOS 8 e quando fui usar durante a mentoria estava 
com problemas então fui verificar a versão do meu postgresql 

Esse link me ajudou nessa missão:  
https://qastack.com.br/programming/13733719/which-version-of-postgresql-am-i-running

a partir da orientação do link executei o comando para verificar a versão do PostgreSQL:   
**postgres -V**

e consegui verificar minha versão.

verifiquei o estado do meu banco de dados com o comando 

**sudo systemctl status postgresql version** 

e ele retornou o seguinte:   
Active: failed

tentei iniciar ele com o comando:  
**sudo systemctl start postgresql version** 

e o comando retornou:   
Job for postgresql.service failed because the control process exited with error code.   
See "systemctl status postgresql.service" and "journalctl -xe" for details.

antes de qualquer coisa atualizei meu sistema centOS 8 com os comandos:   
**sudo dnf update**

e depois consolidei a atualização com o comando:   
**sudo dnf upgrade**   

https://stackoverflow.com/questions/35492893/unable-to-start-postgresql-service-on-centos-7

de alguma forma esse link me ajudou mas o comando que executei foi esse:   
**sudo system start postgresql-versão**

Então não sei exatamente se a atualização resolveu ou alguns comandos do link porém o banco de dados agora está ativado.

## Instalando o PostgreSQL (no Windows)
Estou usando o linux centOS 8 e está instalado então vou acompanhar a instalação e já estudei uma aula sobre instalação do postgresql no Windows.

Durante a instalação foi explicado o que é um superusuário, ou seja, o superusuario é um usuario que tem permissões para executar diversos comandos 
no banco de dados. 

A Nádia confessou sua preferência pelo Linux Red Hat 7 

Como a Nádia está usando no Windows estou presenciando comandos que eu não tinha visto antes como:

**localhost** - não sei o que faz ainda.

**postgres** - não sei o que faz ainda.

**5432** - algo relacionado a porta, inclusive esse número costuma ser padrão.

**postgres** - algo relacionado ao usuário

foi digitado o password para acessar o banco de dados, baseado no meu conhecimento eu vou executar os seguintes comandos para acessar o banco de
dados.

acessar o usuário do postgres:   
**sudo -u postgres -i**

conectar ao banco de dados:   
**psql** 

e pronto posso executar o comando que a Nadia fez no Windows para verificar a versão:   
**select version();**

Tudo ok! que alegria, a vida é incrível na programação.

comando para listar todos os bancos de dados (database):   
**\l**

o comando para listar os usuários:   
**\du**

Antes de qualquer coisa para propósito de prática vou criar um perfil (uma ROLE) para ter capacidade de gerenciar apenas banco de dados práticados 
na mentoria.

Consultei o seguinte link para colocar em prática essa ideia:   
https://github.com/FelipeLinuxVirtualMachine/GFTBootcampStartUni-2Java/blob/main/_conceitos_e_melhores_praticas_com_bancos_de_dados_PostgreSQL/_objetos_e_tipos_de_dados_do_PostgreSQL/_a3_como_administrar_usuarios_no_banco_de_dados.md

**CREATE ROLE santander CREATEDB NOCREATEROLE INHERIT LOGIN NOREPLICATION CONNECTION LIMIT 10 PASSWORD '--------';**

Dica: Quando definimos uma senha ela deve ser definida entre aspas simples **''**, aspas duplas não funciona.

Agora vou dar prosseguimento a mentoria e depois práticar com A ROLE santander permissões, após a mentoria, para ver os acessos que consigo fazer.

Para exemplificar vamos criar um banco de dados baseado no diagrama de ER da imagem.

Iniciamos a prática executando o comando para criar o banco de dados:
CREATE DATABASE catalogo;
	
Após a criação do banco de dados abrimos o PGAdmin4, não foi mostrado a instalação mas isso pode ser encontrado na playlist no youtube disponível   
no youtube:   
https://www.youtube.com/watch?v=Lk7-oqXafaU&list=PLPFhNx6dMDJpO5ale233wrW2uYc-vBjE1

Com o PGAdmin4 aberto podemos visualizar no canto esquerdo o banco de dados que criamos, pressionando o botão direito do mouse em cima abrimos uma 
aba com opções devemos escolher a query tools, local onde podemos digitar nossos códigos SQL.

No pgadmin executamos diversos comandos para criação de tabelas, inserção de dados, e consultas inclusive com inner join, esses comandos podem ser 
verificados no arquivo `_comandos_sql_da_mentoria1_santander.sql`

Por fim voltamos para a linha de comando e executamos os seguintes comandos:

Para listar os bancos de dados:      
**\l**

Para conectar o usuário postgres ao banco de dados catalogo:   
**\c nome_do_banco_de_dados (no caso \c catalogo)**

Para visualizar as tabelas criada no banco catalogo:   
**\dt**

e a partir daí podemos usar os comandos usado no PGAdmin4 para realizar as mesmas tarefas como criação de tabelas, inserção de dados, visualização 
de dados.

Então realizamos as consultas nas tabelas filme e diretor. a sintaxe de consulta é:
**SELECT opção FROM nome_da_tabela; (no caso desejamos visualizar todos os registros da tabela (* - significa qualquer um))**   
**SELECT * FROM tb_filme;**

Outra consulta a tabela do banco de dados:    
**SELECT * FROM tb_diretor;**

## Tirando dúvidas

Perguntado por Fabio   
Qual a importância do banco de dados nas diversas empresas e em especial na instituições financeiras.

"O banco de dados é o coração da aplicação (o coração distribui o sangue por todo o corpo, sangue vermelho da cor do santander rs)" então sua 
importancia é fundamental, por isso que existe um cuidado em diversos aspectos para o bom funcionamento do mesmo, a infraestrutura precisa garantir 
recurso de hardware (mesmo na nuvem essa idéia é valida já que configuramos uma máquina virtual) para seu bom funcionamento, é necessário um 
cuidado em relação as permissões de acesso (grants) uma baixa latência, uma grande velocidade de resposta para o CRUD.

Perguntado pelo Moares Oliveira (adaptado)   
Por gentileza explique melhor sobre o GROUP BY, quando usamos a função COUNT(coluna) e agrupa com outra coluna.Pode explicar melhor essa 
funcionalidade? 

Perguntado pelo Eurico   
Poderia falar sobre boas práticas de Banco de dados?

Existe uma preocupação com um "* de coisas" como a organização da equipe e a comunicação para que todos estejam na mesma página sobre eventos 
relacionados ao banco de dados, muitas práticas relacionadas a infraestrutura como configuração do banco de dados dimensionado para que o servidor 
possa performar sem problemas... 

Perguntado pela Isis   
O que é Inner Join? 

É vinculação entre dados juntando o comando Inner Join. É uma forma de "amarra-las", os dados da tabela.


Perguntado pelo Daniel   
No postgre tem como analisar o custo relativo das querys? como são realizadas as declarações dos indíces?

Realizamos analises no explain plain e criamos indices, e no arquivo `_comandos_sql_da_mentoria_santander.sql` existe um exemplo prático para 
analisar os custos de uma consulta.

Perguntado pelo Maykon Araujo   
O Santander usa para nomear suas tabelas o padrão snake_case (nomeando_usando_o_underline_nos_espaços)? E o padrão de nomes de tabelas usa 
tb_nomedatabela? 

O uso de underline/underscore ( _ ) é muito utilizado sim, não é uma regra mas faz parte das boas práticas.

Perguntado pela Thatiany Steer   
Tem algum livro/e-book indicado para estudo de banco de dados relacionais e comandos SQL?

Esses assuntos podem ser verificados na documentação do PostgreSQL via link da aula que possui um material bem rico.

Perguntado por Lukas Oliveira   
Existe alguma documentação de SQL para consultar e De PostgreSQL?

Melhor documentação SQL que eu conheço:    
https://www.w3schools.com/sql/

Documentação PostgreSQL:
https://www.postgresql.org/docs/

Pergunta de Leo Prates   
Porque existem as views temporárias? qual são seus usos?

É uma solução específica para gerar um cash de memória, para agilizar consultas, para gerar dados de memória momentâneas de uma sessão de usuario 
sem a necessidade de persistir dados. 

Pergunta de Evandro Ladislau  
Explique um pouco sobre função recursiva?   

Pergunta de Luciana Oliveira   
Qual conselho para quem está iniciando em DBA?  

Estudar e testar, fazer curso, criar estruturas testes, materiais para simular casos. Criar máquinas virtuais para realizar práticas exploratórias.

Pergunta do Romulo Souza 
Explicar um pouco sobre o comando TRUNCATE? 

As pessoas costumam ter duvida sobre a diferença entre delete e truncate por conta de eliminar registros (linhas), inclusive essa é uma pergunta do 
dia a dia segundo relato da Nádia.

Exemplo prático sobre esse comando no arquivo `_comandos_sql_da_mentoria1_santander.sql`, de quebra tem um exemplo de comando delete comando esse 
que sempre exige uma condição que é adicionada com o comando where.

Pergunta do Antonio Balbino Santana dos Santos   
A sintaxe do SQL usada no PostgreSQL é igual ao MySQL?

É bem proximo sim a sintaxe. 

E é isso!!! Finalizado
