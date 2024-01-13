CREATE database Minions;
USE Minions;
CREATE TABLE minions(
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    CONSTRAINT pk_id
    PRIMARY KEY(id)
);
CREATE TABLE towns (
    town_id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT pk_town_id PRIMARY KEY (town_id)
);