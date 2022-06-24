CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

SELECT * FROM  tb_pizzas;

INSERT INTO tb_categorias(nome_categoria)VALUES("Tradicional");
INSERT INTO tb_categorias(nome_categoria)VALUES("Light");
INSERT INTO tb_categorias(nome_categoria)VALUES("Vegana");
INSERT INTO tb_categorias(tipo_categoria)VALUES("Doce");
INSERT INTO tb_categorias(tipo_categoria)VALUES("Salgada");

CREATE TABLE tb_categorias(
id BIGINT auto_increment,
nome_categoria VARCHAR(255),
tipo_categoria VARCHAR(255),


PRIMARY KEY(id)

);


INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("frango", 65.00, "tradicional","simples", 1, 1);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("calabresa", 40.00, "tradicional","recheada", 2, 1);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("atum", 70.00, "tradicional","simples", 3, 5);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("quatro queijo", 65.00, "tradicional","simples", 4, 5);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("vegie", 95.00, "tradicional","simples", 5, 3);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("abobrinha", 80.00, "integral","simples", 6, 2);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("brocolis", 90.00, "integral","simples", 7, 2);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("chocolate", 50.00, "tradicional","recheada", 8, 4);
INSERT INTO tb_pizzas(sabor, preço, massa, borda, numero, categorias_id)VALUES("brigadeiro", 60.00, "tradicional","recheada", 9, 4);

SELECT * FROM tb_pizzas WHERE preço > 45.00;

SELECT * FROM tb_pizzas
WHERE Preço BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE sabor LIKE 'a%';

CREATE TABLE tb_pizzas(
id BIGINT auto_increment,
sabor VARCHAR(255),
preço DECIMAL(9,2),
massa VARCHAR(255),
borda VARCHAR(255),
numero INT,
categorias_id bigint,

	PRIMARY KEY(id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id AND tb_categorias.tipo_categoria = "Doce";

