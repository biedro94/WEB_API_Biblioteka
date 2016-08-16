
/* wype³nianie danymi */
declare @i int
set @i = 101
while @i < 300
    begin
      set @i += 1
	  	  INSERT INTO [Biblioteka.Kategorie] VALUES ('Kategoria nr: ' + cast(@i as char),'Opis');
    end


declare @k int
set @k = 4
while @k < 50000
    begin
      set @k += 1
	  	  INSERT INTO [Biblioteka.Pozycje] VALUES ('Tytu³' + cast(@k as char),
													'Autor' + cast(cast(rand()*6000 as int) as char),
													null,null,null,1950 + cast(rand()*60 as int),cast(rand()*300 as int));
    end


	
/*	select convert(numeric(11,0),rand() * 89999999999) + 10000000000

	select substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + 
	substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + substring(convert(char,convert(int,rand()*10000)),1,3);

	select cast(cast(rand()*1000 as int)as char) + '-' + cast(cast(rand()*1000 as int)as char) + '-' + cast(cast(rand()*1000 as int)as char)
	select replace(convert(char,cast(rand() * 1000 as int))+'-'+convert(char,cast(rand() * 1000 as int))+'-'+convert(char,cast((rand() * 1000)+1000 as int)%1000),' ','')
	select 'sss' + 'ggg'*/

create view imiona as
select 0 as id, 'Anna' as imie union
select 1 as id, 'Adam' as imie union
select 2 as id, 'Artur' as imie union
select 3 as id, 'Zbigniew' as imie union
select 4 as id, 'Karol' as imie union
select 5 as id, 'Ewelina' as imie union
select 6 as id, 'Zofia' as imie union
select 7 as id, 'Krzysztof' as imie union
select 8 as id, 'Szymon' as imie union
select 9 as id, 'Piotr' as imie union
select 10 as id, 'Patrycja' as imie union
select 11 as id, 'Konrad' as imie union
select 12 as id, 'Agnieszka' as imie union
select 13 as id, 'Kinga' as imie union
select 14 as id, '£ukasz' as imie union
select 15 as id, 'Marcin' as imie union
select 16 as id, 'Norbert' as imie union
select 17 as id, 'Mateusz' as imie union
select 18 as id, 'Micha³' as imie union
select 19 as id, 'Ewa' as imie union
select 20 as id, 'Tomasz' as imie;

/*select * from imiona;

select imie from imiona where id=(cast(rand()*100 as int)%21)*/

create view nazwiska as
select 0 as id, 'K³os' as nazwisko union
select 1 as id, 'Pytel' as nazwisko union
select 2 as id, 'Mendys' as nazwisko union
select 3 as id, 'Pietruszko' as nazwisko union
select 4 as id, 'Wicher' as nazwisko union
select 5 as id, 'Figura' as nazwisko union
select 6 as id, 'Dabkus' as nazwisko union
select 7 as id, 'Dachter' as nazwisko union
select 8 as id, 'Wabik' as nazwisko union
select 9 as id, 'Kos' as nazwisko union
select 10 as id, 'Wachoñ' as nazwisko union
select 11 as id, 'Motyl' as nazwisko union
select 12 as id, 'Skupieñ' as nazwisko union
select 13 as id, 'Siewiet' as nazwisko union
select 14 as id, 'Talar' as nazwisko union
select 15 as id, 'Balin' as nazwisko union
select 16 as id, 'W³odarczyk' as nazwisko union
select 17 as id, 'Bindus' as nazwisko union
select 18 as id, 'Micha³' as nazwisko union
select 19 as id, 'Babkin' as nazwisko union
select 20 as id, 'Radziej' as nazwisko;

/*select * from nazwiska;

select nazwisko from nazwiska where id=(cast(rand()*100 as int)%21)*/

