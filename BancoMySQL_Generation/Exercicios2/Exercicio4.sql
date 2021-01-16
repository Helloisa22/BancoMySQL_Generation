 -- acessa o banco de dados
use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- insere dados na tabela
insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("imbutidos",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

-- busca 
select * from tb_categoria;

-- cria a tabela
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",62.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",70.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",20.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",55.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);

select nome, preco from tb_produtos where preco > 50;


select id, nome, preco from tb_produtos where preco > 3 && preco <= 60;

select id, nome, preco from tb_produtos where nome like "C%";

-- inner join
select nome, preco, qtProduto, tb_categoria.descricao,tb_categoria.ativo
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;