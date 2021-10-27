SELECT
    CASE
    WHEN
        INSTR(categories, "Online") > 0
        THEN "Online"
    ELSE "Offline"
END AS Categoria,
    COUNT(appid) AS "Número de jogos",
    AVG(average_playtime) AS "Tempo médio de jogo"
FROM
    steam
GROUP BY
    Categoria;