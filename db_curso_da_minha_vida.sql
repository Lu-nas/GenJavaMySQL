/*CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;*/

/*CREATE TABLE tb_categorias(
id INT auto_increment,
nome VARCHAR(50) NOT NULL, 
descricao VARCHAR(255),
PRIMARY KEY(id)
);*/

/*INSERT INTO tb_categorias(nome, descricao)
VALUES('Programação', 'Cursos sobre linguagens de programação e desenvolvimento de software'),
('Design', 'Cursos sobre design gráfico, web design e UX/UI'),
('Negócios', 'Cursos sobre administração, finanças e empreendedorismo'),
('Marketing', 'Cursos sobre marketing digital, SEO e publicidade'),
('Idiomas', 'Cursos de idiomas estrangeiros como inglês, espanhol e francês');
*/
SELECT * FROM tb_categorias;

/*CREATE TABLE tb_cursos(
id INT auto_increment PRIMARY KEY,
nmome varchar(100) NOT NULL,
descricao TEXT,
preco DECIMAL(8,2) NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);*/
ALTER TABLE tb_cursos CHANGE nmome nome VARCHAR(100);

/*INSERT INTO tb_cursos(nome, descricao, preco, id_categoria)
VALUES('Curso de JAVA', 'Aprenda JAVA do básico ao avançado', 750.00, 1),
('Curso de  python', 'Aprenda python do básico ao avançado', 750.00, 1),
('Curso de Design Gráfico', 'Adobe Photoshop, Illustrator e InDesign', 650.00, 2),
('Curso de Marketing Digital', 'Técnicas de SEO, SEM e redes sociais', 800.00, 4),
('Curso de Inglês', 'Inglês básico ao avançado', 1200.00, 5),
('Curso de Finanças Pessoais', 'Controle seu orçamento e investimentos', 550.00, 3),
('Curso de Desenvolvimento Web', 'HTML, CSS, JavaScript e frameworks', 900.00, 1),
('Curso de Fotografia', 'Técnicas de fotografia e edição de imagens', 700.00, 2),
('Curso de Espanhol', 'Espanhol básico ao avançado', 600.00, 5);*/
SELECT * FROM tb_cursos;

/*SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';*/

/*SELECT c.*, cat.nome AS nome_categoria, cat.descricao AS descricao_categoria
FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id;*/

SELECT c.*, cat.nome AS nome_categoria, cat.descricao AS descricao_categoria
FROM tb_cursos c INNER JOIN tb_categorias cat ON c.id_categoria = cat.id
where cat.nome = "programação";
