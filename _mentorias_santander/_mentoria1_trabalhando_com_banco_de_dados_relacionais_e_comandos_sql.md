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

## Instalando o PostgreSQL (no Windows)



