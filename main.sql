/*
Timestamp é data e hora
*/

create table aluno (
  id SERIAL primary key,
  nome VARCHAR(255),
  cpf TEXT,
  observacao TEXT,
  idade INTEGER,
  data_nascimento DATE,
  matriculado_em timestamp,
  ativo boolean
  );

INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('KATHELYN','123.456.789-10',24,'1998-07-05',TRUE);
INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('JOANA','147.258.369-10',26,'1996-07-02',TRUE);
SELECT * FROM aluno;

UPDATE aluno SET nome = 'KELLY'  WHERE id=2;


DELETE FROM aluno where id=1;
SELECT * FROM aluno;

/*
  https://onecompiler.com/postgresql
*/