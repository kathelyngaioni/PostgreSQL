/*
Timestamp é data e hora
*/

create table aluno (
  id SERIAL primary key,
  nome VARCHAR(255),
  cpf CHAR(11),
  observacao TEXT,
  idade INTEGER,
  data_nascimento DATE,
  matriculado_em timestamp,
  ativo boolean
  );

INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('KATHELYN','123.456.789-10',24,'1998-07-05',TRUE);
SELECT * FROM aluno;