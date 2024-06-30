CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

/*CREATE TABLE tb_categorias(
id INT auto_increment,
nome VARCHAR(50) not null,
descricao VARCHAR(255),
PRIMARY KEY (id)
);*/

/*INSERT INTO tb_categorias(nome, descricao)
VALUES  ('Higiene Pessoal', 'Produtos de cuidado pessoal e higiene'),
('Suplementos', 'Suplementos alimentares e nutricionais'),
('Cuidados com a Saúde', 'Produtos para manutenção da saúde'),
('Primeiros Socorros', 'Itens essenciais para primeiros socorros'),
('Cuidados para Bebês', 'Produtos específicos para cuidados com bebês');*/
SELECT * FROM tb_categorias;


/*CREATE TABLE tb_produtos(
id INT auto_increment PRIMARY KEY,
nome VARCHAR(255) not null,
descricao TEXT,
preco DECIMAL(8,2) NOT NULL,
id_categoria INT,
foreign key (id_categoria) REFERENCES tb_categorias(id)
); */


/*INSERT INTO tb_produtos( nome, descricao, preco, id_categoria)
VALUES('Protetor Solar FPS 50', 'Protege contra raios UVA e UVB', 70.00, 4),
('Creme Facial Antirrugas', 'Hidratação intensiva e redução de rugas', 130.00, 4),
('Enxaguante Bucal', 'Antisséptico bucal com sabor refrescante', 9.90, 1), 
('Fralda Turma da Mônica', 'Baby Jumbo G 24 Unidades', 26.00, 5), 
('Cremes Pomada', ' 3 UNID Assadura 120gr Cada - Bepantol' ,159.00, 1),
('Johnsons Baby Colônia', 'Refrescante Lavanda Para Bebês,200ml', 135.00,5), 
('Ômega 3', 'Suplemento de ácidos graxos essenciais', 85.00, 2);*/ 
SELECT * FROM tb_produtos;
/* Auteração  dos dados da table produtos  (id_categoria) usando o comando Update
UPDATE tb_produtos SET id_categoria = (SELECT id FROM tb_categorias WHERE nome = 'Higiene Pessoal')
WHERE nome = 'Enxaguante Bucal';*/
/*UPDATE tb_produtos SET id_categoria = (SELECT id FROM tb_categorias WHERE nome = 'Cuidados para Bebês')
WHERE nome = 'Fralda Turma da Mônica';*/
/*UPDATE tb_produtos SET id_categoria = (SELECT id FROM tb_categorias WHERE nome = 'Higiene Pessoal')
WHERE nome = 'Cremes Pomada';*/
/*UPDATE tb_produtos SET id_categoria = (SELECT id FROM tb_categorias WHERE nome = 'Cuidados para Bebês')
WHERE nome = 'Johnsons Baby Colônia';*/


SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 100.00;

/* retornando valores da tabela..
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;*/

/*retornando itens da tb_produtos que contem letra c no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%c%';*/

/*unindo as tabelas p = produtos.e c= categorias e renomendo a c. para categorias
SELECT  P.*, c.nome AS nome_categoria FROM tb_produtos p INNER JOIN tb_categorias c
ON p.id_categoria = c.id;*/

/* unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias*/
SELECT p.*, c.nome AS nome_categoria, c.descricao AS descricao_categoria 
From tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id 
WHERE c.nome = "Cuidados para Bebês";
