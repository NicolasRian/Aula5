CREATE DATABASE entregas_express;

USE entregas_express;

CREATE TABLE paises(
	id_pais INT,
    nome VARCHAR(45),
    latitude VARCHAR(45),
    longitude VARCHAR(45),
    idioma_oficial VARCHAR(45),
    PRIMARY KEY (id_pais)
    );
    
INSERT INTO paises(id_pais, nome, latitude, longitude, idioma_oficial)
    VALUES (1, "Brasil" ,"-33o 45'07", "-53o 23'50", "Português");
    SELECT*FROM paises;
    
CREATE TABLE unidades_federativas(
	cod_uf INT,
    nome_uf VARCHAR(45),
    abreviacao_uf CHAR(2),
    id_pais INT,
    PRIMARY KEY (cod_uf),
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);
INSERT INTO unidades_federativas(cod_uf, nome_uf, abreviacao_uf, id_pais)
    VALUES (101, 'Rio de janeiro', "RJ", 1);
INSERT INTO unidades_federativas(cod_uf, nome_uf, abreviacao_uf, id_pais)
    VALUES (102, 'São Paulo', "SP", 1);
INSERT INTO unidades_federativas(cod_uf, nome_uf, abreviacao_uf, id_pais)
    VALUES (103, 'Minas Gerais', "MG", 1);
SELECT *FROM unidades_federativas;
CREATE TABLE municipios (
	id_municipio INT,
    nome VARCHAR(45),
    cod_uf INT,
    PRIMARY KEY (id_municipio),
    FOREIGN KEY (cod_uf) REFERENCES unidades_federativas(cod_uf)
    );
    
    INSERT INTO municipios(id_municipio, nome, cod_uf)
    VALUES(
  


    
    