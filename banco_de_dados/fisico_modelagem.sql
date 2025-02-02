-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Curso (
status (ativo/inativo) NUMERIC(10),
data_cria��o_curso VARCHAR(8),
ID_Curso (PK) VARCHAR(10) PRIMARY KEY
)

CREATE TABLE defic�ncia (
tipo_defici�ncia VARCHAR(50),
id_defici�ncia (PK) VARCHAR(50) PRIMARY KEY
)

CREATE TABLE Aluno (
telefone VARCHAR(13),
Nome VARCHAR(100),
email VARCHAR(50),
Endere�o VARCHAR(100),
CPF VARCHAR(11),
data_nasc VARCHAR(8),
ID_Aluno (PK) VARCHAR(50) PRIMARY KEY,
cep VARCHAR(10),
descricao_deficiencia VARCHAR(200),
id_defici�ncia (PK) VARCHAR(10),
FOREIGN KEY(id_defici�ncia (PK)) REFERENCES defic�ncia (id_defici�ncia (PK))
)

CREATE TABLE Matr�cula (
data_matricula VARCHAR(8),
ID_Aluno (PK) VARCHAR(10),
ID_Curso (PK) VARCHAR(10),
FOREIGN KEY(ID_Aluno (PK)) REFERENCES Aluno (ID_Aluno (PK)),
FOREIGN KEY(ID_Curso (PK)) REFERENCES Curso (ID_Curso (PK))
)

