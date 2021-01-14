-- Atividade 3

-- Usando banco de dados
Use bancodeteste;

-- criando tabela aluno
create table tb_aluno(
id_aluno bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
periodo varchar(20) not null,
ensino varchar (100) not null,
primary key(id_aluno)
);

alter table tb_aluno
	drop column ensino;

alter table tb_aluno
	add column nota int;
    
-- Selecionando a tabela aluno
select * from tb_aluno;

-- Inserindo dados na tabela
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Alexandre", 16 , "Manhã", 7);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Anna", 13 , "Manhã", 5);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Flavia", 17 , "Trade", 8);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Marcos", 12 , "Tarde", 9);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Matheus", 14 , "Manhã", 6);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Felipe", 7 , "Tarde", 4);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Maria", 10 , "Tarde", 5);
insert into tb_aluno (id_aluno, nome, idade, periodo, nota) values (not null, "Marcia", 5 , "Manhã", 6);

-- Retorna alunos com nota maior que 7
select nome, nota from tb_aluno where nota > 7;

-- Retorna alunos com nota menor que 7
select nome, nota from tb_aluno where nota < 7;

-- Alterar informações na tabela
update tb_aluno set nota = 8 where id_aluno = 1;