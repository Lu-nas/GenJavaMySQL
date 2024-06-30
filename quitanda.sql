
/*CREATE DATABASE db_quitanda;
Use db_quitanda;*/


/*CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL(10,2) NOT NULL,
PRIMARY KEY(id)
);*/

/*INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco)
VALUES("tomate", 100, "2024-12-15", 8.00),
	  ("maçã", 20, "2024-12-15", 5.00),
	  ("laranja", 50, "2024-12-15", 10.00),
	  ("banana", 200, "2024-12-15", 12.00),
	  ("uva", 1200, "2024-12-15", 30.00),
	  ("pêra", 500, "2024-12-15", 2.99);*/

 
/* CREATE TABLE tb_categorias(
 id BIGINT auto_increment PRIMARY KEY,
 descricao VARCHAR(255) NOT NULL
 );*/
 
 /*INSERT INTO tb_categorias (descricao)
 VALUES ("Futas"),("Verduras"),("Legumes"),("Temperos"),("Ovos"),("Outros");
 SELECT * FROM tb_categorias;*/
 
 
 /*ALTER TABLE tb_produtos ADD categoriaid BIGINT;
 
 ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
 FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);
 SELECT * FROM tb_produtos*/


/*UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;*/


/*INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3),
	   ("Alface", 300, "2022-03-10", 7.00, 2),
       ("Cebola", 1020, "2022-03-08", 5.00, 3),
       ("Ovo Branco", 1000, "2022-03-07", 15.00, 5),
       ("Agrião", 1500, "2022-03-06", 3.00, 2),
       ("Cenoura", 1800, "2022-03-09", 3.50, 3),
       ("Pimenta", 1100, "2022-03-15", 10.00, 4),
       ("Alecrim", 130, "2022-03-10", 5.00, 4),
       ("Manga", 200, "2022-03-07", 5.49, 1),
       ("Couve", 100, "2022-03-12", 1.50, 2),
       ("Rabanete", 1200, "2022-03-15", 13.00, 3),
       ("Grapefruit", 3000, "2022-03-13", 50.00, 1);
       INSERT INTO tb_produtos (nome, quantidade, preco)
       VALUES ("Sacola Cinza", 1118, 0.50),
       ("Sacola Verde", 1118, 0.50); */
      /* SELECT * FROM tb_produtos ORDER BY nome ASC;*/
      
     /* SELECT * FROM tb_produtos ORDER BY nome DESC;*/
     
    /* SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);*/
       
    /* SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;*/
     /* realizando uma busca por silaba
     SELECT * FROM tb_produtos WHERE nome LIKE "%ra%"; */
     
     /*SELECT @@collation_database;*/
     
     /* selecionando as funcoes matematicas: */
     /*SELECT AVG(Preco) AS Media FROM tb_produtos;*/
     
 
