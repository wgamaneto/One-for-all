SELECT
(SELECT COUNT(id_musica) FROM SpotifyClone.Musica) AS cancoes,
(SELECT COUNT(id_artista) FROM SpotifyClone.Artista) AS artistas,
  (SELECT COUNT(id_album) FROM SpotifyClone.Album) AS album;