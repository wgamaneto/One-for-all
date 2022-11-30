SELECT m.titulo AS nome_musica,
CASE 
	WHEN m2.titulo LIKE '%bard%' THEN REPLACE(m2.titulo, 'Bard', 'QA')
	WHEN m2.titulo LIKE '%Amar%' THEN REPLACE(m2.titulo, 'Amar', 'Code Review')
	WHEN m2.titulo LIKE '%Pais%' THEN REPLACE(m2.titulo, 'Pais', 'Pull Requests')
	WHEN m2.titulo LIKE '%SOUL%' THEN REPLACE(m2.titulo, 'SOUL', 'CODE')
	WHEN m2.titulo LIKE '%SUPERSTAR%' THEN REPLACE(m2.titulo, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.Musica AS m
INNER JOIN SpotifyClone.Musica AS m2 
ON m.id_musica = m2.id_musica
GROUP BY m.id_musica 
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;