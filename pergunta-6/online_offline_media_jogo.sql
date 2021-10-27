SELECT
    CASE
    WHEN
        INSTR(categories, "Online") > 0
        THEN "Online"
    ELSE "Offline"
END AS Categoria,
    AVG(average_playtime) AS "Tempo médio de jogo"
FROM
    steam
GROUP BY
    Categoria;