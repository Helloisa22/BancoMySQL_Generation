-- Atividade 2

-- Usando banco de dados
Use bancodeteste;

create table tb_func_ecommerce(
id bigint(5) auto_increment,
nome_produto varchar(255) not null,
valor float not null,
quantidade int not null,
tipo_produto varchar(100) not null,
primary key(id)
);

-- Inserindo dados na tabela
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac balas caramelo",47 , 10, "Doce");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac 70 Salgadinho fofura",270 , 10, "Salgado");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac Pipoca doce",110 , 10, "Salgado");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac 200 Bala Fini",560 , 10, "Doce");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac 25 Xereta",700 , 10, "Suco");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac Pirulito",25 , 10, "Doce");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac XTapa",57 , 10, "Suco");
insert into tb_func_ecommerce (id, nome_produto, valor, quantidade, tipo_produto) values (not null, "Pac balas carameo",20 , 10, "Suco");

-- Mostrar a tabela
select * from tb_func_ecommerce;

-- Retornar produtos com valores maior de 500
select id, nome_produto, valor from tb_func_ecommerce where valor > 500;

-- Retornar produtos com valores menopr de 500
select id, nome_produto, valor from tb_func_ecommerce where valor < 500;

-- Atualizando um dado da tabela
update tb_func_ecommerce set nome_produto = "Pac Salgadinho fofura", quantidade = 70 where id =2;
update tb_func_ecommerce set nome_produto = "Pac balas caramelo", quantidade = 10, valor = 110 where id =1;
update tb_func_ecommerce set nome_produto = "Pac Bala Fini", quantidade = 200 where id =4;
update tb_func_ecommerce set nome_produto = "Pac Xereta", quantidade = 25 where id =5;