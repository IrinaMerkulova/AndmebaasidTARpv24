--AB loomine
Create database MerkulovaBaas;

use MerkulovaBaas;
--identity (1,1) - поле заполняется без команды Insert Into
CREATE TABLE opilane(
opilaneId int primary key identity(1,1),
eesnimi varchar(25) not null,
perenimi varchar(25) not null,
synniaeg date,
stip bit,
aadress text,
keskmine_hinne decimal(2,1)
)
select * from opilane;
--andmete lisamine tabelisse
INSERT INTO opilane(
eesnimi,
perenimi, 
synniaeg, 
stip, 
keskmine_hinne)
VALUES(
'Nikita',
'Nikita',
'2000-12-12',
1,
4.5),
(
'Nikita2',
'Nikita2',
'2000-12-12',
1,
4.5);

--tabeli kustutamine
drop table opilane;
--rida kustutamine, kus on opilaneId=2
DELETE FROM opilane WHERE opilaneId=2;
select * from opilane;

--andmete uuendamine
UPDATE opilane SET aadress='Tartu'
WHERE opilaneId=3
--------------------------------Protseduurid---------------------------------------------
--Õpilase andemte lisamine tabelisse
--Õpilane kustutamine tabelist id järgi
--Otsing nimi järgi
--andmete uuendamine, näiteks ... stip muudetakse 







