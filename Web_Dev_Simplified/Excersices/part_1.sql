# https://github.com/WebDevSimplified/Learn-SQL

USE record_company;

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

SELECT name as "BAND NAME" FROM bands;

SELECT * FROM albums
WHERE release_year IS NOT NULL
ORDER BY release_year
LIMIT 1;

# if bands have a unique name
SELECT DISTINCT bands.name AS "Band Name" FROM bands
JOIN albums ON bands.id = albums.band_id;

# or If bands do not have a unique name

SELECT bands.name AS 'Band Name' FROM bands
JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) > 0;

SELECT bands.name AS 'Band Name', COUNT(albums.id) AS "Number of albums" FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id;

SELECT bands.name AS 'Band Name' FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY albums.band_id
HAVING COUNT(albums.id) = 0;

SELECT albums.name as Name, 
albums.release_year as 'Release Year', 
SUM(songs.length) as 'Duration'
FROM albums
JOIN songs on albums.id = songs.album_id
GROUP BY songs.album_id
ORDER BY Duration DESC
LIMIT 1;

UPDATE albums
SET release_year = 1986
WHERE id = 4;

SELECT AVG(length) as 'Average Song Duration' FROM songs;

SELECT albums.name AS 'Album',
albums.release_year AS 'Release Year',
MAX(songs.length) AS 'Duration'
FROM albums
JOIN songs ON albums.id = songs.album_id
GROUP BY songs.album_id;

SELECT bands.name AS 'Band', COUNT(songs.id) AS 'Number of Songs'
FROM bands
JOIN albums ON bands.id = albums.band_id
JOIN songs ON albums.id = songs.album_id
GROUP BY albums.band_id;