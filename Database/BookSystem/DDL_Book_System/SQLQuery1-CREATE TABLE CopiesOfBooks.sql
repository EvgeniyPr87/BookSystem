--SQLQuery1-CREATE TABLE CopiesOfBooks.sql

USE BookSystem;

CREATE TABLE CopiesOfBooks
(
copie_id			INT IDENTITY(1,1)		PRIMARY KEY,
book_id				INT						NOT NULL,
inventory_number	NVARCHAR(20)			NOT NULL UNIQUE,
condition			NVARCHAR(20)			DEFAULT 'Новая'
	CHECK(condition IN ('Новая', 'Хорошее', 'Удовлетворительное','Плохое', 'Списана')),
is_available		BIT						DEFAULT 1,
CONSTRAINT FK_CopiesOfBooks_Books FOREIGN KEY (book_id) REFERENCES Books(book_id)
);