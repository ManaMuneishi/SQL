SELECT
i.item_id,i.item_name,i.item_price,c.category_name
FROM
item i INNER JOIN item_category c
ON i.category_id = c.category_id;
