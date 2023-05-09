SELECT u.nome AS pessoa_usuaria, 
IF(MAX(YEAR(u_r.data_reproducao))
BETWEEN '2021-01-01' AND now(), 'Ativa', 'Inativa')
AS status_pessoa_usuaria
FROM usuario u
INNER JOIN usuario_reproducao u_r
ON u.id_usuario = u_r.id_usuario
GROUP BY u.nome
ORDER BY u.nome;