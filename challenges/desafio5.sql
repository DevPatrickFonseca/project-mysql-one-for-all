SELECT 
    songbd.song_name AS cancao,
    COUNT(playbd.playback_id_song) AS reproducoes
FROM
    SpotifyClone.songs AS songbd
        INNER JOIN
    SpotifyClone.playback_history AS playbd ON songbd.id_song = playbd.playback_id_song
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
