-- Descomente e altere as linhas abaixo:
DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE SpotifyClone.plano(
    id_plano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50) NOT NULL,
    valor DECIMAL(3, 2) NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.plano (plano, valor)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);
CREATE TABLE SpotifyClone.artista(
    id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.artista (nome)
VALUES
  ('Baco Exu do Blues'),
  ('Beyoncé'),
  ('Blind Guardian'),
  ('Elis Regina'),
  ('Nina Simone'),
  ('Queen');
CREATE TABLE SpotifyClone.usuario(
    id_usuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    idade INT NOT NULL,
    data_assinatura DATE NOT NULL,
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES plano (id_plano)
) engine = InnoDB;
INSERT INTO SpotifyClone.usuario (nome, idade, data_assinatura, id_plano)
VALUES
  ('Barbara Liskov', 82, '2019-10-20', 1),
  ('Robert Cecil Martin', 58, '2017-01-06', 1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13', 3),
  ('Jorge Amado', 58, '2017-02-17', 3);
CREATE TABLE SpotifyClone.usuario_artista(
    id_usuario INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY(id_usuario, id_artista),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) engine = InnoDB;
INSERT INTO SpotifyClone.usuario_artista (id_usuario, id_artista)
VALUES
  (1, 2),
  (1, 4),
  (1, 6),
  (2, 2),
  (2, 4),
  (3, 6),
  (4, 1),
  (5, 3),
  (5, 5),
  (6, 2),
  (6, 5),
  (7, 5),
  (9, 4),
  (10, 6);
CREATE TABLE SpotifyClone.album(
    id_album INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    ano_lancamento YEAR NOT NULL,
    id_artista INT NOT NULL,
    FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) engine = InnoDB;
INSERT INTO SpotifyClone.album (nome, ano_lancamento, id_artista)
VALUES
  ('Renaissance', 2022, 2),
  ('Jazz', 1978, 6),
  ('Hot Space', 1982, 6),
  ('Falso Brilhante', 1998, 4),
  ('Vento de Maio', 2001, 4),
  ('QVVJFA?', 2003, 1),
  ('Somewhere Far Beyond', 2007, 3),
  ('I Put A Spell On You', 2012, 5);
CREATE TABLE SpotifyClone.musica(
    id_musica INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    duracao INT NOT NULL,
    id_album INT NOT NULL,
    FOREIGN KEY (id_album) REFERENCES album (id_album)
) engine = InnoDB;
INSERT INTO SpotifyClone.musica (nome, duracao, id_album)
VALUES
  ('BREAK MY SOUL', 279, 1),
  ("VIRGO'S GROOVE", 369, 1),
  ('ALIEN SUPERSTAR', 116, 1),
  ("Don't Stop Me Now", 203, 2),
  ('Under Pressure', 152, 3),
  ('Como Nossos Pais', 105, 4),
  ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
  ('Samba em Paris', 267, 6),
  ("The Bard's Song", 244, 7),
  ('Feeling Good', 100, 8);
CREATE TABLE SpotifyClone.usuario_reproducao(
    id_usuario INT NOT NULL,
    id_musica INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    PRIMARY KEY(id_usuario, id_musica, data_reproducao),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    FOREIGN KEY (id_musica) REFERENCES musica (id_musica)
) engine = InnoDB;
INSERT INTO SpotifyClone.usuario_reproducao (id_usuario, id_musica, data_reproducao)
VALUES
  (1, 8, '2022-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
  (3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');
