SELECT `source`.`name` AS `name`, `source`.`developer` AS `developer`, `source`.`Média` AS `Média`, `source`.`price` AS `price`
FROM (SELECT `source`.`sum` AS `sum`, `source`.`sum_2` AS `sum_2`, `source`.`name` AS `name`, `source`.`developer` AS `developer`, ((`source`.`sum` / CASE WHEN (`source`.`sum_2` + `source`.`sum`) = 0 THEN NULL ELSE (`source`.`sum_2` + `source`.`sum`) END) * 100) AS `Média`, `source`.`price` AS `price` FROM (SELECT `steam`.`name` AS `name`, `steam`.`developer` AS `developer`, `steam`.`price` AS `price`, sum(`steam`.`positive_ratings`) AS `sum`, sum(`steam`.`negative_ratings`) AS `sum_2` FROM `steam`
GROUP BY `steam`.`name`, `steam`.`developer`, `steam`.`price`
ORDER BY `steam`.`name` ASC, `steam`.`developer` ASC, `steam`.`price` ASC) `source`) `source`
WHERE (`source`.`sum` + `source`.`sum_2`) >= 10000 ORDER BY `source`.`Média` ASC
LIMIT 10