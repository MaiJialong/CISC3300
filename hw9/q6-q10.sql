-- 6. Create a new database
CREATE DATABASE IF NOT EXISTS homework_9;
USE homework_9;

-- Create the library table
CREATE TABLE library (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL
);

-- Create the books table
CREATE TABLE books (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL
);

-- Create the libraryBook table
CREATE TABLE libraryBook (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    libraryID INT(11) NOT NULL,
    bookID INT(11) NOT NULL
);

-- 7. Insert data into the library and books tables
INSERT INTO library (name) VALUES ('Central Library');
INSERT INTO library (name) VALUES ('Community Library');

INSERT INTO books (name) VALUES ('SQL Basics');
INSERT INTO books (name) VALUES ('Advanced SQL');

-- Insert rows into the libraryBook table
INSERT INTO libraryBook (libraryID, bookID) VALUES (1, 1);
INSERT INTO libraryBook (libraryID, bookID) VALUES (1, 2);
INSERT INTO libraryBook (libraryID, bookID) VALUES (2, 1);

-- Select a library by id = 1
SELECT * FROM library WHERE id = 1;

-- Select a book using the LIKE keyword and % wildcard
SELECT * FROM books WHERE name LIKE '%SQL%';

-- Select all books and order them alphabetically by name
SELECT * FROM books ORDER BY name ASC;

-- 8. Query with a join to return the name of all books that belong to libraries
SELECT books.name FROM books
INNER JOIN libraryBook ON books.id = libraryBook.bookID
INNER JOIN library ON library.id = libraryBook.libraryID;

-- 9. Update the name of one of the books
UPDATE books SET name = 'Mastering SQL' WHERE id = 1;

-- 10. Delete a book
DELETE FROM books WHERE id = 2;
