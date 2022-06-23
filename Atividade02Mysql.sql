CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(

id BIGINT auto_increment,

nome VARCHAR(255),
setor VARCHAR(255),
preço DECIMAL(9,2),
matricula INT,

primary key (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("bolacha", "alimentos", 3.60, 01);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("arroz", "alimentos", 18.70, 02);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("feijão", "alimentos", 12.60, 03);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("macarrão", "limpeza", 8.40, 04);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("danone", "limpeza", 5.60, 05);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("candida", "limpeza", 9.30, 06);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("pneus", "automotivo", 720.00, 07);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("rodas", "automotivo", 940.60, 08);
INSERT INTO tb_produtos(nome, setor, preço, matricula)VALUES("capa de proteçao", "automotivo", 550.99, 09);

SELECT * FROM tb_produtos WHERE preço > 500;
SELECT * FROM tb_produtos WHERE preço < 500;

UPDATE tb_produtos
SET nome = "refrigerante"
WHERE id = 8;

