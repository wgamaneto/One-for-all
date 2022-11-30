SELECT a.nome AS artista, al.nome AS album, COUNT(sa.id_usuario) AS seguidores
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.Album AS al
ON a.id_artista = al.id_artista
INNER JOIN SpotifyClone.SeguindoArtista AS sa
ON a.id_artista = sa.id_artista
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;