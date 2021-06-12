CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id) # make id column as primary key
);
# NOT NULL : must not empty
# AUTO_INCREMENT : increment automatically with new entry