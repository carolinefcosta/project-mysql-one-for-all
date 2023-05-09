SELECT a.nome artista, al.nome album
FROM artista a
INNER JOIN album al
ON a.id_artista = al.id_artista
WHERE a.nome = 'Elis Regina'
ORDER BY album;