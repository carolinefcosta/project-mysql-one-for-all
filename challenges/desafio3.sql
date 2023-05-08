SELECT u.nome AS pessoa_usuaria,
  COUNT(*) AS musicas_ouvidas,
  ROUND(SUM(duracao)/60, 2) AS total_minutos
FROM usuario u
INNER JOIN usuario_reproducao u_r
ON u.id_usuario = u_r.id_usuario
INNER JOIN musica m
ON u_r.id_musica = m.id_musica
GROUP BY u.nome
ORDER BY u.nome;