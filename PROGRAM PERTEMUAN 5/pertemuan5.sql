-- NOMOR 1

-- BUAT AJA SEPERTI BIASA 
-- 	- CLICK KANAN PADA DATABASE 
-- 	- NEW DATABASE
-- 	- KETIKAN NAMA PADA NAMA DATABASE CONTOH (PENDUDUK_50420900)
-- 	- KLICK OK

-- UNTUK MASUK KE NOMOR 2 DAN SETERUS NYA 
-- 	- PILIH DTABASE ENGINE QUERY
-- 	- KLICK CONNECT
-- 	- MASUKAN DATA BERIKUT NYA 

-- TIPS
-- UNTUK MENJALANKAN QUERY NOMOR 2-5 COPYPASTE TEKS NYA LALU TEKAN TOMBOL EXECUTE	
-- DAN AKAN MUNCUL TEKS SUCSES DI RUN NYA

-- -- NOMOR 2
-- 2. Buat tabel dengan nama datapenduduk, dengan spesifikasi sebagai berikut :
-- a. ID_PDDK int NOT NULL
-- b. NAMA nvarchar(30) NULL
-- c. ALAMAT nvarchar(25) NULL
-- d. STATUS varchar(10) NULL

use reza_50420900
create table datapenduduk
(ID_PDDK int not null,
NAMA nvarchar (30) NULL,
ALAMAT nvarchar (25) NULL,
STATUS nvarchar (10) NULL,)

-- NOMOR 3
-- 3. Set field (kolom) ID_PDDK sebagai Primary Key untuk tabel datapenduduk. (20
-- point)

alter table datapenduduk
add constraint ppdk_pid PRIMARY KEY (ID_PDDK)

-- -- NOMOR 4
-- 4. Tambahkan kolom ke tabel datapenduduk dengan spesifikasi sebagai berikut :
-- KD_POS nvarchar(5) Null (20 point)

alter table datapenduduk
add KD_POS nvarchar (5) NULL

-- -- NOMOR 5
-- 5. Ubah panjang tipe data untuk kolom NAMA menjadi 50 dan dengan data spesifikasi
-- NOT NULL. (20 point)

alter table datapenduduk
alter column NAMA nvarchar (50) NOT NULL

