--SQLQuery3 -CREATE TABLE Distributions .sql

USE BookSystem;

CREATE TABLE Distributions
(
distribution_id		INT IDENTITY(1,1)			PRIMARY KEY,
distribution_date	DATETIME DEFAULT GETDATE()	NOT NULL,
number_days			TINYINT						NOT NULL
	CHECK (number_days BETWEEN 1 AND 30 ),
return_date			AS DATEADD(DAY, number_days, distribution_date),
fact_return_date	DATE						NULL,
is_overdue			AS
	CASE
		WHEN fact_return_date IS NULL AND GETDATE() > DATEADD(DAY, number_days, distribution_date)
		THEN 1 ELSE 0
	END,	
penalty_of_day		DECIMAL(8,2) 				DEFAULT 15.3,
total_penalty		AS
	CASE
		WHEN fact_return_date IS NULL THEN 0
		WHEN fact_return_date > DATEADD(DAY, number_days, distribution_date)
			THEN DATEDIFF(DAY,DATEADD(DAY, number_days, distribution_date),fact_return_date )*penalty_of_day
			ELSE 0
	END,
emploee_id		INT							NOT NULL,

FOREIGN KEY (emploee_id) REFERENCES Employees(employee_id) 

);