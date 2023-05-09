SELECT 
    artistbd.artist_name AS artista,
    albumbd.album_name AS album,
    COUNT(followbd.id_artist) AS pessoas_seguidoras
FROM
    SpotifyClone.artists AS artistbd,
    SpotifyClone.albums AS albumbd,
    SpotifyClone.following_artists AS followbd
WHERE
    artistbd.id_artist = albumbd.artist_id_album
        AND followbd.id_artist = albumbd.artist_id_album
GROUP BY artista , album
ORDER BY pessoas_seguidoras DESC , artista , album;
