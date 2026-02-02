--SQLQuery1-CREATE TABLE PublishingHouses.sql

USE BookSystem;

CREATE TABLE PublishingHouses
(
publishing_house_id		SMALLINT	IDENTITY(1,1)	PRIMARY KEY,
publishing_house_name	NVARCHAR(150)				NOT NULL UNIQUE,
country					NVARCHAR(50)				NULL,
city					NVARCHAR(50)				NULL,
web_site				NVARCHAR(150)				NULL
);



ALTER TABLE Books ADD publishing_house_id SMALLINT NOT NULL
FOREIGN KEY REFERENCES PublishingHouses(publishing_house_id);	