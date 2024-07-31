
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
