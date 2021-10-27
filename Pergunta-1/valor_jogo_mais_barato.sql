SELECT `name` AS `Nome`, `developer` AS `Desenvolvedor`, `price` AS `Preço`
FROM `steam`
WHERE `price` > 0
ORDER BY `price` ASC
LIMIT 10;