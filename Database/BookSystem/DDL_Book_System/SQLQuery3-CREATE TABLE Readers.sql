--SQLQuery3-CREATE TABLE Readers.sql

USE BookSystem;

CREATE TABLE Readers
(
reader_id			INT	IDENTITY(1,1)		PRIMARY KEY,
reader_last_name	NVARCHAR(50)			NOT NULL,
reader_first_name	NVARCHAR(20)			NOT NULL,
reader_middle_name	NVARCHAR(25)			NULL,
number_read_card	AS
	(
	UPPER(LEFT(reader_last_name,1))+
	UPPER(LEFT(reader_first_name,1))+
	'-'+
	RIGHT('0000' + CAST(reader_id AS NVARCHAR(10)),4)
	) PERSISTED UNIQUE,
birth_date			DATE					NULL,
reader_phone		NVARCHAR(12)			NULL
	CHECK (reader_phone IS NULL OR 
	(reader_phone LIKE '+7%'AND LEN(reader_phone)=12) OR 
	(reader_phone LIKE '8%' AND LEN(reader_phone)=11)),
reader_adress		NVARCHAR(150)			NOT NULL,
reader_email		NVARCHAR(150)			NULL
	CHECK (reader_email IS NULL or reader_email LIKE '%@%.%'),
registration_date	DATETIME DEFAULT GETDATE(),
is_active			BIT DEFAULT 1

);