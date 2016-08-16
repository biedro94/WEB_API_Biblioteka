create table [Biblioteka.Logi]
(
id_log int identity(1,1) primary key not null,
opis nvarchar(150) not null,
data as getdate()
);