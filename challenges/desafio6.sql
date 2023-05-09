SELECT 
    MIN(planbd.plan_value) AS faturamento_minimo,
    MAX(planbd.plan_value) AS faturamento_maximo,
    ROUND(AVG(planbd.plan_value), 2) AS faturamento_medio,
    SUM(planbd.plan_value) AS faturamento_total
FROM
    SpotifyClone.users AS userbd
        INNER JOIN
    SpotifyClone.plans AS planbd ON userbd.user_id_plan = planbd.id_plan;
