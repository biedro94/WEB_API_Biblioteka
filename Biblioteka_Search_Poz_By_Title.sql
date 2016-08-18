USE [testy]
GO
CREATE PROCEDURE [Biblioteka_Search_Poz_By_Title] @s nvarchar(50)
AS
set @s ='%' + @s + '%';
select * from [Biblioteka.Pozycje] where tytul like @s;



