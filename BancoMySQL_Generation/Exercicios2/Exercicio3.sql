-- Atividade 3

-- Criando banco de dados
create database db_farmacia_do_bem;

-- Criando tabela
create table tb_categoria(
id bigint(5) auto_increment,
uso varchar(255) not null,
ativo boolean,
primary key(id)
);

-- Adicionando informações na tabela tb_categoria
insert tb_categoria(uso, ativo) values ("Adulto     (18 anos até 50 anos) ", true);
insert tb_categoria(uso, ativo) values ("Infantil    (1 ano até 5 anos)", true);
insert tb_categoria(uso, ativo) values ("Idosos     (acima de 51 anos)", true);
insert tb_categoria(uso, ativo) values ("Infantil 2 (6 anos até 10)", true);
insert tb_categoria(uso, ativo) values ("juvenil     (11 até 17 anos)", true);

-- Visualizar a tabela tb_categoria
select * from tb_categoria;

-- Criando tabela
create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
valor decimal (10,2) not null,
qtdproduto_principal int(5) not null,
qtd_caixa int(5) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

-- Inserindo dados na tabela
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Paracetamol", 29.99, 120, 10, 1);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Acetazolamida", 70.00, 120, 10, 5);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Vardenafila", 55.00, 120, 10, 5);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Acetilcisteína", 40.99, 120, 10, 3);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Sunitinibe", 22.00, 120, 10, 2);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Budesonida", 37.00, 120, 10, 4);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Ampicilina", 28.70, 120, 10, 1);
insert tb_produto (nome, valor, qtdproduto_principal, qtd_caixa, categoria_id) values ("Dinoprostona", 120.00, 120, 10, 2);

-- Selecionar produtos com valor maior que 50
select id, nome, valor from tb_produto where valor > 50;

-- Selecionar produtos com valor entre 3 e 60 reais
select id, nome, valor from tb_produto where valor > 3 && valor < 60;

-- Trazer produtos com a letra B
select * from tb_produto where nome like "B%";

-- Inner Join 
select tb_produto.id, nome, valor, tb_categoria.uso from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
