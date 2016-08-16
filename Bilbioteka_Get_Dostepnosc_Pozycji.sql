/*Procedura sprawdzajaca dostepnosc pozycji */
CREATE PROCEDURE [Biblioteka_Get_Dostepnosc_Pozycji] @id int
AS
BEGIN
DECLARE @bit bit
IF ((SELECT ilosc_dni_wypozyczenia FROM [Biblioteka.Wypozyczenia] WHERE id_poz=@id) IS NULL)
	BEGIN
		SET @bit = 1;
		SELECT @bit
	END
ELSE 
	BEGIN	
		SET @bit=0;
		SELECT @bit
	END
END