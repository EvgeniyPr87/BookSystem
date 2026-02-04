--SQLQuery2-INSERT Books.sql

USE BookSystem;

--INSERT Books
--		(book_name, [year],pages, file_cover_path,discription,rating,publishing_house_id)
--VALUES	(N'Единожды солгав',N'2018',400 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Edinozhdy_solgav.jpeg"',NULL, NULL,2),
--		(N'Незнакомец',N'2017',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Neznakomets.jpeg"',NULL, NULL,2),
--		(N'Всего один взгляд',N'2022',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Vsego_odin_vzglyad.jpeg"',NULL, NULL,1),
--		(N'Беглец',N'2021',490 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Beglets.jpeg"',NULL, NULL,2),
--		(N'Не отпускай',N'2019',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Ne_otpuskaj.jpeg"',NULL, NULL,2),
--		(N'Невиновный',N'2022',400 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Nevinovnyj.jpeg"',NULL, NULL,1),
--		(N'Убегай !',N'2021',480, N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Ubegaj.jpeg"',NULL, NULL,2),
--		(N'Победитель',N'2023',448 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Pobeditel.jpeg"',NULL, NULL,2),
--		(N'Не говори никому',N'2021',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Ne_govori_nikomu._Beglets.jpeg"',NULL, NULL,2),
--		(N'Прошлое не отпустит',N'2014',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Proshloe_ne_otpustit.jpeg"',NULL, NULL,2),
--		(N'Я тебя найду',N'2026',416 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Ya_tebya_najdu.jpeg"',NULL, NULL,2),
--		(N'Чаща',N'2010',500,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Harlan_Koben__Chascha.jpeg"',NULL, NULL,1),
--		(N'Шесть лет',N'2014',384 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\zxtdaLQ8kVEJKJZUIB7uw.jpg"',NULL, NULL,1),
		
--		(N'Исчезнуть не простившись',N'2011',416 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Ischeznut_ne_prostivshis.jpeg"',NULL, NULL,3),
--		(N'Не отварачивайся',N'2014',416 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Ne_otvorachivajsya.jpeg"',NULL, NULL,1),
--		(N'Бойся самого худшего',N'2011',320 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Bojsya_samogo_hudshego.jpeg"',NULL, NULL,3),
--		(N'Происшествие',N'2012',500 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Proisshestvie.jpeg"',NULL, NULL,3),
--		(N'Смерть у порога',N'2011',448 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Smert_u_poroga.jpeg"',NULL, NULL,2),
--		(N'След на стекле',N'2017',448 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Sled_na_stekle.jpeg"',NULL, NULL,1),
--		(N'Не обещай ничего',N'2019',512 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Linvud_Barkli__Ne_obeschaj_nichego.jpeg"',NULL, NULL,3),
		
--		(N'Евгений Онегин',N'2026',240 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Aleksandr_Pushkin__Evgenij_Onegin._Roman_v_stihah.jpeg"',NULL, NULL,1),
		
--		(N'Эффективный и современный С++',N'2016',304 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Skott_Mejers__Effektivnyj_i_sovremennyj_S._42_rekomendatsii_po_ispolzovaniyu_C11.jpeg"',NULL, NULL,3),
		
--		(N'Новая ловушка',N'2019',288 ,N'"C:\Users\ypron\source\repos\BookSystem\Database\BookSystem\Covers\Den_Pobloki__Novaya_lovushka.jpeg"',NULL, NULL,4);
		
		--(N'',N'',500 ,NULL,NULL, NULL),
		--(N'',N'',500 ,NULL,NULL, NULL),
		--(N'',N'',500 ,NULL,NULL, NULL),
		--(N'',N'',500 ,NULL,NULL, NULL),
		--(N'',N'',500 ,NULL,NULL, NULL),
		--(N'',N'',500 ,NULL,NULL, NULL);


--INSERT BooksGenresRelation
--		(book_id, genre_id)
--VALUES	(2,7),(2,11),
--		(3,7),(3,11),
--		(4,7),
--		(5,7),(5,11),
--		(6,7),(6,11),
--		(7,7),(7,11),
--		(8,7),(8,11),
--		(9,7),(9,11),
--		(10,7),(10,11),
--		(11,7),(11,11),
--		(12,7),(12,11),
--		(13,7),(13,11),
--		(14,7),(14,11),
--		(15,7),(15,11),
--		(16,7),(16,11),
--		(17,7),(17,11),
--		(18,7),(18,11),
--		(19,7),(19,11),
--		(20,7),(20,11),
--		(22,27),(22,24),(22,1),
--		(23,20),(23,19),
--		(24,10),(24,23);


INSERT BooksAuthorsRelation
		(book_id, author_id)
VALUES
		(2 ,1),
		(3 ,1),
		(4 ,1),
		(5 ,1),
		(6 ,1),
		(7 ,1),
		(8 ,1),
		(9 ,1),
		(10,1),
		(11,1),
		(12,1),
		(13,1),
		(14,1),
		(15,18),
		(16,18),
		(17,18),
		(18,18),
		(19,18),
		(20,18),
		(21,18),
		(22,9),
		(23,7),
		(24,13);
