SELECT 
    COUNT(DISTINCT id_song) AS cancoes,
    COUNT(DISTINCT id_artist) AS artistas,
    COUNT(DISTINCT id_album) AS albuns
FROM
    SpotifyClone.songs,
    SpotifyClone.artists,
    SpotifyClone.albums;
