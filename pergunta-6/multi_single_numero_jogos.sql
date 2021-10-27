SELECT
    CASE
    WHEN
        INSTR(categories, "Single-player") > 0
        THEN "Single-player"
    ELSE "Multi-player"
END AS Categoria,
    COUNT(appid) AS "Número de jogos"
FROM
    steam
GROUP BY
    Categoria;