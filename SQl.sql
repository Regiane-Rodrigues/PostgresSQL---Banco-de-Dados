CREATE TABLE DEPARTAMENTO
(
	codigo int PRIMARY KEY NOT NULL,
	descricao varchar(50)
);

CREATE TABLE Funcionario
(
	codigo int PRIMARY KEY NOT NULL,
	nome varchar(50) NOT NULL,
	endereco varchar(150) NOT NULL,
	telefone varchar(20) NOT NULL,
	codigo_departamento int,
	
	CONSTRAINT fk_departamento FOREIGN KEY (codigo_departamento)
	REFERENCES DEPARTAMENTO (codigo)
);

CREATE TABLE Dependentes 
(
	codigo int PRIMARY KEY NOT NULL,
	nome varchar(150) NOT NULL,
	data_nascimento varchar(40) NOT NULL,
	codigo_funcionario int,
	
	CONSTRAINT fk_funcionario FOREIGN KEY (codigo_funcionario)
	REFERENCES Funcionario (codigo)
);

INSERT INTO DEPARTAMENTO (codigo, descricao)
	VALUES (1, 'FINANCEIRO');
	
INSERT INTO DEPARTAMENTO (codigo, descricao)
	VALUES (2, 'CONTABILIDADE');
	
SELECT * FROM departamento;

INSERT INTO DEPARTAMENTO (codigo, descricao)
	VALUES (3,'RECRUTAMENTO');

INSERT INTO DEPARTAMENTO (codigo, descricao)
	VALUES (4, 'FINANCEIRO');
	
UPDATE DEPARTAMENTO SET descricao = 'RH' WHERE codigo = 4;	
	
SELECT * FROM FUNCIONARIO;

INSERT INTO FUNCIONARIO(codigo,nome, endereco, telefone, codigo_departamento)
	VALUES (2, 'Fernandinha', 'Rua Riacho 654', '(45)98890-8347', 4);