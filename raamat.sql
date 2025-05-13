CREATE DATABASE TITpe23_baas;
--kasutame andmebaasi
USE TITpe23_baas;
--tabeli loomine
CREATE TABLE raamat(
raamatID int not null PRIMARY KEY identity(1,1),
raamatNimetus varchar(100) not null,
zanrID int,
autorID int,
hind decimal(5,2),
v_aasta int);
SELECT * FROM raamat;

--andmete lisamine tabelisse
--' ülakoma
INSERT INTO raamat(
raamatNimetus, zanrID, autorID, hind, v_aasta)
VALUES(
'Alice Imedemaal', 2, 2, 20.50, 2015);
--tabeli kustatamine
--drop table raamat;
CREATE TABLE zanr(
zanrID int not null PRIMARY KEY identity(1,1),
zanrNimetus varchar(25) UNIQUE);
SELECT * FROM zanr;
INSERT INTO zanr(zanrNimetus)
VALUES ('komöödia'),('detktiiv');

--Foreign key  lisamine zanrID tabelis raamat

ALTER TABLE raamat ADD foreign key (zanrID)
REFERENCES zanr(zanrID)

CREATE TABLE autor(
autorID int not null PRIMARY KEY identity(1,1),
autorEesnimi varchar(25),
autorPerenimi varchar(30),
synniaeg date,
synnikoht char(10));

SELECT * FROM autor;

INSERT INTO autor(
autorEesnimi, autorPerenimi, synniaeg, synnikoht)
VALUES (
'Lewis', 'Carrol', '1900-11-30', 'UK');

ALTER TABLE raamat ADD foreign key (autorID)
REFERENCES autor(autorID)
--FK kontrollimiseks lisame autorID mis ei ole kasutusel
INSERT INTO raamat(
raamatNimetus, zanrID, autorID, hind, v_aasta)
VALUES(
'Alice Imedemaal+++++', 2, 2, 20.50, 2015);

SELECT * FROM raamat;
--raamatu kustutamine - 1 kirje kustutamine
DELETE FROM raamat WHERE raamatID=5
