--SQLQuery1-CREATE TABLE Authors.sql

USE BookSystem;

CREATE TABLE Authors
(
author_id		INT IDENTITY(1,1)	PRIMARY KEY,
last_name		NVARCHAR(50)		NOT NULL,
first_name		NVARCHAR(25)		NOT NULL,
middle_name		NVARCHAR(25)		NULL,
country			NVARCHAR(50)		NULL
);