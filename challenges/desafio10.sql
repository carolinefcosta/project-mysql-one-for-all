CREATE TABLE IF NOT EXISTS SpotifyClone.cancao_favorita(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (id_usuario),
    FOREIGN KEY (musica_id) REFERENCES musica (id_musica)
) engine = InnoDB;
INSERT INTO SpotifyClone.cancao_favorita (usuario_id, musica_id)
VALUES
  (1, 3),
  (1, 6),
  (1, 10),
  (2, 4),
  (3, 1),
  (3, 3),
  (4, 4),
  (4, 7),
  (5, 2),
  (5, 10),
  (8, 4),
  (9, 7),
  (10, 3);
  