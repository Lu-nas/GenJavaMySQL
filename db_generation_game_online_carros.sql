/*CREATE DATABASE db_generation_game_online;
USE db_generation_game_online*/

/*CREATE TABLE tb_classes(
id INT auto_increment,
nome VARCHAR(255) not null,
pais VARCHAR(50) not null,
nivel_dificuldade VARCHAR(50),
PRIMARY KEY (id)
);*/

/*INSERT INTO tb_classes (nome, pais, nivel_dificuldade) 
VALUES ("Mercedes", "Alemanha","Dificil"),
("Ferrari", "Italia", "Mederado" ),
("McLarem", "Reino Unido", "Normal"),
("Aston Martin", "Hungria", "facil"),
("Red Bull", "Australia", "Normal");	*/
SELECT * FROM tb_classes;


/*CREATE TABLE tb_personagens(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
ano INT not null,
Velocidade_Max INT not null,
potencia_aerodinamica INT not null,
id_classe INT,
FOREIGN KEY (id_classe) REFERENCES tb_classes (id)
);*/

SELECT * FROM tb_personagens;
ALTER TABLE tb_personagens CHANGE COLUMN Velocidade_Max velocidade_max INT NOT NULL;

/*INSERT INTO tb_personagens(nome, ano, velocidade_max, potencia_aerodinamica,id_classe)
VALUES('Mercedes W12', 2021, 360, 2500, 1),
('Ferrari SF21', 2021, 350, 2400, 2),
('McLaren MCL35M', 2021, 340, 2300, 3),
('Aston Martin AMR21', 2021, 335, 2200, 4),
('Red Bull RB16B', 2021, 355, 2600, 5),
('Mercedes W11', 2020, 365, 2550, 1),
('Ferrari SF1000', 2020, 345, 2350, 2),
('McLaren MCL34', 2019, 330, 2150, 3);*/

/*SELECT * FROM tb_personagens WHERE potencia_aerodinamica < 2000;*/

SELECT * FROM tb_personagens WHERE potencia_aerodinamica BETWEEN 1000 AND 2000;

/*SELECT * FROM tb_personagens WHERE nome LIKE '%c%';*/

/*SELECT  P.*, c.nome AS nome_classe, c.pais FROM tb_personagens p INNER JOIN tb_classes c 
ON p.id_classe = c.id;*/

SELECT p.*, c.nome AS nome_classe,c.pais FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'mercedes';