DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.usuario(
    usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.usuario (nome)
VALUES
  ('Barbara Liskov'),
  ('Robert Cecil Martin'),
  ('Ada Lovelace'),
  ('Martin Fowler'),
  ('Sandi Metz'),
  ('Christopher Alexander'),
  ('Judith Butler'),
  ('Jorge Amado');
CREATE TABLE SpotifyClone.musica(
    musica_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.musica (nome)
VALUES
  ('ALIEN SUPERSTAR'),
  ('Como Nossos Pais'),
  ('Feeling Good'),
  ("Don't Stop Me Now"),
  ('BREAK MY SOUL'),
  ('O Medo de Amar é o Medo de Ser Livre'),
  ("VIRGO'S GROOVE");
  CREATE TABLE SpotifyClone.usuario_musica(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musica (musica_id)
) engine = InnoDB;
INSERT INTO SpotifyClone.usuario_musica (usuario_id, musica_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 4),
  (3, 1),
  (3, 5),
  (4, 4),
  (4, 6),
  (5, 3),
  (5, 7),
  (6, 4),
  (7, 6),
  (8, 1);
  