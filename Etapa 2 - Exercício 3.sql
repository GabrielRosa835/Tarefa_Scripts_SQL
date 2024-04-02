CREATE DATABASE db_cinema;
SHOW DATABASES;
USE db_cinema;

CREATE TABLE tbl_filmes (
	Id_Filme INT PRIMARY KEY AUTO_INCREMENT,
	Titulo VARCHAR(50),
    Sinopse LONGTEXT,
    Estudio VARCHAR(50),
    Id_Categoria INT,
    FOREIGN KEY fk_id_categoria (Id_Categoria)
    REFERENCES tbl_categorias (Id_Categoria)
);

CREATE TABLE tbl_categorias (
	Id_Categoria INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(50),
    PublicoAlvo VARCHAR(50)
);

INSERT INTO tbl_filmes (Titulo, Sinopse, Estudio, Id_Categoria) VALUES
('Inferno', 'Um agente descobre um plano para desencadear um inferno na Terra.', 'Universal Pictures', 1),
('Frozen', 'Uma princesa parte em uma jornada épica para encontrar sua irmã, a Rainha da Neve.', 'Walt Disney Animation Studios', 2),
('A Mentira', 'Duas adolescentes populares decidem inventar boatos para se vingar de seus inimigos.', 'Lionsgate', 3),
('Vingadores: Guerra Infinita', 'Os Vingadores se reúnem para enfrentar o poderoso vilão Thanos antes que ele destrua o universo.', 'Marvel Studios', 1),
('Toy Story', 'Um brinquedo chamado Woody lidera um grupo de brinquedos em uma aventura para encontrar seu dono.', 'Pixar Animation Studios', 2),
('Superbad', 'Dois amigos embarcam em uma série de desventuras enquanto tentam comprar bebidas para uma festa.', 'Columbia Pictures', 3),
('O Código Da Vinci', 'Um simbologista é lançado em uma busca mortal por segredos antigos.', 'Columbia Pictures', 1),
('Moana', 'Uma jovem parte em uma aventura no mar para salvar sua ilha e seu povo.', 'Walt Disney Animation Studios', 2);
SELECT * FROM tbl_filmes;

INSERT INTO tbl_categorias (Nome, PublicoAlvo) VALUES
('Ação', 'Adulto'),
('Animação', 'Infantil'),
('Comédia', 'Jovem Adulto');
SELECT * FROM tbl_categorias;

SELECT * FROM tbl_filmes LEFT JOIN tbl_categorias ON tbl_filmes.Id_Categoria = tbl_categorias.Id_Categoria;