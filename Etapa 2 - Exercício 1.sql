CREATE DATABASE db_zoologico;
USE db_zoologico;
SHOW DATABASES;

CREATE TABLE tbl_animais (
	Id_Animais INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
    Peso FLOAT,
    DataDeNascimento DATE,
    Id_Especie INT,
    FOREIGN KEY fk_id_especie (Id_Especie)
    REFERENCES tbl_especies (Id_Especie)
);

CREATE TABLE tbl_especies (
	Id_Especie INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
    Descricao LONGTEXT
);

INSERT INTO tbl_animais (Nome, Peso, DataDeNascimento, Id_Especie) VALUES
('Zephyr', 18.5, '2019-03-07', 1),
('Nimbus', 4.2, '2020-09-15', 2),
('Aurora', 12.7, '2018-12-25', 3),
('Gryphon', 30.9, '2017-06-03', 1),
('Phoenix', 6.3, '2021-11-11', 2),
('Luna', 22.1, '2022-04-20', 3),
('Thunder', 14.8, '2020-08-09', 1),
('Blizzard', 27.5, '2019-02-28', 2);
SELECT * FROM tbl_animais;

INSERT INTO tbl_especies (Nome, Descricao) VALUES
('Axolote', 'O axolote é um anfíbio mexicano conhecido por sua aparência única e capacidade regenerativa.'),
('Quokka', 'O quokka é um marsupial australiano conhecido por seu rosto sorridente e comportamento amigável.'),
('Fossa', 'A fossa é um mamífero carnívoro encontrado em Madagascar, é o maior carnívoro nativo da ilha.');
SELECT * FROM tbl_especies;

SELECT * FROM tbl_animais LEFT JOIN tbl_especies ON tbl_animais.Id_Especie = tbl_especies.Id_Especie;