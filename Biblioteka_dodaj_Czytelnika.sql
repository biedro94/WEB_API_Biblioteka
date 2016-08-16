/*Dodawanie czytelnika do bazy danych */
CREATE PROCEDURE [Biblioteka_Dodaj_Uzytkownika] @imie nvarchar(30), @nazwisko nvarchar(40), @miejscowosc nvarchar(40), @adres nvarchar(50), @pesel decimal(11,0), @telefon nvarchar(15) 
AS
   DECLARE @InsertControl int
   SET @InsertControl = 0;
   SET NOCOUNT ON;

   INSERT INTO [Biblioteka.Czytelnicy](imie, nazwisko, miejscowosc, adres, pesel, telefon) VALUES(@imie, @nazwisko, @miejscowosc, @adres, @pesel, @telefon);
   select @InsertControl = @@ROWCOUNT;
   SELECT @InsertControl as ilosc_insert;



