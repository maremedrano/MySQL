create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint auto_increment,
    tipo varchar(20) not null,
    tamanho varchar(20) not null,
    vegetariana boolean not null,
    
    primary key(id_categoria)
);

create table tb_pizza (
	id_pizza bigint auto_increment,
    sabor varchar(50) not null,
    refrigerante varchar(20) not null,
    azeitona boolean not null,
    valor decimal(10,2) not null,
    borda varchar(20) not null,
    fk_id_categoria bigint not null,
    
    primary key(id_pizza),
    foreign key(fk_id_categoria) references tb_categoria(id_categoria)
    );
    
    insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "grande", false);
	insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "pequena", true);
	insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "media", false);
	insert into tb_categoria(tipo, tamanho, vegetariana) values ("doce", "pequena", true);
	insert into tb_categoria(tipo, tamanho, vegetariana) values ("doce", "grande", true);
    
    select * from tb_categoria;
    
    insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Catumilho", "Coca-cola", true, "Cheddar", 24.90, 2);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Calabresa", "Sprite", true, "Catupiry", 45.90, 1);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Prestígio", "Não", false, "Não", 19.90, 5);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Chocolate", "Não", false , "Não", 19.90, 5);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Caipira", "Guaraná", true, "Não", 49.90, 1);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Brócolis", "H2OH", true, "Catupiry", 38.90, 1);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Palmito", "Não", false, "Não", 24.90, 2);
	insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, fk_id_categoria) values ("Nordestina", "Fanta uva", false, "Catupiry", 43.90, 3);
    
    -- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
	select * from tb_pizza where valor > 45;

	-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
	select * from tb_pizza where valor between 29 and 60;

	-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
	select * from tb_pizza where sabor like "%C%";

	-- Faça um um select com Inner join entre tabela categoria e pizza.
	select * from tb_pizza inner join tb_categoria on tb_categoria.id_categoria = tb_pizza.id_pizza;

	-- Faça um select onde traga todos os Produtos de uma categoria específica
	select * from tb_pizza inner join tb_categoria on tb_categoria.id_categoria = tb_pizza.id_pizza where tipo like "%doce%";