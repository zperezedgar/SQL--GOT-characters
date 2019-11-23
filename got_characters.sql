/* Create table about the people and what they do here */
CREATE TABLE houses(id INTEGER PRIMARY KEY AUTOINCREMENT, house TEXT);

INSERT INTO houses (house) VALUES("stark");
INSERT INTO houses (house) VALUES("lannister");
INSERT INTO houses (house) VALUES("baratheon");
INSERT INTO houses (house) VALUES("tyrell");
INSERT INTO houses (house) VALUES("targeryan");

SELECT * FROM houses;

CREATE TABLE persons(id INTEGER PRIMARY KEY, name TEXT, house_id INTEGER);

INSERT INTO persons (name, house_id) VALUES ("arya", 1);
INSERT INTO persons (name, house_id) VALUES ("sansa", 1);
INSERT INTO persons (name, house_id) VALUES ("bran", 1);
INSERT INTO persons (name, house_id) VALUES ("jon", 1);
INSERT INTO persons (name, house_id) VALUES ("cersei", 2);
INSERT INTO persons (name, house_id) VALUES ("jaime", 2);
INSERT INTO persons (name, house_id) VALUES ("tyrion", 2);
INSERT INTO persons (name, house_id) VALUES ("stannis", 3);
INSERT INTO persons (name, house_id) VALUES ("margery", 4);
INSERT INTO persons (name, house_id) VALUES ("olenna", 4);
INSERT INTO persons (name, house_id) VALUES ("daenerys", 5);

SELECT * FROM persons;

CREATE TABLE enemies(id INTEGER PRIMARY KEY, house1_id INTEGER, house2_id INTEGER);

INSERT INTO enemies(house1_id, house2_id) VALUES(1,2);
INSERT INTO enemies(house1_id, house2_id) VALUES(2,3);
INSERT INTO enemies(house1_id, house2_id) VALUES(3,5);
INSERT INTO enemies(house1_id, house2_id) VALUES(4,2);
INSERT INTO enemies(house1_id, house2_id) VALUES(5,2);
INSERT INTO enemies(house1_id, house2_id) VALUES(5,3);

SELECT * FROM enemies;

/*query the name of every character and its house*/
SELECT persons.name, houses.house FROM persons JOIN houses ON houses.id=persons.house_id;

/*query the name of the houses which are enemies*/
SELECT a.house, b.house FROM enemies JOIN houses a ON a.id=enemies.house1_id JOIN houses b ON b.id=enemies.house2_id;