create view miejscowosci as
select 0 as id, 'Piotrków Trybunalski' as miejscowosc union
select 1 as id, '£ódŸ' as miejscowosc union
select 2 as id, 'Radom' as miejscowosc union
select 3 as id, 'Czêstochowa' as miejscowosc union
select 4 as id, 'Gdañsk' as miejscowosc union
select 5 as id, 'Warszawa' as miejscowosc union
select 6 as id, 'Kielce' as miejscowosc union
select 7 as id, 'Kraków' as miejscowosc union
select 8 as id, 'Katowice' as miejscowosc union
select 9 as id, 'Zgierz' as miejscowosc union
select 10 as id, 'Wola Krzysztoporska' as miejscowosc union
select 11 as id, 'Bia³ystok' as miejscowosc union
select 12 as id, 'Szczecin' as miejscowosc union
select 13 as id, 'Toruñ' as miejscowosc union
select 14 as id, 'Gorzów Wielkopolski' as miejscowosc union
select 15 as id, 'Rzeszów' as miejscowosc union
select 16 as id, 'Lublin' as miejscowosc union
select 17 as id, 'Zakopane' as miejscowosc union
select 18 as id, 'Gdynia' as miejscowosc union
select 19 as id, 'Olsztyn' as miejscowosc union
select 20 as id, 'Radomsko' as miejscowosc;
/*
select * from miejscowosci;

select miejscowosc from miejscowosci where id=(cast(rand()*100 as int)%21)

select replace(replace('Ul.Nazwa' + convert(char,cast(rand()*500 as int)) + '_' + cast(cast(rand()*300 as int)as char),' ', ''),'_', ' ');
select 'Ul.Nazwa' + convert(char,cast(rand()*500 as int)) + '_' + convert(char,cast(rand()*300 as int));*/




declare @s int
set @s = 0
while @s < 10000
    begin
      set @s += 1
	  	  INSERT INTO [Biblioteka.Czytelnicy] VALUES ((select imie from imiona where id=(cast(rand()*100 as int)%21)),
													(select nazwisko from nazwiska where id=(cast(rand()*100 as int)%21)),
													(select miejscowosc from miejscowosci where id=(cast(rand()*100 as int)%21)),
													replace(replace('Ul. Nazwa' + cast(cast(rand()*500 as int) as char) + '_' + cast(cast(rand()*300 as int)as char),' ', ''),'_', ' '),
													(select convert(numeric(11,0),rand() * 89999999999) + 10000000000),
													(	select substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + 
													substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + substring(convert(char,convert(int,rand()*10000)),1,3))
													);
		  INSERT INTO [Biblioteka.Pracownicy] VALUES ((select imie from imiona where id=(cast(rand()*100 as int)%21)),
													(select nazwisko from nazwiska where id=(cast(rand()*100 as int)%21)),
													(select miejscowosc from miejscowosci where id=(cast(rand()*100 as int)%21)),
													replace(replace('Ul. Nazwa' + cast(cast(rand()*500 as int) as char) + '_' + cast(cast(rand()*300 as int)as char),' ', ''),'_', ' '),
													(select convert(numeric(11,0),rand() * 89999999999) + 10000000000),(	select substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + 
													substring(convert(char,convert(int,rand()*10000)),1,3) + '-' + substring(convert(char,convert(int,rand()*10000)),1,3))
													);
    end

drop view imiona;
drop view nazwiska;
drop view miejscowosci;
/*
select count(1) from [Biblioteka.Pracownicy];
select cast(rand()*20000 as int)%(select count(1) from [Biblioteka.Pracownicy])+1;
select DATEADD(hour,cast(rand()*10 as int)%9,DATEADD(day,cast(rand()*1000 as int)%365,'2014-01-01 8:10:13.000'));
select DATEADD(hour,cast(rand()*10 as int)%9,DATEADD(day,cast(rand()*1000 as int)%365,'2015-01-02 8:10:13.000'));*/

declare @v int
set @v = 0
while @v < 11000
    begin
      set @v += 1
	  	  INSERT INTO [Biblioteka.Wypozyczenia] VALUES (cast(rand()*100000 as int)%(select count(1) from [Biblioteka.Pozycje])+1,
														cast(rand()*20000 as int)%(select count(1) from [Biblioteka.Czytelnicy])+1,
														cast(rand()*20000 as int)%(select count(1) from [Biblioteka.Pracownicy])+1,
														DATEADD(hour,cast(rand()*10 as int)%9,DATEADD(day,cast(rand()*1000 as int)%365,'2014-01-01 8:10:13.000')),
														DATEADD(hour,cast(rand()*10 as int)%9,DATEADD(day,cast(rand()*1000 as int)%365,'2015-01-02 8:10:13.000'))
														);
		/*update [Biblioteka.Wypozyczenia] set data_zwrotu=Null where id_poz=(cast(rand()*100000 as int)%(select count(1) from [Biblioteka.Pozycje])+1)*/
    end

	

