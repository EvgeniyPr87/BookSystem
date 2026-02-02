--SQLQuery1-CREATE TABLE  AuthorBooksRelation.sql

USE BookSystem;

--CREATE TABLE BooksAuthorsRelation
--(
--book_id		INT FOREIGN KEY		REFERENCES	Books(book_id),
--author_id	INT	FOREIGN KEY		REFERENCES	Authors(author_id),
--PRIMARY KEY (book_id, author_id)
--);

CREATE TABLE BooksAuthorsRelation
(
book_id		INT,
author_id	INT,
PRIMARY KEY (book_id, author_id),
CONSTRAINT	FK_BA_Book		FOREIGN KEY		REFERENCES	Books(book_id),
CONSTRAINT	FK_BA_Author	FOREIGN KEY		REFERENCES	Authors(author_id),
);
 
 
 --DROP TABLE BooksAuthorsRelation;