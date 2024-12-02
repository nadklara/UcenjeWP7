use master;
go
drop database if exists vjezba3;
go
create database vjezba3;
go
use vjezba3;
go

create table IspitniRok(
sifra int,
predmet varchar(50),
vrstaIspita varchar(50),
datum datetime,
pristupio bit
);
