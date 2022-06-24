CREATE DATABASE db_rh2;

USE db_rh2;

SELECT * FROM tb_funcionarios;

INSERT INTO tb_setor(nome_setor)VALUES("Administração");
INSERT INTO tb_setor(nome_setor)VALUES("Tecnologia");
INSERT INTO tb_setor(nome_setor)VALUES("financeiro");



-- a criação da tabela setor precisa ser criada antes da tabela funcionarios
CREATE TABLE tb_setor(
	id BIGINT auto_increment,
    nome_setor VARCHAR(255),
    
    PRIMARY KEY(id)

);

INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Joao", 2000, 1, 3);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Jose", 3000, 2, 2);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("maria", 4000, 3, 1);
-- a criaçao da tabela de funcionarios
CREATE TABLE tb_funcionarios(
	
	id BIGINT auto_increment,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    matricula INT,
    setor_id bigint,
    
    PRIMARY KEY(id),
    FOREIGN KEY (setor_id) REFERENCES tb_setor(id)
);

SELECT * FROM tb_funcionarios INNER JOIN tb_setor
ON tb_setor.id = tb_funcionarios.setor_id;
