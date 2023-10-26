-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);
INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES (80, 'Carandiru', 'Drama', 145, 2003, 4.99);
-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

INSERT INTO atores (id_ator,nome_ator, ano_nascimento, nacionalidade, sexo)
VALUES (150, 'Rodrio SAntoro', 1945, "Brasileiro", "masculino");

INSERT INTO atores (id_ator,nome_ator, ano_nascimento, nacionalidade, sexo)
VALUES (151, 'Wagner Moura', 1976, "Brasileiro", "masculino");


-- Crie aqui a tabela de atuações
CREATE TABLE atuacoes(
	id_filme INT,
	id_ator INT,
FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);

INSERT INTO atuacoes (id_filme, id_ator)
VALUES (80,150);


INSERT INTO atuacoes (id_filme, id_ator)
VALUES (80,151);

SELECT * FROM atuacoes;


INSERT INTO filmes (id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
VALUES (81, 'O Homem do Futuro', 'Ficção científica e Romance', 116, 2011, 6.99);

INSERT INTO atuacoes (id_filme, id_ator)
VALUES (81,151);