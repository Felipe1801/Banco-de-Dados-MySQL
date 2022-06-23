CREATE DATABASE db_registroescola;

USE db_registroescola;

CREATE TABLE tb_estudantes(

id BIGINT auto_increment,

nome VARCHAR(255),
idade INT,
ano INT,
nota DECIMAL (9,2),

primary key (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Felipe", 17, 3, 9.5);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Lucas", 18, 3, 8.5);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Leticia", 16, 2, 9.9);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Luana", 15, 1, 8.5);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Pedro", 11, 5, 6.5);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Bruno", 12, 6, 5.8);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Ana", 8, 2, 4.5);
INSERT INTO tb_estudantes(nome, idade, ano, nota)VALUES("Natalia", 7, 1,6.9);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nome = "Mauricio"
WHERE id = 6;