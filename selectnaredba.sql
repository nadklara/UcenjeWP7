select * from smjerovi;

select 1;

select *, naziv, 1 as iznos, getdate() as datum from smjerovi;

select naziv as predmet, getdate() as datumpocetka from smjerovi;

select sifra, naziv from smjerovi;

select ime, prezime from polaznici;

select * from smjerovi where sifra<2;

select * from smjerovi where sifra>2 and sifra<4;

select * from smjerovi where sifra=1 or sifra=4;

select * from polaznici where prezime ='Nađ';

select * from polaznici where prezime like '%n';

select * from polaznici where prezime like '%an%';

select * from polaznici where ime like '%a';

select * from polaznici where sifra>10 and sifra<15;

select * from polaznici where sifra between 10 and 15;

select * from polaznici where sifra=10 or sifra=15 or sifra=1;

select * from polaznici where sifra in (10,15,1);

select * from smjerovi;

update smjerovi
set izvodiseod='2024-11-04 18:30'
where sifra=2;

select * from smjerovi
where izvodiseod between '2021-01-01' and '2024-06-03'

use knjiznica;

select * from autor order by prezime asc, ime desc;

select prezime, ime from autor order by prezime asc, ime desc;

select prezime, ime from autor order by 1 asc, 2 desc;

select top 10 percent * from autor;

select top 10 * from mjesto;

select top 10 * into nova from mjesto;

select * from nova;
drop table nova;

select * from autor
select top 10 * from autor;

insert into autor (sifra, ime, prezime, datumrodenja) values
(4, 'Klara', 'Nađ', '1995-11-30');

select * from autor where sifra =8000;
delete autor where sifra =8000;

select count (*) from katalog;

select * from katalog
where naslov like '%ljubav%' and
sifra in (2541, 2660, 2664, 2938);

select * from izdavac where naziv like '%d.o.o.%';
--147

select * from izdavac where naziv like '%d.%o%o' or naziv like '%d%o%o.%' ;
--150

use svastara;

select count(*) from Artikli;