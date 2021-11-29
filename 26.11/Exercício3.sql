create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria bigint auto_increment,
    receita boolean not null,
    categoria varchar(20) not null,
    laboratorio varchar(20) not null,
    
    primary key (id_categoria)
);

create table tb_produto(
	id_produto bigint auto_increment,
    nome varchar (20) not null,
    quantidade bigint (5) not null,
    valor decimal (10,2) not null,
    tipo varchar(20) not null,
    fk_id_categoria bigint not null,
    
    primary key (id_produto),
    foreign key (fk_id_categoria) references tb_categoria(id_categoria)
);

insert into tb_categoria(categoria, receita, laboratorio) values ("Remédio", false, "Cimed");
insert into tb_categoria(categoria, receita, laboratorio) values ("Perfumaria", false, "Eudora");
insert into tb_categoria(categoria, receita, laboratorio) values ("Remédio", false, "Medley");
insert into tb_categoria(categoria, receita, laboratorio) values ("Perfumaria", false, "L'Oreal");
insert into tb_categoria(categoria, receita, laboratorio) values ("Remédio", true, "Euro Farma");

insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Omeprazol", 20, 21.90, "Comprimido", 1);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Shampoo", 1, 18.90, "Higiene pessoal", 2);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Protetor facial", 1, 54.90, "Cuidados pessoais", 4);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Cimegripe", 20, 19.90, "Capsula", 1);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Base liquida", 1, 49.90, "Maquiagem", 2);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Amoxicilina", 16, 20.90, "Capsula", 5); 
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Perfume Diva", 1, 99.90,"Spray", 2);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categoria) values ("Dipirona", 10, 9.90, "Comprimido", 1);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%B%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_id_categoria where categoria like "%Perfumaria%";