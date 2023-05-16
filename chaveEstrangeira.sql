-- create
CREATE TABLE curso (
  id INTEGER NOT NULL primary key,
  nome VARCHAR(255) NOT NULL
);

--chaves primárias precisam ser únicas e não podem ser nulas
INSERT INTO curso (id,nome) VALUES (1,'HTML');
INSERT INTO curso (id,nome) VALUES (2,'JavaScript');

SELECT *FROM curso;

CREATE TABLE aluno (
 id SERIAL primary key,
 nome VARCHAR(255) NOT NULL
 );
 
INSERT INTO aluno (nome) VALUES ('Dioogo');
INSERT INTO aluno (nome) VALUES ('Vinicius');

SELECT *FROM aluno;

create table aluno_curso (
  aluno_id INTEGER,
  curso_id INTEGER,
  PRIMARY KEY (aluno_id,curso_id),
  
  FOREIGN KEY (aluno_id)
    references aluno(id),
  
  FOREIGN KEY (curso_id)
    references curso(id)
);

INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id,curso_id) VALUES (2,1);

SELECT *FROM aluno_curso;