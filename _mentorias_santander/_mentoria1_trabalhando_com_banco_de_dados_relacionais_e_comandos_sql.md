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

Para exemplificar vamos criar um banco de dados baseado no diagrama de ER da imagem.

Parei no minuto 34:55
	




