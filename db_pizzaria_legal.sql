/*CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;*/

/*CREATE TABLE tb_categorias(
id INT auto_increment,
nome VARCHAR(50) not null,
descricao VARCHAR(255),
PRIMARY KEY (id)
);*/

/*INSERT INTO tb_categorias( nome, descricao)
VALUES('Salgadas', 'Pizzas salgadas com diversos sabores e ingredientes'),
('Doces', 'Pizzas doces com coberturas de chocolate, frutas, etc.'),
('Vegetarianas', 'Pizzas vegetarianas com ingredientes como legumes e cogumelos'),
('Especiais', 'Pizzas especiais com ingredientes gourmet e combinações únicas'),
('Bebidas', 'Opções de bebidas para acompanhar as pizzas');*/
SELECT * FROM tb_categorias;

/*CREATE TABLE tb_pizzas(
id INT auto_increment PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(8,2) not null,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);*/


/*INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES
('Calabresa', 'Molho de tomate, queijo mussarela, calabresa fatiada, cebola e azeitonas', 64.62, 1),
('Margherita', 'Molho de tomate, queijo mussarela, tomate e manjericão fresco', 54.90, 1),
('Chocolate com Morango', 'Chocolate ao leite, morangos frescos e cobertura de chocolate branco', 48.00, 2),
('Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo gorgonzola, queijo parmesão e queijo catupiry', 50.20, 1),
('Vegetariana', 'Molho de tomate, queijo mussarela, pimentão, cebola, tomate, champignon e azeitonas', 72.80, 3),
('Especial da Casa', 'Combinação exclusiva de ingredientes gourmet', 99.00, 4),
('Frango com Catupiry', 'Molho de tomate, queijo mussarela, frango desfiado, catupiry e azeitonas', 55.00, 1),
('Bebida Refrigerante 1000ml', 'Refrigerante Coca-cola ou Pepsi', 14.00, 5);*/



SELECT * FROM tb_pizzas;

/*ELECT * FROM tb_pizzas WHERE preco > 45.00;*/

/*SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;*/

/*SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';*/

/* unindo as tabelas p = pizzas.e c= categorias e renomendo a c. para categorias

SELECT  P.*, c.nome AS nome_categoria FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.id_categoria = c.id;*/

/* trazendo apenas as pizzas de uma categoria especifica

SELECT p.*, c.nome AS nome_categoria From tb_pizzas p 
INNER JOIN tb_categorias c ON p.id_categoria = c.id 
WHERE c.nome = "Doces";*/
