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
INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('KELLY','147.258.369-10',26,'1996-07-02',TRUE);
INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('KEMILLY','159.357.852-10',20,'2002-05-22',FALSE);


SELECT * FROM aluno WHERE observacao IS null;
SELECT * FROM aluno WHERE cpf IS NOT null;