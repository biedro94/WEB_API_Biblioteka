USE [testy]
GO
CREATE PROCEDURE [Biblioteka_Get_Category_Names]
AS
select nazwa from [Biblioteka.Kategorie] order by nazwa;