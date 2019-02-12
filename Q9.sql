SELECT
(MAX(c.category_name)) AS category_name,(SUM(i.item_price)) AS total_price
FROM
item i INNER JOIN item_category c
ON i.category_id = c.category_id
GROUP BY
i.category_id
ORDER BY
total_price DESC;
