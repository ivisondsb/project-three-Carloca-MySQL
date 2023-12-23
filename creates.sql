# Criando o database Carloca
CREATE DATABASE CARLOCA;

# Criando tabelas
CREATE TABLE CATEGORIAS (
ID_CATEGORIA INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
CATEGORIA VARCHAR(255) NOT NULL DEFAULT ' '
);

CREATE TABLE CLIENTES (
ID_CLIENTE INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
CPF CHAR(11) NOT NULL
);

CREATE TABLE CARROS (
ID_CARRO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
MODELO VARCHAR(255),
ID_CATEGORIA INT,
VERSAO VARCHAR(255),
COR ENUM('BRANCO','PRETO','PRATA'),
MONTADORA VARCHAR(255),

FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS(ID_CATEGORIA)
);

CREATE TABLE FRANQUIAS (
ID_FRANQUIA INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
FRANQUIA VARCHAR(255) NOT NULL,
CIDADE VARCHAR(255) NOT NULL,
BAIRRO VARCHAR(255) NOT NULL
);

CREATE TABLE CARLOCA (
LOCACAO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ID_CLIENTE INT,
ID_CARRO INT,
ID_FRANQUIA INT,
MODALIDADE ENUM('DIÁRIA') default 'DIÁRIA',
KM_INICIAL BIGINT,
KM_FINAL BIGINT,


FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES(ID_CLIENTE),
FOREIGN KEY (ID_CARRO) REFERENCES CARROS(ID_CARRO),
FOREIGN KEY (ID_FRANQUIA) REFERENCES FRANQUIAS(ID_FRANQUIA)
);