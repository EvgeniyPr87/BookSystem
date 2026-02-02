--SQLQuery2-CREATE INDEX.sql

USE BookSystem;

CREATE INDEX IX_Books_Title			ON		Books(book_name);

CREATE INDEX IX_Books_Year			ON		Books([year]);

CREATE INDEX IX_Books_Rating		ON		Books(rating) WHERE rating IS NOT NULL;


CREATE INDEX IX_Authors_Name		ON		Authors(last_name);

CREATE INDEX IX_Authors_Full_Name	ON		Authors(last_name,first_name);

CREATE INDEX IX_BookAuthors_BookId	ON		BooksAuthorsRelation(book_id);

CREATE INDEX IX_BookAuthors_AuthorId ON		BooksAuthorsRelation(author_id);