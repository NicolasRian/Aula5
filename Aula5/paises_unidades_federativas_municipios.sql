CREATE DATABASE entregas_express;

USE entregas_express;

CREATE TABLE paises(
	id_pais INT,
    nome VARCHAR(45),
    latidude VARCHAR(45),
    longitude VARCHAR(45),
    idioma_oficial VARCHAR(45),
    PRIMARY KEY(id_pais)
);

CREATE TABLE unidades_federativas(
	cod_uf INT,
    nome_uf VARCHAR(45),
    abreviacao_uf CHAR(2),
    id_pais INT,
    PRIMARY KEY(cod_uf),
    FOREIGN KEY(id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE municipios(
	id_municipio INT,
    nome VARCHAR(45),
    cod_uf INT,
    PRIMARY KEY(id_municipio),
    FOREIGN KEY(cod_uf) REFERENCES unidades_federativas(cod_uf)
);

INSERT INTO paises (id_pais, nome, latidude, longitude, idioma_oficial)	
VALUES (1, "Brasil", "14.2350° S", "51.9253° W", "Português");

INSERT INTO unidades_federativas (cod_uf, nome_uf, abreviacao_uf, id_pais)
VALUES
	(1, "Rio de Janeiro", "RJ", 1),
    (2, "São Paulo", "SP", 1),
    (3, "Minas Gerais", "MG", 1);
    
INSERT INTO municipios (id_municipio, nome, cod_uf)
VALUES
	(100, "Valença", 1),
    (200, "Volta Redonda", 1),
    (300, "São Paulo", 2),
    (400, "Judiaí", 2),
    (500, "Belo Horizonte", 3),
    (600, "Juiz de Fora", 3);