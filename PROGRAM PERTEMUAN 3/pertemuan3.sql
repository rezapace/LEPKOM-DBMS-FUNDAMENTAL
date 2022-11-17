-- 1. Buat tabel dengan nama “nasabah” pada database yang tersedia atau database baru
-- dengan spesifikasi sebagai berikut : (10 point)
use nasabah;

create table nasabah(
    no_rek varchar(15) primary key,
    nama varchar(50),
    alamat varchar(100),
    no_telp varchar(15),
    tgl_lahir varchar(12));

desc nasabah;


-- 2. Isikan 5 record baru dengan lengkap pada semua field – field tersebut. Pada table tersebut
-- dengan data dengan contoh sebagai berikut : (20 point)
insert into nasabah
values('121763456','razbie','jakarta','0218000063','04/05/20'),
('1121763466','riyandi','depok','082120880001','10/03/2011'),
('121863467','rizki hendro','jakarta','081299300021','11/10/2010'),
('121864287','dinawidiana','cirebon','0821999930212','01/10/2010'),
('124536534','anggi rianti','cilandak','0219382882','19/09/2010');

desc nasabah;

select * from nasabah;

-- 3. Tambahkan 1 record hanya untuk field "no_rek" dan "nama_nasabah" dengan isi field =
-- 123234564, Intan (10 point)
insert into nasabah (no_rek, nama) values ('123234564','Intan');

select * from nasabah;

-- 4. Tampilkan record dari table "nasabah" dimana "no_rek" = 124536534 (10 point)
select * from nasabah where no_rek = '124536534';

-- 5. Lakukan perubahan untuk "no_rek" 124536534 menjadi "124537891" (10 point)
update nasabah set no_rek = '124537891' where no_rek = '124536534';

select * from nasabah;

-- 6. Hapus record dimana “no_rek” = 121863467 (10 point)
delete from nasabah where no_rek = '121863467';

select * from nasabah;

-- 7. Hapus record dimana “no_rek” = 121863467 (10 point)
delete from nasabah where no_rek = '121863467';

select * from nasabah;

-- 8. Lakukan perubahan pada “no_telp” = 0219382882 menjadi 081298999000 (10 point) 9.
-- Tampilkan semua record hasil latihan 1-7 (10 point)
update nasabah set no_telp = '081298999000' where no_telp = '0219382882';

select * from nasabah;

