CREATE DATABASE Movies;
USE movies;
CREATE TABLE directors(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    director_name VARCHAR(255) NOT NULL,
    notes BLOB
);
CREATE TABLE genres(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genre_name VARCHAR(255) NOT NULL,
    notes BLOB
);
CREATE TABLE categories(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    notes BLOB
);
CREATE TABLE movies(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR (255) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length TIME,
    genre_id INT,
    category_id INT,
    rating DOUBLE (6,1),
    notes BLOB
);
INSERT INTO directors (director_name, notes) VALUES
('Gosho', 'test'),
('Tosho', 'test'),
('Pesho', 'test'),
('Misho', 'test'),
('Ivan', 'test');
INSERT INTO genres (genre_name, notes) VALUES
('Gossho', 'test'),
('Tossho', 'test'),
('Pessho', 'test'),
('Missho', 'test'),
('Ivvan', 'test');
INSERT INTO categories (category_name, notes) VALUES
('Action', 'test'),
('Comedy', 'test'),
('Crime', 'test'),
('Xxx', 'test'),
('Anumation', 'test');
INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id, rating, notes) VALUES
('The Game', 1, '1997', '00:01:00', 2, 3, NULL, 'super'),
('The Game', 2, '1997', '00:01:00', 3, 3, NULL, 'super'),
('The Game', 3, '1997', '00:01:00', 4, 3, NULL, 'super'),
('The Game', 5, '1997', '00:01:00', 5, 3, NULL, 'super'),
('The Game', 1, '1997', '00:01:00', 2, 3, NULL, 'super'),
('The Game', 4, '1997', '00:01:00', 1, 3, NULL, 'super');