CREATE TABLE people(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(6,2),
	weight DOUBLE(6,2),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);
INSERT INTO people(name, picture, height, weight, gender, birthdate, biography) VALUES
("Ivan", 'test', 180.5, 87.5, 'm', '1984-05-13', 'test'),
("Petkan", 'test', 180.5, 87.5, 'm', '1984-05-13', 'test'),
("Dragan", 'test', 180.5, 87.5, 'm', '1984-05-13', 'test'),
("Milovan", 'test', 180.5, 87.5, 'm', '1984-05-13', 'test'),
("Shashavlan", 'test', 180.5, 87.5, 'm', '1984-05-13', 'test');