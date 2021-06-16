CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT, # AUTO_INCREMENT : increment automatically with new entry
	name VARCHAR(255) NOT NULL,     # NOT NULL : must not empty
    PRIMARY KEY (id)                # make id column as primary key
);

CREATE TABLE albums(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,                      # foreign key for id the corresponding band 
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id) # band_id foreign key references the bands table and id column
);

# insert data
INSERT INTO bands (name) # bands table, name column
VALUE ('iron maiden');   # data

INSERT INTO bands (name)
VALUE ('deuce'), ('avenged sevenfold'), ('ankor');

# querying the data
SELECT * FROM bands; # get all columns and rows

SELECT * FROM bands LIMIT 2; # get all columns, only 2 rows

SELECT name FROM bands; # get only name column, all rows

# As/alias
SELECT id AS "ID", name AS "Band Name"
FROM bands;

# Order by

SELECT * FROM bands ORDER BY name; # get name column data alphabetical order
# or
SELECT * FROM bands ORDER BY name ASC;

SELECT * FROM bands ORDER BY name DESC; # get name column data descending order (reverse alphabetical order)

# Insert data to albums table
INSERT INTO albums (name, release_year, band_id) # Columns data going to enter
VALUES 	("The number of the beasts", 1985, 1),
		("Power slave", 1984, 1),
        ("Nightmare", 2018, 2),
        ("Nightmare", 2010, 3),
        ("Test Album", NULL, 3); # NULL for empty field
        
SELECT * FROM albums; # get all columns and rows from albums table

SELECT name FROM albums; # get only name column

SELECT DISTINCT name FROM albums; # # get unique names only

UPDATE albums 			 # update albums table,
SET release_year = 1982  # release_year column,
WHERE id = 1;			 # where id = 1 row to 1982

# get all the albums release before year 2000
SELECT * FROM albums
WHERE release_year < 2000;

SELECT * FROM albums    # return all columns,
WHERE name LIKE "%er%"; # rows where with 'er' (anything befor er and anything after er) in name column.

# And
SELECT * FROM albums
WHERE release_year LIKE 1984 AND band_id = 1;

# Or
SELECT * FROM albums
WHERE name LIKE "%er%" OR band_id = 2;

# Between
SELECT * FROM albums
WHERE release_year BETWEEN 2000 AND 2018;

# Is null
SELECT * FROM albums
WHERE release_year IS NULL;

# Delete the id = 5 row
DELETE FROM albums WHERE id = 5;

SELECT * FROM albums;

# Join

# Inner join
SELECT * FROM bands                           # Join bands with albums
JOIN albums ON bands.id = albums.band_id;
# or
SELECT * FROM bands                           # Join bands with albums
INNER JOIN albums ON bands.id = albums.band_id;

SELECT * FROM albums                          # Join albums with bands
JOIN bands ON bands.id = albums.band_id;

# left join
SELECT * FROM bands                            # Returns all bands even there is no album to mach
LEFT JOIN albums ON bands.id = albums.band_id; # Bands table in left side

# right join
SELECT * FROM albums                            # Returns all bands even there is no album to mach
RIGHT JOIN bands ON bands.id = albums.band_id;  # Bands table in right side

# aggregate functions
SELECT AVG(release_year) FROM albums;

SELECT SUM(release_year) FROM albums;

# Group by

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

SELECT bands.name, COUNT(albums.id) FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY bands.id;
# or with aliasing
SELECT b.name as bans_name, COUNT(a.id) as num_albums
FROM bands as b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id;

# having vs where

SELECT b.name as bans_name, COUNT(a.id) as num_albums
FROM bands as b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id
HAVING num_albums = 1; # return rows only with num_albums = 1
# or
SELECT bands.name, COUNT(albums.id) as num_albums FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
GROUP BY bands.id
HAVING num_albums = 1;

SELECT bands.name, COUNT(albums.id) as num_albums FROM bands
LEFT JOIN albums ON bands.id = albums.band_id
WHERE bands.name = "deuce"
GROUP BY bands.id
HAVING num_albums = 1;