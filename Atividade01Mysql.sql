/*
comentario por
bloco
**/

-- exemplo de comentario em linha


-- criar um banco de dados
CREATE DATABASE db_rhgeneration;

-- indica o banco de dados a ser utilizado/manipulado
USE db_rhgeneration;


CREATE TABLE tb_funcionarios(

    id BIGINT auto_increment,
    
    -- MANEIRA DE REFERENCIAR A PRIMARY KEY id id BIGINT auto_increment
	nome VARCHAR(255),
    
    -- podemos usar o decimal quando estamos trabalhando com dinheiro
	salario DECIMAL(9,2),
	setor VARCHAR(255),
    matricula INT,
    
    -- segunda forma de referenciar a primary key
    primary key (id)
);


-- traz todos os dados da tabela de funcionarios
SELECT * FROM tb_funcionarios;


SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;



INSERT INTO tb_funcionarios(nome, salario, setor, matricula)VALUES("Jess", 9000.90, "Tecnologia", 01);

/*
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
**/

UPDATE tb_funcionarios
SET nome = "Leticia"
WHERE id = 6;

DELETE FROM tb_funcionarios WHERE id = 3;

