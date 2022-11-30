SELECT u.nome AS usuario, IF (MAX(YEAR(hr.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.HistoricoReproducao AS hr
ON u.id_usuario = hr.id_usuario
GROUP BY usuario
ORDER BY usuario ASC;