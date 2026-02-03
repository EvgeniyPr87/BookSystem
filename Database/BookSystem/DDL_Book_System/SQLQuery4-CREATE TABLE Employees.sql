--SQLQuery4-CREATE TABLE Employees.sql

USE BookSystem;

CREATE TABLE Employees
(
employee_id					INT	IDENTITY(1,1)			PRIMARY KEY,
emploee_last_name			NVARCHAR(50)				NOT NULL,
emploee_first_name			NVARCHAR(25)				NOT NULL,
emploee_middle_name			NVARCHAR(25)				NULL,
employee_start_date			DATE						DEFAULT GETDATE(),
employee_address			NVARCHAR(150)				NULL,
employee_phone				NVARCHAR(15)				NULL
	CHECK (employee_phone IS NULL OR
		(employee_phone LIKE '+7%' AND LEN(employee_phone)=12) OR
		(employee_phone LIKE '8%' AND LEN(employee_phone)=11)),
employee_email				NVARCHAR(50)				NULL
	CHECK (employee_email IS NULL or employee_email LIKE '%@%.%'),
position					NVARCHAR(50)				NOT NULL,
is_active					BIT							DEFAULT 1,

);