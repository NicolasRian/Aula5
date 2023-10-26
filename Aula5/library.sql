CREATE DATABASE library;

USE library;


CREATE TABLE editoras(
	id_editora INT,
    nome VARCHAR(45),
    cnpj CHAR(14),
    PRIMARY KEY(id_editora)
);

INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (1, "Intrinseca", "05660045000106");

CREATE TABLE livros(
	id_livro INT,
    titulo VARCHAR(45),
    id_editora INT,
     lancamento INT,
    PRIMARY KEY (id_livro),
    FOREIGN KEY (id_editora) REFERENCES editoras(id_editora)
);

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VAlues (100, "Uma breve história do tempo", 1, 1988);

ALTER TABLE livros ADD lancamento INT;

SELECT * FROM livros;

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VALUES (101, "O Livro das Fobias e Meninas", 1, 2023);

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VALUES (102,"TRADER OU INVESTIDOR?", 1, 2023);

INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (2, "Atlas", "61080370000766");

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VALUES(103, "ADMINISTRAÇÂO", 2, 2023);

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VALUES(104, "Gestão de pessoas e cultura organizada", 2, 2023);


INSERT INTO editoras (id_editora, nome, cnpj)
VALUES (3, "VR Editora", 02817648000180);

INSERT INTO livros (id_livro, titulo, id_editora, lancamento)
VALUES(105, "Diario de um Banana Maré de azar", 3, 2023);






