-- Atividade 1

-- Criando banco de dados
create database db_generation_game_oline;

-- Criando tabela tb_classe
create table tb_classe(
id bigint(5) auto_increment,
funcao varchar(255) not null,
campeao varchar(255) not null,
primary key(id)
);

-- Inserindo dados na tabela tb_classe
insert tb_classe (funcao, campeao) values ("Jogador premiun", "12");
insert tb_classe (funcao, campeao) values ("Jogador medium", "6");
insert tb_classe (funcao, campeao) values ("Iniciante", "3");
insert tb_classe (funcao, campeao) values ("Jogador Master", "10");
insert tb_classe (funcao, campeao) values ("Jogador Macro", "8");

-- Mostrando tabela tb_classe
select * from tb_classe;

-- criando tabela tb_funcionario
create table tb_funcionario(
id bigint(5) auto_increment,
nome_jogador varchar(255) not null,
ataque int not null,
defesa int not null,
jogos int not null,
classe_id bigint,
primary key(id),
foreign key(classe_id)  references tb_classe(id)
);

-- Inserindo informações na tabela tb_funcionario
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Mauricio", 3050, 3700, 15, 4);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Marta", 1200, 1250, 7, 3);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Pamela", 2700, 2900, 14, 5);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Cintia", 4000, 3700, 18, 1);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Pedro", 1100, 1200, 7, 3);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Marcelo", 2200, 2250, 10, 2);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Mariana", 2080, 2450, 9, 2);
insert tb_funcionario (nome_jogador, ataque, defesa, jogos, classe_id) values ("Paula", 5200, 5250, 22, 1);

-- Visualizar dados da tabela tb_funcionario
select * from tb_funcionario;


-- Selecionar pessoas com pode de ataque maior que 2000
select id, nome_jogador, ataque from tb_funcionario where ataque > 2000;

-- Selecionar pessoas com defesa entre 1000 e 2000
select id, nome_jogador, defesa from tb_funcionario where defesa >= 1000 && defesa <= 2000;

-- Fazer um Like com pessoa que o nome começa com a letra C
select nome_jogador from tb_funcionario where  nome_jogador like "%C%";


select nome, preco, qtProduto, tb_categoria.descricao ,tb_categoria.ativo
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 select nome_jogador, tb_classe.funcao ,tb_classe.campeao from tb_funcionario inner join tb_classe on tb_classe.id = tb_funcionario.classe_id;
 
 
 



