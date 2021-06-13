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


