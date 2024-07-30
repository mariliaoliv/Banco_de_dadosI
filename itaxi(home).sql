
use itaxihome;
# Criando novas tabelas:
#VARCHAR para criar uma coluna, tipo string.
create table cliente(
id VARCHAR(4), 
nome VARCHAR(80), 
PRIMARY KEY(id)
);

create table cliente_particular(
id VARCHAR(4),
cpf VARCHAR(14), 
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id) # para usar a coluna da outra tabela
);
# foreing key(chave estrangeira de outra coluna, references(colocar a coluna da chave estrangeira e identificar a chave)

create table cliente_empresa(
id VARCHAR(4),
cnpj VARCHAR(18),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

create table taxi(
placa VARCHAR(7),
marca VARCHAR(30), 
modelo VARCHAR(30),
anofab integer, #interger é para denominar que as chaves das colunas vão ser descritas em inteiro = interger(tipo)
PRIMARY KEY(placa)
);

create table corrida(
cliid VARCHAR(4),
placa VARCHAR(7),
dataPedido DATE, #tipo data ano-mês-dia
PRIMARY KEY(cliid, placa, dataPedido), 
FOREIGN KEY(cliid) REFERENCES
cliente(id), 
FOREIGN KEY(placa) REFERENCES taxi(placa)
);

create table tempo(
hora VARCHAR(4), 
pagamento VARCHAR(5));
# Populando a tabela tempo
insert into tempo(hora, pagamento) values('1200', '20,50');
# Verificando se foram inseridos os novos valores
select * from tempo;
# Apagando a tabela tempo:
drop table tempo;

# Adicionando uma nova coluna chamada nome tipo string na tabela cliente_particular:
alter table cliente_particular add nome VARCHAR(5);
select * from cliente_particular;
# Modificando o tipo da coluna nome de string para data: 
alter table cliente_particular modify column nome date;
# Apagando a coluna nome da tabela cliente_particular:
alter table cliente_particular drop nome;

# Populando a tabela cliente:
insert into cliente(id, nome)values('4352', 'Jeon Jung-kook');
insert into cliente(id, nome) values('3565', 'Namjoon');
insert into cliente(id, nome) values('2788', 'Taehyung');
insert into cliente(id, nome) values('2456', 'Yoongi');
insert into cliente(id, nome) values('4986', 'Jimin');
insert into cliente(id, nome) values('7576', 'Hoseok');
insert into cliente(id, nome) values('6267', 'Seokjin');

# Atualizando/alterando os ids da tabela cliente: 
# atualizar na tabela cliente id = n onde id = m
update cliente set id = 1 where id='4352';
update cliente set id = 2 where id='3565';
update cliente set id= 3 where id='2788';
update cliente set id= 4 where id='2456';
update cliente set id= 5 where id='4986';
update cliente set id=6 where id='7576';
update cliente set id=7 where id='6267';

select * from cliente;

# Populando a tabela cliente_particular:
insert into cliente_particular(id, cpf, nome) values(1, '928.485.390-70');
insert into cliente_particular(id, cpf) values(2, '307.844.420-10');
insert into cliente_particular(id, cpf) values(3, '416.044.290-03');
insert into cliente_particular(id, cpf) values(4, '660.373.170-38');
insert into cliente_particular(id, cpf) values(5, '269.157.310-91');
insert into cliente_particular(id, cpf) values(6, '256.304.460-02');
insert into cliente_particular(id, cpf) values(7, '904.039.230-77');

# Populando a tabela cliente_empresa:
insert into cliente_empresa(id, cnpj) values(1, '65.765.232/0001-86');
insert into cliente_empresa(id, cnpj) values(2, '34.555.865/0001-36');
insert into cliente_empresa(id, cnpj) values(3, '21.349.805/0001-15');
insert into cliente_empresa(id, cnpj) values(4, '36.460.063/0001-78');
insert into cliente_empresa(id, cnpj) values(5, '95.018.473/0001-22');
insert into cliente_empresa(id, cnpj) values(6, '95.181.366/0001-10');
insert into cliente_empresa(id, cnpj) values(7, '41.514.752/0001-58');

# Visualizar toda a tabela cliente_empresa
select * from cliente_empresa;

# Populando a tabela taxi:
insert into taxi(placa, marca, modelo, anofab) values('KEL-028', 'BMW', 'a', 2024);
insert into taxi(placa, marca, modelo, anofab) values('MNO-620', 'BMW', 'b', 2024);
insert into taxi(placa, marca, modelo, anofab) values('NEM-087', 'BMW', 'c', 2024);
insert into taxi(placa, marca, modelo, anofab) values('IAN-517', 'BMW', 'd', 2024);
insert into taxi(placa, marca, modelo, anofab) values('HXC-222', 'BMW', 'e', 2024);
insert into taxi(placa, marca, modelo, anofab) values('MXU-023', 'BMW', 'f', 2024);
insert into taxi(placa, marca, modelo, anofab) values('MOA-049', 'BMW', 'g', 2024);

select * from taxi;

# Alterado o nome da coluna ciid para cliid:
alter table corrida rename column ciid to cliid;
# Populando a tabela corrida:
insert into corrida(cliid, placa, dataPedido) values(1, 'KEL-028', '2024-07-01');
insert into corrida(cliid, placa, dataPedido) values(2, 'MNO-620', '2098-06-21');
insert into corrida(cliid, placa, dataPedido) values(3, 'NEM-087', '2008-10-20');
insert into corrida(cliid, placa, dataPedido) values(4, 'IAN-517', '2009-05-10');
insert into corrida(cliid, placa, dataPedido) values(5, 'HXC-222', '2020-07-15');
insert into corrida(cliid, placa, dataPedido) values(6, 'MXU-023', '2006-06-30');
insert into corrida(cliid, placa, dataPedido) values(7, 'MOA-049', '2023-09-23');

select * from corrida;
show tables;
# Inserindo um novo dado(cliente) a tabela cliente:
insert into cliente(id, nome) values(8, 'Cha eun-woo');


