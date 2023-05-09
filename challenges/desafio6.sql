SELECT ROUND(MIN(p.valor), 2) AS faturamento_minimo,
ROUND(MAX(p.valor), 2) AS faturamento_maximo,
ROUND(AVG(p.valor), 2)  AS faturamento_medio,
ROUND(SUM(p.valor), 2) AS faturamento_total
FROM plano p, usuario u
WHERE p.id_plano = u.id_plano;