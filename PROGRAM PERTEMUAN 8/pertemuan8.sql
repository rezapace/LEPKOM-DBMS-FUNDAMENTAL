-- KALO PAKE CMD

sqlplus/nolog

connect / as sysdba


-- 1) Buatlah tabel pegawai dengan ketentuan seperti berikut ini : (20 point)
CREATE TABLE pegawai (Id number(10) PRIMARY KEY,
Nama varchar2(20) not null ,
Jabatan varchar2(20) not null,
Alamat  varchar2(20) not null);

desc pegawai


-- 2) Setelah tabel diatas dibuat, masukan data-data berikut pada tabel tersebut : (20point)
insert into pegawai(Id,Nama,Jabatan,Alamat)values(1,'Agi','Direktur','Jakarta');
insert into pegawai(Id,Nama,Jabatan,Alamat)values(2,'Minong','Staff Keuangan','Depok');
insert into pegawai(Id,Nama,Jabatan,Alamat)values(3,'Soni','Manager','Bandung');
insert into pegawai(Id,Nama,Jabatan,Alamat)values(4,'Sabbil','Programmer','Pamulang');
insert into pegawai(Id,Nama,Jabatan,Alamat)values(5,'Rama','Analis','Depok');

select * from pegawai;


-- 3) Kemudian ubah data yang berasal dari Jakarta menjadi depok. (10 point)
update pegawai set Alamat='Depok' where Alamat='Jakarta';

select * from pegawai;


-- 4. Ubah data kolom jabatan yang mempunyai id = 2, sehingga nilai jabatan ersebut berubah
-- menjadi Designer dan alamatnya berubah menjadi Pamulang. (10 point)
update pegawai set Jabatan='Designer',Alamat='Pamulang' where ID=2;

select * from pegawai;

-- 5. Hapus baris yang mempunyai nilai kolom alamat = Pamulang. (10 point)
delete pegawai where Alamat='Pamulang';

select * from pegawai;


-- 6. Tampilkan semua baris dari table Pegawai. (10 point)
select * from pegawai;


-- 7. Tampilkan Nama, Jabatan dari table Pegawai yang mempunyai Id = 3. (10 point)
Select nama,jabatan from pegawai where id=3;


-- 8. Tampilkan semua baris dan kolom dari table Pegawai yang mempunyai id = 2 dan ide = 4.(10 point)
select * from pegawai where id=2 or id=4;