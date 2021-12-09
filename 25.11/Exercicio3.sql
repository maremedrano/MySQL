create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    media decimal(3,1) not null,
    modulo int not null,
    turma varchar(1) not null,
    
    primary key (id)
);

insert into tb_estudantes (nome, media, modulo, turma) value ("Mariana", 10.0, 2, "A");
insert into tb_estudantes (nome, media, modulo, turma) value ("Catarina", 9.5, 1, "R");
insert into tb_estudantes (nome, media, modulo, turma) value ("Rafaela", 8.5, 3, "C");
insert into tb_estudantes (nome, media, modulo, turma) value ("Gustavo", 10.0, 2, "V");
insert into tb_estudantes (nome, media, modulo, turma) value ("Heloísa", 5.9, 2, "B");
insert into tb_estudantes (nome, media, modulo, turma) value ("Sabrino", 2.5, 1, "T");
insert into tb_estudantes (nome, media, modulo, turma) value ("Lucas", 10.0, 3, "U");
insert into tb_estudantes (nome, media, modulo, turma) value ("Daniela", 7.5, 2, "I");

select * from tb_estudantes where media > 7.0;
select * from tb_estudantes where media < 7.0;

update tb_estudantes set media = 10.0 where id = 2;

