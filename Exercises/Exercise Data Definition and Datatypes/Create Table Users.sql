CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted BOOL
);
INSERT INTO users(username, password, profile_picture, last_login_time, is_deleted) VALUES
("Ivan", 'test', 'test', NOW(), true),
("Petkan", 'test', 'test', NOW(), true),
("Dragan", 'test', 'test', NOW(), true),
("Milovan", 'test', 'test', NOW(), true),
("Shashavlan", 'test', 'test', NOW(), true);