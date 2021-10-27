SELECT
    developer as desenvolvedora, 
    sum(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(owners, '-', 1), ' ', -1) as unsigned) * price) AS receita
FROM
    steam
group by
    desenvolvedora
order by
    receita DESC
    limit 10;