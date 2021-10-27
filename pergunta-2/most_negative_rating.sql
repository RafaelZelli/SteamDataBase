SELECT `source`.`name` AS `name`, `source`.`sum` AS `sum`, `source`.`sum_2` AS `sum_2`, `source`.`Media` AS `Media`
FROM (SELECT `source`.`sum` AS `sum`, `source`.`sum_2` AS `sum_2`, ((`source`.`sum` / CASE WHEN (`source`.`sum_2` + `source`.`sum`) = 0 THEN NULL ELSE (`source`.`sum_2` + `source`.`sum`) END) * 100) AS `Media`, `source`.`name` AS `name`, `source`.`sum` AS `sum_2_2`, `source`.`sum_2` AS `sum_2_3` FROM (SELECT `steam`.`name` AS `name`, sum(`steam`.`positive_ratings`) AS `sum`, sum(`steam`.`negative_ratings`) AS `sum_2` FROM `steam`
GROUP BY `steam`.`name`
ORDER BY `sum` DESC, `steam`.`name` ASC) `source`) `source`
WHERE (`source`.`sum_2` + `source`.`sum`) >= 10000 ORDER BY `source`.`Media` ASC
LIMIT 10