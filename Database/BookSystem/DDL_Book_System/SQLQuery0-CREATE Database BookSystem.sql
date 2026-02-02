--SQLQuery0-CREATE Database BookSystem.sql

CREATE DATABASE BookSystem
ON
(
NAME			=		BookSystem_Data,
FILENAME		=		'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\BookSystem.mdf',
SIZE			=		50 MB,
MAXSIZE			=		UNLIMITED,
FILEGROWTH		=		25 MB
)
LOG ON
(
NAME			=		BookSystem_log,
FILENAME		=		'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\BookSystem.ldf',
SIZE			=		25 MB,
MAXSIZE			=		1 GB,
FILEGROWTH		=		10 MB
);