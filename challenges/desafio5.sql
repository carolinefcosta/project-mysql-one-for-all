SELECT m.nome AS cancao, COUNT(u_r.id_musica) AS reproducoes
FROM musica m
INNER JOIN usuario_reproducao u_r
ON m.id_musica = u_r.id_musica
GROUP BY u_r.id_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2;