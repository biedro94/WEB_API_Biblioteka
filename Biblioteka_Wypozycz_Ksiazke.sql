/* Procedura DML do wypozyczania ksiazki */ 

CREATE PROCEDURE [Biblioteka_Get_Wypozycz_Pozycje] @idPoz int, @idCzyt int
AS
   DECLARE @InsertControl int
   DECLARE @Random INT;
	DECLARE @Upper INT;
	DECLARE @Lower INT;
   SET @InsertControl = 0;
   SET @Lower = 1;
	SET @Upper = 10000;
	SET @Random = ROUND(((@Upper - @Lower ) * RAND() + @Lower), 0);
   SET NOCOUNT ON;  
   DECLARE @dataWypozyczenia Datetime;
   DECLARE @dataZwrotu Datetime;
   SET @dataWypozyczenia = GETDATE();
   SET @dataZwrotu = GETDATE()+7;
	INSERT INTO [Biblioteka.Wypozyczenia] VALUES (@idPoz, @idCzyt, @Random, @dataWypozyczenia, @dataZwrotu, (DateDiff(day,@dataWypozyczenia,@dataZwrotu)));
	SELECT @InsertControl = @@ROWCOUNT;
	SELECT @InsertControl as ilosc_insert;

