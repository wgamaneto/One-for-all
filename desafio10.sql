SELECT m.titulo AS nome, COUNT(hr.id_usuario) as reproducoes
FROM SpotifyClone.Musica AS m
INNER JOIN SpotifyClone.HistoricoReproducao AS hr
ON m.id_musica = hr.id_musica
INNER JOIN SpotifyClone.Usuario AS u
ON u.id_usuario = hr.id_usuario
WHERE u.id_plano IN (1, 4)
GROUP BY m.id_musica
ORDER BY nome;