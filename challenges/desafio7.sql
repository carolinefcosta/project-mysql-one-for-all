SELECT a.nome AS artista,
al.nome AS album,
COUNT(u_a.id_usuario) AS pessoas_seguidoras
FROM artista a
INNER JOIN album al
ON a.id_artista = al.id_artista
INNER JOIN usuario_artista u_a
ON a.id_artista = u_a.id_artista
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;