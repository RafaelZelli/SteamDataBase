SELECT
    developer as desenvolvedora, 
    COUNT(appid) AS numero_jogos
FROM
    steam
group by
    desenvolvedora
order by
    numero_jogos DESC
limit
    10;