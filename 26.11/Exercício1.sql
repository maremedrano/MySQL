-- Criando banco de dados
create database db_generation_game_online;

-- Selecionando banco de dados para utilizar
use db_generation_game_online;

-- Criando primeira tabela
create table tb_classe(
	id_classe bigint(5) auto_increment,
    xp decimal(4,1) not null,
    nivel int(3) not null,
    poder varchar(20) not null,
    
    primary key (id_classe));

-- Populando primeira tabela
insert into tb_classe (xp, nivel, poder) values (100.0, 10, "Magia");
insert into tb_classe (xp, nivel, poder) values (229.5, 15, "Força"); 
insert into tb_classe (xp, nivel, poder) values (314.7, 22, "Inteligência"); 
insert into tb_classe (xp, nivel, poder) values (500.5, 30, "Flexibilidade"); 
insert into tb_classe (xp, nivel, poder) values (99.9, 9, "Velocidade"); 

-- Criando segunda tabela
create table tb_personagem(
	id_personagem bigint(5) auto_increment,
    nome varchar(20) not null,
    profissão varchar(20) not null,
    ataque bigint(4) not null,
    defesa bigint(4) not null,
    fk_id_classe bigint not null, 
    
    primary key (id_personagem),
    foreign key (fk_id_classe) references tb_classe (id_classe));
    
-- Populando segunda tabela
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Jorge", "mago", 2000, 3000, 1);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Maria", "feiticeira", 1500, 2000, 1);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Jorge", "lenhador", 4000, 1800, 2);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Eva", "exploradora", 1500, 1600, 4);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Tobias", "mensageiro", 2000, 1500, 5);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Sarah", "caçadora", 4000, 2000, 2);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Sabrina", "alquimista", 2500, 3000, 3);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Helio", "estrategista", 1000, 1000, 3);
insert into tb_personagem (nome, profissão, ataque, defesa, fk_id_classe) values ("Cássia", "contadora", 2000, 1500, 3);


-- Select que retorna os personagens com o poder de ataque maior do que 2000
select * from tb_personagem where ataque >= 2000;

-- Select que retorna os personagens com o poder de defesa entre 1000 e 2000
select * from tb_personagem where ataque between 1000 and 2000;

-- Select que retorna os personagens com letra C
select * from tb_personagem where nome like '%C%';

-- Select com inner join entre tabela, classe e personagem
select * from tb_personagem
	inner join tb_classe on tb_personagem.fk_id_classe = tb_classe.id_classe;

-- Select com todos os personagens de uma classe específica
select * from tb_personagem where fk_id_classe like '3';
