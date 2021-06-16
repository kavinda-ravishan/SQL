CREATE DATABASE record_company;

USE record_company; # select a database for run feature queries

CREATE TABLE test(
	test_column_1 INT
); # create a table with one column name test_column_1 and data type int

# change the table after created
ALTER TABLE test
ADD test_column_2 VARCHAR(255); # create a new column called test_column_2
# VARCHAR(255) : variable length character array (max length : 255)

DROP TABLE test; # delete the test table

DROP DATABASE record_company;