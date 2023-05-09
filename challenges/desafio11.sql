SELECT
	albumbd.album_name AS album,
    COUNT(songbd.song_name) AS favoritadas
FROM
	SpotifyClone.albums AS albumbd,
    SpotifyClone.songs AS songbd,
    SpotifyClone.favorite_songs AS favoritebd 
WHERE
    favoritebd.id_song = songbd.id_song
    AND songbd.songs_id_album = albumbd.id_album
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;
