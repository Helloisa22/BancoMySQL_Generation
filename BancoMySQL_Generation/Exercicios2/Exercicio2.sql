-- Atividade 2

-- Criando banco
create database db_pizzaria_legal;

-- criando tabela tb_categoria
create table tb_categoria(
id bigint(255) auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key(id)
);

-- Inserindo informações na tabela tb_categoria
insert tb_categoria(descricao, ativo) values ("Pizza Salgada",true);
insert tb_categoria(descricao, ativo) values ("Pizza Doce",true);
insert tb_categoria(descricao, ativo) values ("Brotinho",true);
insert tb_categoria(descricao, ativo) values ("Esfiha Salgada",true);
insert tb_categoria(descricao, ativo) values ("Esfiha Doce",true);

-- mostrando tabela tb_categoria
select * from tb_categoria;

-- Criando a tabela tb_pizza
create table tb_pizza(
id bigint(5) auto_increment,
sabor varchar(255) not null,
tamanho varchar(20) not null,
qtproduto int(2) not null,
valor decimal(10,2) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- Inserindo informações na tabela tb_pizza
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Calabresa", "Grande", 10, 50.00, 1);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Mussarela", "Pequena", 10, 29.99, 1);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Bacon", "Pequena", 10, 35.00, 4);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Nutella", "Grande", 10, 20.00, 2);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Catupiry", "Grande", 10, 39.99, 1);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Chocolate", "Pequena", 10, 23.99, 5);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Brocolis", "Grande", 10, 48.00, 1);
insert tb_pizza (sabor, tamanho, qtproduto, valor, categoria_id) values ("Romeu e Julieta", "Pequena", 10, 56.00, 3);

-- Selecionar produtos com valor acima de 45
select id, sabor, valor from tb_pizza where valor > 45;

-- Selecionar produtos com valor entre 29 e 60
select id, sabor, valor from tb_pizza where valor >= 29 && valor = 60;

-- Selecionar produtos que contém a letra C
select id, sabor, valor from tb_pizza where sabor like "C%";

-- Inner join em produtos em comum
select tb_pizza.id , sabor, valor, tb_categoria.descricao as tipo_de_pizza from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;


select nome, preco, qtProduto, tb_categoria.descricao ,tb_categoria.ativo
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
