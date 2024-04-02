CREATE DATABASE db_mercado;
SHOW DATABASES;
USE db_mercado;

CREATE TABLE tbl_produtos (
	Id_Produto INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
    PrecoDeCusto FLOAT,
    PrecoDeVenda FLOAT,
    DataDeValidade DATE,
    Id_Marca INT,
    FOREIGN KEY fk_id_marca (Id_Marca)
    REFERENCES tbl_marcas (Id_Marca)
);

CREATE TABLE tbl_marcas (
	Id_Marca INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
    SiteOficial VARCHAR(100),
    Telefone VARCHAR(20)
);

INSERT INTO tbl_produtos (Nome, PrecoDeCusto, PrecoDeVenda, DataDeValidade, Id_Marca) VALUES
('Arroz Integral', 5.99, 9.99, '2024-10-31', 1),
('Cereal Matinal', 3.49, 6.99, '2024-09-30', 2),
('Queijo Mussarela', 8.79, 12.99, '2024-11-15', 3),
('Iogurte Natural', 2.99, 4.99, '2024-10-20', 1),
('Suco de Laranja', 4.29, 7.99, '2024-09-25', 2),
('Creme de Leite', 1.99, 3.49, '2024-10-28', 3),
('Biscoito Integral', 2.49, 4.29, '2024-09-30', 1),
('Peito de Frango', 10.99, 16.99, '2024-11-05', 2);
SELECT * FROM tbl_produtos;

INSERT INTO tbl_marcas (Nome, SiteOficial, Telefone) VALUES
('Gourmet Delights', 'https://www.gourmetdelights.com', '+1 (800) 123-4567'),
('Nature\'s Bounty', 'https://www.naturesbounty.com', '+1 (888) 555-1234'),
('Farm Fresh', 'https://www.farmfresh.com', '+1 (877) 987-6543');
SELECT * FROM tbl_marcas;

SELECT * FROM tbl_produtos LEFT JOIN tbl_marcas ON tbl_produtos.Id_Marca = tbl_marcas.Id_Marca;