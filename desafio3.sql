SELECT u.nome AS usuario, COUNT(hr.data_reproducao) AS qt_de_musicas_ouvidas, ROUND(SUM(m.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.HistoricoReproducao AS hr
ON u.id_usuario = hr.id_usuario
INNER JOIN SpotifyClone.Musica AS m
ON m.id_musica = hr.id_musica
GROUP BY usuario
ORDER BY usuario ASC;