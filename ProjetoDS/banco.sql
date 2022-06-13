CREATE DATABASE ds;
USE ds;

CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	id_categoria INT NOT NULL,
	nome VARCHAR(200) NOT NULL,
	valor FLOAT NOT NULL,
	descricao VARCHAR(1000) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE estoque(
	id INT NOT NULL AUTO_INCREMENT,
	id_prod INT NOT NULL,
	quant INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT,
	nome_cat VARCHAR(200),
	PRIMARY KEY(id)
);

CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(200),
    senha   VARCHAR(120) NOT NULL,
	datanasc DATE NOT NULL,
	email VARCHAR(200) NOT NULL,
	cidade VARCHAR(200) NOT NULL,
	CEP INT(8) NOT NULL,
	endereco VARCHAR(400) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE pedidos(
	id INT NOT NULL AUTO_INCREMENT,
	dataped DATE NOT NULL,
	valor FLOAT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE carrinho(
	id INT NOT NULL AUTO_INCREMENT,
	id_prod INT NOT NULL,
	PRIMARY KEY(id)
);

ALTER TABLE carrinho ADD CONSTRAINT fk_idpro FOREIGN KEY (id_prod) REFERENCES produtos (id);

ALTER TABLE produtos ADD CONSTRAINT fk_idcat FOREIGN KEY (id_categoria) REFERENCES categorias (id);

ALTER TABLE estoque ADD CONSTRAINT fk_idestoq FOREIGN KEY (id_prod) REFERENCES produtos (id);