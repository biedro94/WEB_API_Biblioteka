/* Procedura oddawania ksi¹zki  DML*/
/* Wyci¹gna³em obliczanie z kolumny ilosc_dni_wypozyczenia (datediff(day,[data_wypozyczenia],[data_zwrotu]))*/

CREATE PROCEDURE [Biblioteka__Oddaj_Ksiazke_DML] @idPoz int, @idCzyt int
AS
   DECLARE @UpdateControl int;
   SET @UpdateControl=0;
   SET NOCOUNT ON;
   UPDATE [Biblioteka.Wypozyczenia] SET [ilosc_dni_wypozyczenia] = NULL, [data_wypozyczenia] = NULL, [data_zwrotu] = NULL where id_czyt = @idCzyt AND id_poz = @idPoz
	SELECT @UpdateControl = @@ROWCOUNT;
	SELECT @UpdateControl as ilosc_update;




