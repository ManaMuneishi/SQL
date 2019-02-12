

CREATE TABLE item_category(category_id int PRIMARY KEY,category_name varchar(256) NOT NULL);

CREATE TABLE item(item_id int PRIMARY KEY,item_name varchar(256) NOT NULL,item_price int NOT NULL,category_id int);

INSERT INTO item_category VALUES(1,"家具");
INSERT INTO item_category VALUES(2,"食品");
INSERT INTO item_category VALUES(3,"本");

INSERT INTO item VALUES(1,"堅牢な机",3000,1);
INSERT INTO item VALUES(2,"生焼け肉",50,2);
INSERT INTO item VALUES(3,"すっきりわかるJava入門",3000,3);
INSERT INTO item VALUES(4,"おしゃれな椅子",2000,1);
INSERT INTO item VALUES(5,"こんがり肉",500,2);
INSERT INTO item VALUES(6,"書き方ドリルSQL",2500,3);
INSERT INTO item VALUES(7,"ふわふわのベッド",30000,1);
INSERT INTO item VALUES(8,"ミラノ風ドリア",300,2);

SELECT item_name,item_price FROM item WHERE category_id = 1;

SELECT item_name,item_price FROM item WHERE item_name LIKE '%肉%';

SELECT
i.*,c.*
FROM
item i INNER JOIN item_category c
ON i.category_id = c.category_id;
