use master;
go
drop database if exists nogomet;
go
create database nogomet;
go
use nogomet;
go

create table klub(
sifra int not null primary key identity (1,1),
naziv varchar (30) not null,
osnovan datetime not null,
stadion varchar (30) not null,
predsjednik varchar (30) not null,
drzava varchar (30) not null,
liga varchar (30) not null
);

create table utakmica(
sifra int not null references klub (sifra),
datum datetime not null,
vrijeme datetime not null,
lokacija varchar (30) not null,
stadion varchar (30) not null,
domaci_klub varchar (30) not null,
gostujuci_klub varchar (30) not null,
);

create table igrac(
sifra int not null references klub (sifra),
ime varchar not null,
prezime varchar not null,
datum_rodenja datetime not null,
pozicija varchar not null,
broj_dresa int not null,
klub varchar not null
);

create table trener(
sifra int not null references klub (sifra),
ime varchar not null,
prezime varchar not null,
klub varchar not null,
nacionalnost varchar not null,
iskustvo varchar not null
);