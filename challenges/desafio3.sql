SELECT 
    user_name AS pessoa_usuaria,
    COUNT(playbd.playback_id_song) AS musicas_ouvidas,
    ROUND(SUM(song_duration_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS userbd,
    SpotifyClone.playback_history AS playbd,
    SpotifyClone.songs AS songbd
WHERE
    playbd.playback_id_user = userbd.id_user
        AND playbd.playback_id_song = songbd.id_song
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria ASC;
