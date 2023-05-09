SELECT 
    COUNT(playbd.playback_id_song) AS musicas_no_historico
FROM
    SpotifyClone.playback_history AS playbd,
    SpotifyClone.users AS userbd
WHERE
    playbd.playback_id_user = userbd.id_user
        AND userbd.user_name = 'Barbara Liskov';
