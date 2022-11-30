SELECT m.titulo AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.Musica AS m
INNER JOIN SpotifyClone.HistoricoReproducao AS hr 
ON m.id_musica = hr.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2