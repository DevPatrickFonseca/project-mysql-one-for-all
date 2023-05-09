SELECT 
    userbd.user_name AS pessoa_usuaria,
    IF(YEAR(MAX(playback_date)) >= 2021,
        'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM
    SpotifyClone.users AS userbd
        INNER JOIN
    SpotifyClone.playback_history AS playbd ON playbd.playback_id_user = userbd.id_user
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria ASC;
