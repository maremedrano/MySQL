create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint(5) auto_increment,
nome varchar(30) not null,
idade bigint(2) not null,
cargo varchar(20) not null,
salario decimal(10,2) not null,
ativo boolean,

primary key (id)
);

insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Mariana", 25, "Desenvolvedora Java", 5000.00, true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Pedro", 32, "Desenvolvedor Java", 5000.00, true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Fernanda", 20, "Secretária", 3000.00, true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Rafael", 50, "Gerente", 1200.00, true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Gabriela", 42, "Presidente", 15000.00, true);
insert into tb_funcionarios (nome, idade, cargo, salario, ativo) values ("Sandro", 20, "Office boy", 1800.00, true);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update into tb_funcionarios set salario = 1900.00 where id = 6;
