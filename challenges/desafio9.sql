SELECT COUNT(u_r.id_usuario) musicas_no_historico
FROM usuario_reproducao u_r
INNER JOIN usuario u
ON u_r.id_usuario = u.id_usuario
WHERE u.nome = 'Barbara Liskov';