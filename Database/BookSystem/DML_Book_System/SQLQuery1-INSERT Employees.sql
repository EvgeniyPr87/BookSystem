--SQLQuery1-INSERT Employees.sql

USE BookSystem;

INSERT Employees
		( emploee_last_name, emploee_first_name, emploee_middle_name, employee_start_date,employee_address,employee_phone, employee_email, position, is_active)
VALUES
		--( N'Редько',	N'Валерий',	N'Михайлович',	N'2024-12-08', N'г.Армавир, ул.Крюкова 9,кв.7',N'+79528266133',N'director@yandex.ru', N'Директор', 1 );
		( N'Кульков',	N'Георгий',	N'Дмитревич',N'2023-05-10', N'г.Армавир, ул.Пакетова 3,кв.78',N'+79518233163',N'zamdirector@yandex.ru', N'Заместитель директора', 1 ),
		( N'Римская',	N'Валерия',	N'Ивановна',N'2020-02-18', N'г.Армавир, ул.Крюкова 19',N'+79528264888',N'  library@yandex.ru', N'Библиотекарь', 1 ),
		( N'Терновская',N'Светлана',N'Владимировна',N'2025-12-01', N'г.Армавир, ул.Луговая 29,кв.77',N'+79527266177',N'library@yandex.ru ', N'Библиотекарь', 1 ),
		( N'Ленский',N'Федор',N'Михайлович',N'2022-10-01', N'г.Армавир, ул.Полевая 12',N'+79608266773',N' library@yandex.ru', N'Библиотекарь', 1 );

		
