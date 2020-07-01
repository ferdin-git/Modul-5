 
create tablespace sistemjual
datafile 'C:\oraclexe\app\oracle\oradata\XE\sistem_jual.dbf'
size 30M;

- buat user
create user ferdin_0690
identified by 
default tablespace sistemjual
quota unlimited on sistemjual;

- beri hak akses
grant all privileges to ferdin_0690

- login ke user yg tlh dibuat
conn ferdin_0690/

 

create table supplier
(
id_supplier    integer       not null,
nama_supplier    varchar(5),
nama_sales varchar(5),
no_telp       varchar(3),
alamat        varchar(00),
constraint PK_supplier primary key(id_supplier)
);

create table pembelian
(
id_pembelian 	integer 	not null,
id_supplier 	integer,
username 	varchar(0),
tgl_pembelian 	date,
constraint PK_pembelian primary key(id_pembelian)
);

create table detail_pembelian
(
id_detail_pembelian integer not null,
id_pembelian integer,
total_pembelian number(3),
jumlah_pembelian varchar(0),
constraint PK_detail_pembelian primary key (id_detail_pembelian)
);

create table us_er
(
username varchar(0) not null,
password varchar(0),
nama varchar(5),
alamat varchar(00),
no_telp varchar(3),
constraint PK_us_er primary key(username)
);

create table penjualan
(
id_penjualan integer not null,
username varchar(0),
tgl_penjualan date,
constraint PK_penjualan primary key(id_penjualan)
);

create table detail_penjualan
(
id_detail_penjualan integer not null,
id_barang integer,
id_penjualan integer,
jumlah number(3),
constraint PK_deatil_penjualan primary key(id_detail_penjualan)
);

create table barang
(
id_barang integer not null,
id_kategori integer,
id_detail_pembelian integer,
nama_barang varchar(5),
stok number(),
harga number(7),
constraint PK_barang primary key (id_barang)
);

create table kategori_barang
(
id_kategori integer not null,
nama_kategori varchar(5),
deskripsi varchar(5),
constraint PK_kategori_barang primary key (id_kategori)
);

alter table pembelian
add constraint FK_id_detail_pembelian foreign key (id_detail_pembelian)
references detail_pembelian(id_detail_pembelian)
add constraint FK_username foreign key (username)
references us_er (username)
add constraint FK_id_supplier foreign key (id_supplier)
references supplier (id_supplier);

alter table us_er
add constraint FK_id_pembelian foreign key (id_pembelian)
references pembelian(id_pembelian)
add constraint FK_id_penjualan foreign key (id_penjualan)
references penjualan (id_penjualan);

alter table detail_pembelian
add constraint FK_pembelian foreign key (id_pembelian)
references pembelian (id_pembelian);

alter table penjualan
add constraint FK_usename foreign key(username)
references us_er(username);

alter table detail_penjualan
add constraint FK_id_barang foreign key (id_barang)
references barang(id_barang)
add constraint FK_d_penjualan foreign key (id_penjualan)
references penjualan (id_penjualan);

alter table barang
add constraint FK__kategori foreign key (id_kategori)
references kategori_barang (id_kategori)
add constraint FK_i_detail_pembelian foreign key (id_detail_pembelian)
references detail_pembelian (id_detail_pembelian);


create sequence id_barang
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_supplier
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_pembelian
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_detail_pembelian
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_penjualan
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_detail_penjualan
minvalue 
maxvalue 999
start with 
increment by 
cache 0;

create sequence id_kategori
minvalue 
maxvalue 999
start with 
increment by 
cache 0;



alter table pembelian rename column tgl_pembelian to n0690_tgl_pembelian;


alter table us_er
add constraint UQ_nama UNIQUE (nama);



alter table us_er modify(nama char(5));


insert into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (id_supplier.nextval, 'matahari', 'hari', '123456789', 'bekasi');

insert into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (id_supplier.nextval, 'indomart', 'heri', '234567891', 'bekasi');

