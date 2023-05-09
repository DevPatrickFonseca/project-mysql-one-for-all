SELECT 
    artistbd.artist_name AS artista,
    albumbd.album_name AS album
FROM
    SpotifyClone.artists AS artistbd,
    SpotifyClone.albums AS albumbd
WHERE
    artistbd.id_artist = albumbd.artist_id_album
        AND artistbd.artist_name = "Elis Regina";
