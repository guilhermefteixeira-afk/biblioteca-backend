CREATE TABLE Aluno (
	id_aluno SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	telefone VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Livro(
id_livro SERIAL PRIMARY KEY,
título VARCHAR(1) NOT NULL UNIQUE,
disponível BOOLEAN NOT NULL
);

CREATE TABLE emprestimo(
id_emprestimo INTEGER GENERATED ALWAYS AS IDENTITY,
id_aluno INT NOT NULL,
id_livro INT NOT NULL ,
devolucao DATE NOT NULL UNIQUE,
multa NUMERIC(10,2) NOT NULL,
FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);


SELECT * FROM Aluno;

SELECT * FROM Livro;

SELECT * FROM emprestimo;


DROP TABLE Aluno,Livro,emprestimo;

INSERT INTO Aluno (nome,email,telefone)
VALUES ('john marston','jhon@gmail','12345678940'),
('arthun morgan','morgan@gmail','4532109876'),
('shere khan','khan@gmail','120345621'),
('eggman','eggman@gmail','234567890'),
('kratos','godofwar@gmail','34567890'),
('loki','atreus@gmail','5678901'),
('tobi','obito@gmail','67890123'),
('satoro','gojo@gmail','7890123456');


INSERT INTO Livro(título,disponível)
VALUES ('jungle book','true'),

