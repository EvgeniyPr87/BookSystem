--SQLQuery2-CREATE INDEX for books.sql

USE BookSystem;

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name= 'IX_Books_Title')
BEGIN
	CREATE INDEX IX_Books_Title				ON		Books(book_name);
	PRINT 'IX_Books_Title create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Books_Year')
BEGIN
	CREATE INDEX IX_Books_Year				ON		Books([year]);
	PRINT 'IX_Books_Year create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Books_Rating')
BEGIN
	CREATE INDEX IX_Books_Rating			ON		Books(rating) WHERE rating IS NOT NULL;
	PRINT 'IX_Books_Rating create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Books_PublisherId')
BEGIN
	CREATE INDEX IX_Books_PublisherId		ON		Books(publishing_house_id);
	PRINT 'IX_Books_PublisherId create';
END


IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Authors_Name')
BEGIN
	CREATE INDEX IX_Authors_Name			ON		Authors(last_name);
	PRINT 'IX_Authors_Name create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Authors_FullName')
BEGIN
	CREATE INDEX IX_Authors_FullName		ON		Authors(last_name,first_name,middle_name) WHERE middle_name IS NOT NULL;
	PRINT 'IX_Authors_FullName create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Authors_Country')
BEGIN
	CREATE INDEX IX_Authors_Country			ON		Authors(country) WHERE country IS NOT NULL;
	PRINT 'IX_Authors_Country create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_BookAuthors_BookId')
BEGIN
	CREATE INDEX IX_BookAuthors_BookId		ON		BooksAuthorsRelation(book_id);
	PRINT 'IX_BookAuthors_BookId create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_BookAuthors_AuthorId')
BEGIN
	CREATE INDEX IX_BookAuthors_AuthorId	ON		BooksAuthorsRelation(author_id);
	PRINT 'IX_BookAuthors_AuthorId create';
END


IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Genres_Name')
BEGIN
	CREATE INDEX IX_Genres_Name				ON		Genres(genre_name);
	PRINT 'IX_Genres_Name create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_Genres_ParentId')
BEGIN
	CREATE INDEX IX_Genres_ParentId			ON		Genres(parent_genre_id) WHERE parent_genre_id IS NOT NULL;
	PRINT 'IX_Genres_ParentId create';
END

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name='IX_PublishingHouse_Name')
BEGIN
	CREATE INDEX IX_PublishingHouse_Name	ON	PublishingHouses(publishing_house_name);
	PRINT 'IX_PublishingHouse_Name create';
END


