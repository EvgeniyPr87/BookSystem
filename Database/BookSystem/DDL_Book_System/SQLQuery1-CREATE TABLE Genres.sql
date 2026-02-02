--SQLQuery1-CREATE TABLE Genres.sql
--			CREATE TABLE BooksGenresRelation

USE BookSystem;

CREATE TABLE Genres
(
genre_id				SMALLINT		IDENTITY(1,1)			PRIMARY KEY,
genre_name				NVARCHAR(50)							NOT NULL UNIQUE,
parent_genre_id			SMALLINT								NULL,
CONSTRAINT FK_Genres_Parent
FOREIGN KEY (parent_genre_id) REFERENCES GENRES(genre_id)
);



CREATE TABLE BooksGenresRelation
(
book_id		INT FOREIGN KEY	REFERENCES	Books(book_id),
genre_id	SMALLINT	FOREIGN KEY REFERENCES	Genres(genre_id),
PRIMARY KEY (book_id, genre_id)
);