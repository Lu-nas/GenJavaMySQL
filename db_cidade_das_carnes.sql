CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

/*CREATE TABLE tb_categorias(
id INT auto_increment,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(255),
 PRIMARY KEY (id)
 );*/
 
/*INSERT INTO tb_categorias(nome, descricao)
 VALUES('Carnes Bovinas', 'Produtos derivados de carne bovina'),
('Carnes de Frango', 'Produtos derivados de carne de frango'),
('Embutidos', 'Produtos embutidos como linguiças e salsichas'),
('Carnes Suínas', 'Produtos derivados de carne suína'),
('Outros Produtos', 'Outros produtos de carne não especificados');*/
SELECT * FROM tb_categorias;

/*CREATE TABLE tb_produtos(
id INT auto_increment PRIMARY KEY,
nome VARCHAR(100) not null,
descricao VARCHAR(255)
preco DECIMAL(8,2) not null,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
); */

 
/*INSERT INTO tb_produtos(nome, descricao, preco, id_categoria)
VALUES('Picanha', 'Corte nobre de carne bovina', 120.00, 1),
('Filé de Frango', 'Filé de peito de frango', 30.00, 2),
('Linguiça Calabresa', 'Linguiça feita de carne suína', 25.00, 3),
('Costela Suína', 'Costela de porco temperada', 70.00, 4),
('Alcatra', 'Carne bovina de primeira', 90.00, 1),
('Coxa de Frango', 'Coxa de frango fresca', 20.00, 2),
('Presunto', 'Presunto cozido fatiado', 50.00, 3),
('Lombo Suíno', 'Lombo de porco temperado', 60.00, 4);*/

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

/* retornando valores da tabela..
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;*/

/*retornando itens da tb_produtos que contem letra c no atributo nome

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';*/

/* unindo as tabelas p = produtos.e c= categorias e renomendo a c. para categorias
SELECT  P.*, c.nome AS nome_categoria FROM tb_produtos p INNER JOIN tb_categorias c
ON p.id_categoria = c.id;*/

/* unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT p.*, c.nome AS nome_categoria From tb_produtos p 
INNER JOIN tb_categorias c ON p.id_categoria = c.id 
WHERE c.nome = "Carnes de Frango";*/

