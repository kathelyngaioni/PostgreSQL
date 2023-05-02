/*Toda tabela necessita ter uma chave */

create table clientes (id integer primary key autoincrement,nome TEXT,tel numeric);

INSERT INTO clientes (nome, tel) VALUES ('Luana', 32991129981);

/* Adiconae linha na tabela */
ALTER TABLE clientes ADD COLUMN cidade TEXT;
INSERT INTO clientes (nome, tel,cidade) VALUES ('Kathelyn', 32991144199,'Belo Horizonte');

/* Excluir coluna da tabela */
ALTER TABLE clientes drop COLUMN cidade;

delete from clientes; 

ALTER TABLE clientes add column cidade text not null;
INSERT INTO clientes (nome, tel,cidade) VALUES ('Kathelyn', 32991144199, "Belo Horizonte");

/*
OSERVAÇÃO: O objetivo de AUTOINCREMENT é impedir a reutilização de ROWIDs de linhas excluídas anteriormente.
*/

/*
UPDATE
*/
INSERT INTO clientes (nome, tel,cidade) VALUES ('Luana', 32991129981, "Rio de Janeiro");

UPDATE clientes SET tel = '0';
SELECT * from clientes;

/*
O uso do where no UPDATE é importante
*/

UPDATE clientes SET tel = '32991144199';
SELECT * from clientes where id= 3;
UPDATE clientes SET cidade='Belory Hills' where cidade = 'Belo Horizonte';
SELECT * from clientes;

/*
Apagar tabela
*/
DROP table clientes;
SELECT * from clientes;