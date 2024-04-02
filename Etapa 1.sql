CREATE TABLE tbl_animais (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	nasc DATE,
	peso FLOAT,
	cor VARCHAR(50)
);

INSERT INTO tbl_animais (nome, nasc, peso, cor) VALUES
('Ágata', '2015-04-09', 13.9, 'Branco'),
('Félix', '2016-06-06', 14.3, 'Preto'),
('Tom', '2013-02-08', 11.2, 'Azul'),
('Garfield', '2015-07-06', 17.1, 'Laranja'),
('Frajola', '2013-08-01', 13.7, 'Preto'),
('Manda-Chuva', '2012-02-03', 12.3, 'Amarelo'),
('Snowball', '2014-04-06', 13.2, 'Preto'),
('Azulão', '2015-08-03', 11.9, 'Azul'),
('Gato de Botas', '2012-12-10', 11.6, 'Amarelo'),
('Kitty', '2020-04-06', 11.6, 'Amarelo'),
('Milu', '2013-02-04', 17.9, 'Branco'),
('Pluto', '2012-01-03', 12.3, 'Amarelo'),
('Pateta', '2015-05-01', 17.7, 'Preto'),
('Snoopy', '2013-07-02', 18.2, 'Branco'),
('Rex', '2019-11-03', 19.7, 'Beje'),
('Bidu', '2012-09-08', 12.4, 'Azul'),
('Dum Dum', '2015-04-06', 11.2, 'Laranja'),
('Muttley', '2011-02-03', 14.3, 'Laranja'),
('Scooby', '2012-01-02', 19.9, 'Marrom'),
('Rufus', '2014-04-05', 19.7, 'Branco'),
('Rex', '2021-08-19', 19.7, 'Branco');

SELECT * FROM tbl_animais ORDER BY nome;
SELECT * FROM tbl_animais WHERE peso < 13.1;
SELECT * FROM tbl_animais WHERE nasc BETWEEN '2015-02-00' AND '2015-12-31';
SELECT * FROM tbl_animais WHERE cor = 'Branco' AND peso < 15.0;
SELECT nome, cor, peso FROM tbl_animais WHERE nome LIKE 'B%';
SELECT nome, cor, peso FROM tbl_animais WHERE cor IN ('Vermelho','Amarelo', 'Marrom', 'Laranja');
SELECT nome, cor, nasc, peso FROM tbl_animais ORDER BY nasc;
SELECT * FROM tbl_animais WHERE nome LIKE 'C%' AND cor = 'Branco';
SELECT * FROM tbl_animais WHERE nome LIKE '%ba%';
SELECT * FROM tbl_animais WHERE peso BETWEEN 13 AND 15;
SELECT * FROM tbl_animais WHERE peso <= 30 AND cor in ('Amarelo', 'Roxo') AND nasc > '2012-00-00';
SELECT * FROM tbl_animais WHERE CAST(MONTH(nasc) AS SIGNED) = 12 AND CAST(MONTH(nasc) AS SIGNED) >= 22 OR CAST(MONTH(nasc) AS SIGNED) = 1 AND CAST(MONTH(nasc) AS SIGNED) <= 19;
SELECT * FROM tbl_animais WHERE nome LIKE '% %';

DROP TABLE tbl_animais;