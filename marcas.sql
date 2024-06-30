# Criar Banco de Dados 
/*CREATE TABLE tb_marcas(
id bigint auto_increment,
nome varchar(20) not null,
ativo boolean, 
primary key (id)
);*/

INSERT INTO tb_marcas(nome, ativo) VALUES ("nike", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("H&M", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Zara", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Louis Viltton", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Adidas", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Uniqlo", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Hermès", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Rolex", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Gucci", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Cartier", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Polo", true);
INSERT INTO tb_marcas(nome, ativo) VALUES ("Armany", true); 

# select * from tb_marcas

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(30) not null,
preco decimal,
marca_id bigint not null,
 primary key (id),
foreign key (marca_id) references tb_marcas(id)
 );
# select * from tb_produtos

insert into tb_produtos(nome, preco, marca_id) values("camisa", 50, 1);
insert into tb_produtos(nome, preco, marca_id) values("tênis", 199.99, 2);
select * from tb_produtos;

alter table tb_produtos modify column preco decimal (6,2);
select * from tb_produtos;

insert into tb_produtos(nome, preco, marca_id) values("calça", 79.80, 3);
select * from tb_produtos;

/*select* from tb_produto where marca_id = 5 and nome like '%cal%' */


/* apagar tabela*/
DROP TABLE tb_produtos;




     
     


