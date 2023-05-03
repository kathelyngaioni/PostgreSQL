/*
  https://onecompiler.com/postgresql
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
INSERT INTO aluno (nome,cpf,idade,data_nascimento,ativo) VALUES ('KEMILLY','159.357.852-10',20,'2002-05-22',FALSE);
SELECT * FROM aluno;

UPDATE aluno SET nome = 'KELLY'  WHERE id=2;


DELETE FROM aluno WHERE id=2;
SELECT * FROM aluno;

/*
não usar o parêntese com idade AS idade_atual
*/
SELECT nome,cpf,idade AS idade_atual FROM aluno;
SELECT nome AS "Nome do Aluno",cpf,idade FROM aluno; /*usar as aspas duplas nesse caso*/

/* <> != diferente  */

SELECT * from aluno WHERE nome <> 'KEMILLY';

/*
LIKE
*/
SELECT * FROM aluno WHERE nome LIKE '_EMILLY';
SELECT * FROM aluno WHERE nome NOT LIKE '_EMILLY';
SELECT * FROM aluno WHERE nome LIKE 'K%';
