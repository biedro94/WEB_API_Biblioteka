/* skrypt do wype³niania tabeli kategorii */

INSERT INTO [Biblioteka.Kategorie] VALUES ('biografie','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('fantastyka','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('horror','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('literatura m³odzie¿owa','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('literatura faktu','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('literatura wspó³czesna','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('poezja ','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('thriller/sensacja/krymina³','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('literatura popularnonaukowa','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('astronomia, astrofizyka','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('biznes, finanse','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('encyklopedie i s³owniki','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('literatura podró¿nicza','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('informatyka i matematyka','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('historia','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('poradniki','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('technika','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('bajki','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('baœnie, legendy','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('czasopisma','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('zdrowie, medycyna','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('militaria, wojskowoœæ','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('romans','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('turystyka, mapy, atlasy','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('klasyka','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('filozofia','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('nauki spo³eczne','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('opowiadania i powieœci','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('komiksy','Opis');
INSERT INTO [Biblioteka.Kategorie] VALUES ('motoryzacja','Opis');
/*Literatura piêkna (25994)
  biografia/autobiografia/pamiêtnik (13434)
  fantastyka, fantasy, science fiction (20162)
  historyczna (13778)
  horror (1995)
  klasyka (4635)
  literatura m³odzie¿owa (3046)
  literatura faktu (5431)
  literatura wspó³czesna (16557)
  poezja (6431)
  przygodowa (2117)
  publicystyka literacka i eseje (3683)
  Literatura obyczajowa i romans (15853)
  satyra (893)
  thriller/sensacja/krymina³ (17134)
  utwór dramatyczny (dramat, komedia, tragedia) (1851)
  Literatura popularnonaukowa (3262)
  astronomia, astrofizyka (507)
  biznes, finanse (9196)
  encyklopedie i s³owniki (1817)
  ezoteryka, senniki, horoskopy (1591)
  filozofia i etyka (4027)
  flora i fauna (2005)
  Literatura podró¿nicza (1972)
  informatyka i matematyka (3706)
  historia (13847)
  jêzykoznawstwo, nauka o literaturze (4540)
  nauki przyrodnicze (fizyka, chemia, biologia, itd.) (1691)
  nauki spo³eczne (psychologia, socjologia, itd.) (11917)
  popularnonaukowa (2330)
  poradniki (12635)
  poradniki dla rodziców (650)
  technika (981)
  Literatura dzieciêca (22047)
  interaktywne, obrazkowe, edukacyjne (1507)
  opowieœci dla m³odszych dzieci (520)
  bajki (537)
  wierszyki, piosenki (338)
  baœnie, legendy, podania (317)
  historie biblijne (104)
  opowiadania i powieœci (615)
  popularnonaukowe (152)
  pozosta³e (149)
  Inne (1457)
  albumy (2890)
  czasopisma (5997)
  film/kino/telewizja (989)
  hobby (2430)
  komiksy (14311)
  kulinaria, przepisy kulinarne (2689)
  militaria, wojskowoœæ (1389)
  motoryzacja (406)
  muzyka (1034)
  religia (8607)
  rêkodzie³o (348)
  rozrywka (412)
  sport (1418)
  sztuka (3001)
  teatr (289)
  turystyka, mapy, atlasy (5003)
  zdrowie, medycyna (6672)
  */
  /*
declare @i int
set @i = 101
while @i < 300
    begin
      set @i += 1
	  	  INSERT INTO [Biblioteka.Kategorie] VALUES ('Kategoria nr: ' + cast(@i as char),'Opis');
    end*/