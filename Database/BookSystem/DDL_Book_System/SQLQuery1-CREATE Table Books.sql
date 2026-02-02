--SQLQuery1-CREATE Table Books.sql

USE BookSystem;

CREATE TABLE Books
(
book_id				INT	IDENTITY(1,1)	PRIMARY KEY,
book_name			NVARCHAR(255)		NOT NULL,
[year]				SMALLINT			NOT NULL
	CHECK ([year] BETWEEN 1500 AND YEAR(GETDATE())),
pages		INT							NOT NULL
	CHECK (pages > 0),
file_cover_path		NVARCHAR(255)		NULL,
discription			NVARCHAR(MAX)		NULL,
rating				TINYINT				NULL		
);