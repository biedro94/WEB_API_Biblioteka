/* Procedura do wyciagani wszystkich informacji o danej pozycji */

CREATE PROCEDURE [Biblioteka_Get_Szczegoly_O_Pozycji] @idPoz int
AS
SELECT * FROM [Biblioteka.Pozycje] WHERE id_poz = @idPoz
