SELECT 
    CASE
        WHEN (userbd.user_age) <= 30 THEN 'Até 30 anos'
        WHEN (userbd.user_age) BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT userbd.user_name) AS total_pessoas_usuarias,
    COUNT(favoritebd.id_song) AS total_favoritadas
FROM
    SpotifyClone.users AS userbd
        LEFT JOIN
    SpotifyClone.favorite_songs AS favoritebd ON userbd.id_user = favoritebd.id_user
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
