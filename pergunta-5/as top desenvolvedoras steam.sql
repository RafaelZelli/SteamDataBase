SELECT   developer,
         COUNT(developer) AS Qtd
FROM  steam
GROUP BY developer
HAVING   COUNT(developer) > 1
ORDER BY COUNT(developer) DESC
limit 10