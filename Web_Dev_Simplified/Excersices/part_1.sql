CREATE TABLE songs(
	id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(album_id) REFERENCES albums(id)
);

SELECT * FROM albums;
SELECT * FROM bands;
SELECT * FROM songs;

SELECT name as BAND_NAME FROM bands;

SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

