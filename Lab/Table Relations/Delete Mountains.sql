CREATE TABLE mountains(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE peaks(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    mountain_id INT NOT NULL,
		CONSTRAINT fk_peaks_mountain_id_mountains_id
			FOREIGN KEY (mountain_id)
            REFERENCES mountains(id)
            ON DELETE CASCADE
);

DELETE FROM mountains;