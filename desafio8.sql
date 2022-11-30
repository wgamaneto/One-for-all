SELECT a.nome AS artista, al.nome AS album
FROM SpotifyClone.Artista AS a
LEFT JOIN SpotifyClone.Album AS al
ON a.id_artista = al.id_artista
WHERE a.nome = 'Elis Regina';