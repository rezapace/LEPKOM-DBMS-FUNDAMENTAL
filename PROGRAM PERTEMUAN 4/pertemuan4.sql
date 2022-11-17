
-- Nomor pembukaan 


mysql -u root

create database pasien;

show databases;

use pasien;


-- 			-- Nomor 1
-- 1. Buatlah sebuah table dengan nama “pasien” dan field sebagai berikut : (10 point)

create table pasien (
no_pasien VARCHAR(15) PRIMARY KEY,
nama VARCHAR(15),
no_kamar VARCHAR(20),
usia VARCHAR(12),
tgl_lahir VARCHAR(12));

desc pasien;


-- 			-- Nomor 2
-- 2. Ubah tipe data “tgl_lahir’ dari varchar menjadi date. (10 point)

ALTER TABLE pasien Modify tgl_lahir Date;

desc pasien;


-- 			-- Nomor 3
-- 3. Hapus primary key pada no_pasien. (10 point)

ALTER TABLE pasien DROP PRIMARY KEY;

desc pasien;


-- 			-- Nomor 4
-- 4. Tambahkan record pada tabel pasien sebagai berikut : (10 point)

INSERT INTO pasien values ('123','Ridho','12','20','1992/1/12');
INSERT INTO pasien values ('125','Sania','13','21','1991/1/13');
INSERT INTO pasien values ('126','Zaki','12','20','1991/1/14');
INSERT INTO pasien values ('127','Mulyadi','12','19','1991/1/16');
INSERT INTO pasien values ('128','Ruth','15','20','1991/1/17');

SELECT * FROM pasien;


-- 			-- Nomor 5
-- 5. Tampilkan seluruh record yang memiliki no_kamar 12 atau 15. (10 point)

SELECT * FROM pasien WHERE no_kamar=12 OR no_kamar=15;


-- 			-- Nomor 6
-- 6. Tambahkan record baru dengan isi record sebagai berikut : (10 point)

INSERT INTO pasien values ('129','Rian','15','17','1993/10/18');

SELECT * FROM pasien;

-- 			-- Nomor 7
-- 7. Tampilkan record No_pasien, Nama, dan No_kamar yang memiliki nama berakhiran
-- huruf “i”. (10 point)

SELECT no_pasien,nama,no_kamar FROM pasien WHERE nama LIKE '%i';


-- 			-- Nomor 8
-- 8. Tampilkan record No_pasien, Nama, dan usia yang memiliki nama dengan
-- mengandung huruf “u”. (10 point)

SELECT no_pasien,nama,usia FROM pasien WHERE nama LIKE '%u%';


			-- Nomor 9
-- 9. Tampilkan seluruh record tabel pasien dimana umur lebih kecil atau sama dengan
-- 20. (10 point)


SELECT * FROM pasien WHERE usia <= 20;


			-- Nomor 10
-- 10. Tampilkan seluruh record tetapi tidak memiliki nama Ruth. (10 point)

SELECT * FROM pasien WHERE NOT nama='Ruth';