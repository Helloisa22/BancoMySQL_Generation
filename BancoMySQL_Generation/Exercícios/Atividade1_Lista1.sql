-- Atividade 1

-- Usando banco de dados
use bancodeteste;

-- criando tabela funionarios
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(255) not null,
salario float not null,
primary key(id)
);

-- populando tabelas do funcionario
insert into tb_funcionario (nome, idade, cargo, salario) values ("Juliana",26, "Analista de TI JAVA Jr", 6000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Guilherme",2, "DevOps", 10000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Pedro",19, "Estagiario Financeiro", 2000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Paula",24, "Infra", 8000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Raul",23, "DBA", 7000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Emma",28, "Desenvolvedora Front-End Pleno", 12000);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Joao",17, "Desenvolvedora Front-End Jr", 1400);
insert into tb_funcionario (nome, idade, cargo, salario) values ("Patricia",16, "Jovem aprendiz", 1100);

-- Mostrando tabela funcionario
select * from tb_funcionario;

-- retornar funcionario com salario até 2000
select nome, cargo, salario from  tb_funcionario where salario > 2000;

-- retornar funcionario com salario até 2000
select nome, cargo, salario from tb_funcionario where salario < 2000;

-- atualizar um dado da tabela
update tb_funcionario set salario = 1900, cargo = "RH pessoal" where id = 8;