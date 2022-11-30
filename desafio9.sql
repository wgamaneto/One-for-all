SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.HistoricoReproducao AS hr
INNER JOIN SpotifyClone.Usuario as u
ON hr.id_usuario = u.id_usuario
WHERE u.nome = "Barbara Liskov";