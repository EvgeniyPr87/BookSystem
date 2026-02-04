--SQLQuery3-ALTER Add in Distribution.sql

USE BookSystem;

--ALTER TABLE Distributions
--ADD
--copie_id		INT			NOT NULL,
--CONSTRAINT FK_Distributions_CopiesOfBooks FOREIGN KEY (copie_id) REFERENCES CopiesOfBooks(copie_id);

ALTER TABLE Distributions
ADD
reader_id		INT			NOT NULL,
CONSTRAINT	FK_Distributions_Readers FOREIGN KEY (reader_id) REFERENCES Readers(reader_id);