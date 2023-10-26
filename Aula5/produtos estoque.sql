CREATE DATABASE produtos_estoque;

USE produtos_estoque;

CREATE TABLE marcas(
	id_marca INT,
    nome VARCHAR(45),
    descricao VARCHAR(45),
   PRIMARY KEY(id_marca)
);
INSERT INTO marcas (id_marca, nome, descricao)
VALUES (1, "Eudora", "Shampoo");

INSERT INTO marcas (id_marca, nome, descricao)
VALUES (2, "Logitech", "Mouse");

INSERT INTO marcas (id_marca, nome, descricao)
VALUES (3, "aplle", "iphone");

SELECT * FROM marcas;

CREATE TABLE produtos(
	id_produto INT,
    nome VARCHAR(45),
    preco_unitario FLOAT(45),
    id_marca INT,
    PRIMARY KEY (id_produto),
	FOREIGN KEY (id_marca) REFERENCES marcas(id_marca)	
);

INSERT INTO produtos(id_marca, nome,  preco_unitario, id_produto)
VALUES (1, "Shampoo Siàge", 38.99, 101);

INSERT INTO produtos(id_marca, nome,  preco_unitario, id_produto)
VALUES (2, "Logitech", 139.99 , 102);

INSERT INTO produtos(id_marca, nome,  preco_unitario, id_produto)
VALUES (3, "iPHONE 14", 4799.00, 103);

SELECT * FROM produtos;

UPDATE produtos SET nome = "Logitech" WHERE id_produto = 102;