insert all
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (3, 'alfamart', 'hadi', '345678912', 'solo')
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (4, 'alfamdid', 'haris', '456789123', 'papua')
into supplier (id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (5, 'superindo', 'miun', '567891234', 'makassar')
select 1 from dual;


select * from supplier

update supplier
set nama_sales = 'bandan'
where id_supplier = 23;

update supplier
set nama_sales = 'bindin'
where id_supplier = 24;

update supplier
set nama_sales = 'bundun'
where id_supplier = 3;

update supplier
set nama_sales = 'benden'
where id_supplier = 4;

update supplier
set nama_sales = 'bondon'
where id_supplier = 5;

select * from supplier;

update supplier
set nama_sales = 'bondon'
where nama_sales = 'bandan' and alamat = 'bekasi' or id_supplier = 23;

update supplier
set nama_sales = 'benden'
where nama_sales = 'bindin' and alamat = 'bekasi' or id_supplier = 24;


update supplier
set nama_sales = 'bundun'
where nama_sales = 'bundun' and alamat = 'solo' or id_supplier = 3;


update supplier
set nama_sales = 'bindin'
where nama_sales = 'benden' and alamat = 'papua' or id_supplier = 4;


update supplier
set nama_sales = 'bandan'
where nama_sales = 'bondon' and alamat = 'makasssar' or id_supplier = 5;


select * from supplier;

update supplier
set nama_sales = 'bandan'
where id_supplier like'%23%';

update supplier
set nama_sales = 'bindin'
where id_supplier like'%24%';

update supplier
set nama_sales = 'bundun'
where id_supplier like'%3%';

update supplier
set nama_sales = 'benden'
where id_supplier like'%4%';

update supplier
set nama_sales = 'bondon'
where id_supplier like'%5%';

delete from supplier where id_supplier = 3 OR alamat = 'solo';

delete from supplier where id_supplier = 4 OR alamat = 'papua';

delete from supplier where id_supplier = 5 OR alamat = 'makassar';


savepoint point1;

savepoint point2;

commit

rollback to point1;

rollback to point2;

select * from supplier order by id_supplier asc;


select alamat from supplier group by alamat;

insert all
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (1, 'matahari', 'hari', '123456789', 'bekasi')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (2, 'indomart', 'heri', '234567891', 'bekasi')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (3, 'alfamart', 'hadi', '345678912', 'solo')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (4, 'alfamdid', 'haris', '456789123', 'papua')
into supplier(id_supplier, nama_supplier, nama_sales, no_telp, alamat) values (5, 'superindo', 'miun', '567891234', 'makassar')
select 1 from dual;

insert all
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(1, 'Rumah', 'Rumah Tangga')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(2, 'Obat', 'Kesehatan')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(3, 'Fashion', 'Fashion sytle')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(4, 'Dapur', 'Peralatan Rumah Tangga')
into kategori_barang(id_kategori, nama_kategori, deskripsi) values(5, 'Hobby', 'PEralatan Olahraga')
select 1 from dual;

insert all
into us_er(username, password, nama, alamat , no_telp) values('Broden','12', 'broden', 'Sidoarjo','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Sakera', '12', 'sakera', 'Jombang','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Burdin', '12', 'burdin', 'Mojokert','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Suhar', '12', 'suhar', 'Surabaya','123456789')
into us_er(username, password, nama, alamat , no_telp) values('Rahma', '12', 'rahma', 'Madiun','123456789')
select 1 from dual;


insert all
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(1,1, 'Broden', to_date('11/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(2,2, 'Sakera', to_date('12/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(3,3, 'Burdin', to_date('13/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(4,4, 'Suhar', to_date('14/12/2012','dd/mm/yyyy'))
into pembelian(id_pembelian, id_supplier, username, tgl_pembelian) values(5,5, 'Rahma', to_date('15/12/2012','dd/mm/yyyy'))
select 1 from dual;

insert all 
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(1,1,20)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(2,2,20)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(3,3,30)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(4,4,40)
into detail_pembelian(id_detail_pembelian, id_pembelian, total_pembelian) values(5,5,50)
select 1 from dual;

insert all 
into penjualan(id_penjualan, username, tgl_penjualan) values(1,'Broden', to_date('18/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(2,'Sakera', to_date('16/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(3,'Burdin', to_date('19/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(4,'Suhar', to_date('20/03/2013','dd/mm/yyyy'))
into penjualan(id_penjualan, username, tgl_penjualan) values(5,'Rahma', to_date('21/03/2013','dd/mm/yyyy'))
select 1 from dual;

insert all
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(1,1,1,'Baygon', 50, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(2,2,2,'Bodrex', 99, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(3,3,3,'Anlene', 50, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(4,4,4,'Boneto', 99, 2000)
into barang(id_barang, id_kategori, id_detail_pembelian, nama_barang, stok, harga) values(5,5,5,'Master', 99, 2500)
select 1 from dual;

insert all
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(1,1,1,15)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(2,2,2,25)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(3,3,3,35)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(4,4,4,45)
into detail_penjualan(id_detail_penjualan, id_barang, id_penjualan, jumlah) values(5,5,5,55)
select 1 from dual;


select MAX(total_pembelian) as Pembelian_Terbanyak, MIN(total_pembelian) as Pembelian_Terendah from detail_pembelian;

select id_detail_pembelian, count(id_detail_pembelian) as BANYAK_TRANSAKSI
from detail_pembelian where id_detail_pembelian = 5 AND total_pembelian = 50
group by id_detail_pembelian;

select id_detail_penjualan, sum(jumlah) as total_item
from detail_penjualan
where id_detail_penjualan = 3
group by id_detail_penjualan;

select avg(jumlah) as rata_rata_pembelian from detail_penjualan;


select id_detail_pembelian,
(select max(total_pembelian) as pembelian_terbanyak from detail_pembelian)
as pembelian_terbanyak1 ,
(select min(total_pembelian) as pembelian_terendah from detail_pembelian)
as pembelian_terendah1 from detail_pembelian;

select id_detail_pembelian,(select count(total_pembelian) as BANYAK_TRANSAKSI
from detail_pembelian
where id_detail_pembelian <= 5 and total_pembelian like '%0%' )
as BANYAK_TRANSAKSI from detail_pembelian;

select id_detail_penjualan,(select sum(jumlah) as total_item from detail_penjualan)
as total_item from detail_penjualan;

select id_detail_penjualan,(select avg(jumlah) as rata_rata_pembelian from detail_penjualan)
as rata_rata_pembelian from detail_penjualan;

select id_detail_penjualan,(select avg(jumlah) as rata_rata_pembelian from detail_penjualan)
as rata_rata_pembelian from detail_penjualan group by id_detail_penjualan;

select id_detail_penjualan from detail_penjualan where id_detail_penjualan < (select sum(id_detail_penjualan) as data from detail_penjualan);

select id_detail_penjualan, (select max(total_pembelian) from detail_pembelian
where id_detail_penjualan < (select sum(jumlah) from detail_penjualan
where id_detail_penjualan < (select avg(jumlah) from detail_penjualan)))
as total_tertinggi from detail_penjualan;



select a.username, a.tgl_penjualan, b.jumlah
from penjualan a
join detail_penjualan b
on a.id_penjualan = b.id_penjualan
where rownum <=6;

select a.username, b.total_pembelian, c.nama_barang
from pembelian a
left join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
left join barang c
on b.id_detail_pembelian = c.id_barang
where rownum <= (select min(total_pembelian) from detail_pembelian);

select a.username, count(b.total_pembelian), c.nama_barang
from pembelian a
right join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
right join barang c
on b.id_detail_pembelian = c.id_barang
group by a.username, b.total_pembelian, c.nama_barang;

create view list_view1 as
select id_supplier, nama_sales, nama_supplier
from supplier
where id_supplier = 1;

update list_view1
set nama_sales = 'bruh'
where nama_sales = 'hari';

create view list_view2a as
select a.nama_supplier,a.nama_sales,b.tgl_pembelian
from supplier a JOIN 
pembelian b
on a.id_supplier = b.id_pembelian;

create view list_view2b as
select b.username, c.total_pembelian, d.nama_barang
from pembelian b
left join detail_pembelian c
on b.id_pembelian = c.id_detail_pembelian
left join barang d
on c.id_detail_pembelian = d.id_barang
where rownum <= (select min(total_pembelian) from detail_pembelian);

create view list_view2c as
select a.username, count(b.total_pembelian) as banyak_beli, c.nama_barang
from pembelian a
right join detail_pembelian b
on a.id_pembelian = b.id_detail_pembelian
right join barang c
on b.id_detail_pembelian = c.id_barang
group by a.username, c.nama_barang;

update list_view2a
set tgl_pembelian = to_date('10/12/2012','dd/mm/yyyy')
where nama_sales = 'bruh';

create sequence username
minvalue 1
maxvalue 999
start with 1
increment by 1
cache 20;



