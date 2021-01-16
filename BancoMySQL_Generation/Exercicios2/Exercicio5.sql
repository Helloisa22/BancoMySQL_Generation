-- Atividade 5

-- Criando o banco 
create database db_construindo_a_nossa_vida;

-- Criando tabelas
create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(255) not null, 
ativo boolean not null,
primary key(id)
);

drop table tb_categoria;

-- Inserindo informações na tabela
insert tb_categoria(tipo, ativo) values("Pedreiro", true);
insert tb_categoria(tipo, ativo) values("carpinteiro", true);
insert tb_categoria(tipo, ativo) values("eletricista", true);
insert tb_categoria(tipo, ativo) values("marceneiro", true);
insert tb_categoria(tipo, ativo) values("Funileiro", true);

-- abrindo a tabela
select * from tb_categoria;

-- Criando taela produto
create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
cor varchar(20) not null,
tamanho varchar(255) not null,
valor decimal (10,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- Populando tabela
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Marreta", "Cinza", "Medio", 12.90, 5);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Andaime", "Amarelo", "Grande", 1200.00, 1);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Alicate", "Bege", "Pequeno", 8.90, 3);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Betoneira", "Cinza", "Medio", 24.50, 4);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Lixadeira", "Preto", "Pequeno", 2.50, 4);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Parafusadeira", "Verde", "Medio", 120.90, 1);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Trena", "Preto", "Pequeno", 12.90, 5);
insert tb_produto(nome, cor, tamanho, valor, categoria_id) values ("Esmerilhadeira", "Amarelo", "Medio", 70.40, 2);

-- Adicionando tabela
select * from tb_produto;

-- Produtos com valores maior que 50
select * from tb_produto where valor > 50;

-- Selceionar valores entre 3 e 60
select * from tb_produto where valor >= 3 && valor < 60;

-- Tazer palavras com a letra C
select * from tb_produto where nome like "C%";

-- inner join
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;




