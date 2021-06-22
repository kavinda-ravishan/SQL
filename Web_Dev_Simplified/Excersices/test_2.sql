CREATE TABLE songs(
	id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length FLOAT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(album_id) REFERENCES albums(id)
);

SELECT name AS "Band Name" FROM bands;

SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year ASC
LIMIT 1;

SELECT bands.name AS "Bands Name" FROM albums
LEFT JOIN bands ON albums.band_id = bands.id
GROUP BY albums.band_id;

SELECT bands.name AS "Band Name" FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING count(albums.id) = 0;

SELECT albums.name AS "Name",
albums.release_year as "Release Year",
SUM(songs.length) AS "Duration"
FROM songs
JOIN albums ON songs.album_id = albums.id
GROUP BY albums.id
ORDER BY SUM(songs.length) DESC
LIMIT 1;

SELECT * FROM albums
HAVING release_year IS NULL;

UPDATE albums
SET release_year = 1986
WHERE id = 4;

SELECT * FROM albums
HAVING id = 4;

INSERT INTO bands (name)
VALUE ("KvN");

SELECT * FROM bands WHERE name = "KvN";

# KvN band Id = 8
INSERT INTO albums(name, release_year, band_id)
VALUE ("kavinda", 2021, 8);

# kavinda album Id = 19
SELECT * FROM albums HAVING name = "kavinda";

DELETE FROM albums WHERE id = 19;
DELETE FROM bands WHERE id = 8;

SELECT AVG(length) AS "Average Song Duration" FROM songs;

SELECT albums.name AS "Album Name",
albums.release_year AS "Release Year",
MAX(songs.length) AS "Duration"
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.id;

SELECT bands.name AS "Band", COUNT(songs.id) AS "Number of songs" FROM songs
JOIN albums ON songs.album_id = albums.id
JOIN bands ON albums.band_id = bands.id
GROUP BY bands.id;
















