use master;
go
drop database if exists ispiti;
go
create database ispiti;
go
use ispiti;

create table IspitniRok(
sifra int not null primary key identity(1,1),
predmet varchar(30) not null,
vrstaIspita char(50) not null,
datum datetime,
pristupio bit not null
);

create table Pristupnici(
ispitniRok int not null references IspitniRok(sifra),
student char(80) not null,
brojBodova int not null,
ocjena int not null
);

select * from IspitniRok;
select * from Pristupnici;

insert into IspitniRok (predmet, vrstaIspita, datum, pristupio) values
('Programiranje', 'Zavrsni', '2025-03-28 19:00',1);

insert into Pristupnici (ispitniRok, student, brojBodova, ocjena) values
(1,'Klara Nad', 67, 4);

update Pristupnici set brojBodova=71 where ispitniRok=1;

delete from Pristupnici where ispitniRok=1;