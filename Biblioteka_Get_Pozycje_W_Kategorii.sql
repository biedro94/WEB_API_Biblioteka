USE [testy]
GO
CREATE PROCEDURE [Biblioteka_Get_Pozycje_W_Kategorii] @s nvarchar(30)
AS
select * from [Biblioteka.Pozycje] where id_kategorii = (select id_kategoria from [Biblioteka.Kategorie] where nazwa=@s);





