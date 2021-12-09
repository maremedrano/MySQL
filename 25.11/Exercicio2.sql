create database db_commerce;

use db_commerce;

create table tb_produtos(
	id bigint(5) auto_increment,
	nome varchar(20) not null,
    categoria varchar(20) not null,
    valor decimal(10,2) not null,
    disponivel boolean,
    
    primary key (id)
);

insert into tb_produtos (nome, categoria, valor, disponivel) values ("Leite", "Laticínios", 3.89, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Banana", "Vegetais", 4.99, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Salmão", "Peixes", 89.90, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Amaciante", "Limpeza", 7.99, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Arroz", "Mercearia", 22.90, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Sabonete", "Higiente", 2.75, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Farinha", "Mercearia", 4.90, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Carne moída", "Açougue", 23.90, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Smartphone", "Eletrônicos", 1100.90, true);
insert into tb_produtos (nome, categoria, valor, disponivel) values ("Microondas", "Eletrodomésticos", 600.00, true);

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set valor = 550.00 where id = 10;
