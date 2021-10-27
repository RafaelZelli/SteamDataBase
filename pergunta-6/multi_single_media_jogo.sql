SELECT
    CASE
    WHEN
        INSTR(categories, "Single-player") > 0
        THEN "Single-Player"
    ELSE "Multi-player"
END AS Categoria,
    AVG(average_playtime) AS "Tempo médio de jogo"
FROM
    steam
GROUP BY
    Categoria;