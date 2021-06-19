USE record_company;

SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM songs;

SELECT songs.name AS "song name" , albums.name AS "album name", bands.name AS "band name" FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id;

SELECT 
	bands.name AS "band name", 
	COUNT(songs.name) AS "number of songs",
    SUM(songs.length) AS "total length"
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id
GROUP BY bands.name;

SELECT
	bands.name AS "band name",
    SUM(songs.length) AS "length"
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id
WHERE bands.name = "Seventh Wonder"
GROUP BY bands.name;

SELECT
	bands.name AS "band name",
    SUM(songs.length) AS "length"
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id
GROUP BY bands.name
HAVING bands.name = "Seventh Wonder";

SELECT 
	bands.name AS "band name", 
	COUNT(songs.name) AS num_songs
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id
GROUP BY bands.name
ORDER BY num_songs DESC;

SELECT 
	bands.name AS "band name", 
	COUNT(songs.name) AS num_songs
FROM songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN bands ON albums.band_id = bands.id
GROUP BY bands.name
HAVING num_songs > 30 AND num_songs < 40
ORDER BY num_songs DESC;