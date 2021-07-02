-- criando tabela diretor
CREATE TABLE tb_diretor(
	id_diretor int NOT NULL,
	nome_diretor varchar(50),
	PRIMARY KEY (id_diretor)
);
-- podemos selecionar o código e digitar f5 para executar o comando
-- com esse comando podemos verificar que os atributos da nossa tabela foi criado ...
-- ...porém sem registro.
SELECT * FROM tb_diretor;

-- Criando a tabela filme
CREATE TABLE tb_filme(
	id_filme int NOT NULL,
	nome_filme varchar(50),
	id_diretor int NOT NULL,
	id_produtora int NOT NULL, 
	genero varchar(25),
	PRIMARY KEY (id_filme),
	FOREIGN KEY (id_diretor) REFERENCES tb_diretor(id_diretor)
);

-- Podemos usar o comando select para verificar a criação da nossa tabela.
SELECT * FROM tb_filme;

-- tudo ok.

-- criando a tabela produtora
CREATE TABLE tb_produtora(
	id_produtora int NOT NULL,
	nome_produtora varchar(25),
	PRIMARY KEY (id_produtora)
);

-- no pgadmin não existe a necessidade de colocar ponto e vírgula para executar um comando.
SELECT * FROM  tb_produtora

--alteração na tabela filme para adicionar uma segunda chave estrangeira (FK - foreign key)
ALTER TABLE tb_filme 
ADD CONSTRAINT fk_id_produtora 
FOREIGN KEY(id_produtora) REFERENCES tb_produtora (id_produtora);

-- O PGAdmin4 permite visualizarmos nossas tabelas através do caminho nome do grupo de servidores...
-- ...nome do servidor -> nome do banco de dados -> Schemas -> public -> tables 
-- No caso na mentoria o caminho será Servers -> PostgreSQL 13 -> Databases -> catalogo -> schemas...
-- ... -> public -> Tables -> nome da tabela desejada.

-- Agora com o banco de dados e suas tabelas criadas podemos inserir dados nela. com os comandos:
INSERT INTO tb_diretor
VALUES
(1, 'Steve Spielberg'),
(2, 'James Cameron'),
(3, 'Quentin Tarantino');

-- verificando os dados inseridos
SELECT * FROM tb_diretor;

-- Inserindo dados na tabela produtora
INSERT INTO tb_produtora (id_produtora, nome_produtora)
VALUES
(1, '20th Century Studios'),
(2, 'Sony Pictures'),
(3, 'Paramount Pictures');

-- verificando os dados inseridos
SELECT * FROM tb_produtora;

-- Agora a inserção de dados na tabela Filme
INSERT INTO tb_filme
VALUES 
(1, 'Django Livre', 3, 2, 'Faroeste/ação'),
(2, 'Avatar', 2, 1, 'Ficção Científica'),
(3, 'O resgate do soldado Ryan', 1, 3, 'Guerra');

-- verificando os dados inseridos
SELECT * FROM tb_filme;

-- Agora vamos trabalhar com o conceito de retornos de busca com o inner join
SELECT *
	FROM public.tb_diretor
	INNER JOIN tb_filme
	ON tb_filme.id_diretor = tb_diretor.id_diretor;
	
-- foi realizado uma consulta nos dados da tabela diretor juntando os dados da tabela filme.

-- exemplo para a pergunta do Moares durante a monitoria
SELECT 
	nome_diretor,
	COUNT(nome_diretor)
FROM
	tb_diretor
GROUP BY
	nome_diretor;
	
-- analisando os custos de uma consulta com o explain/plain perguntado pelo Daniel 
explain SELECT * 
	FROM public.tb_diretor
	INNER JOIN tb_filme
	ON tb_filme.id_diretor = tb_diretor.id_diretor;

-- comando truncate baseado na pergunta do Romulo
SELECT * FROM tb_diretor;

TRUNCATE table tb_diretor;
-- não é possível executar acima porque a chave estrangeira na tabela filme (tb_filme) faz referência
-- a tabela diretor (tb_diretor) então o PostgreSQL sugere (HINT) ou usa o comando nas duas tabelas 
-- ao mesmo tempo ou usa o comando TRUNCATE junto ao comando CASCADE.

-- O comando abaixo também passará pelo processo de erro porque o registro selecionado no campo where
-- possui ligação com uma tabela externa, dessa forma o banco garante a integridade do dado 
-- armazenado
DELETE FROM tb_diretor WHERE id_diretor = 1;
