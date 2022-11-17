
	-- 						   DBMS PERTEMUAN 6
	-- 			DATA MANIPULATION LANGUAGE PADA SQL SERVER
	-- 						JUMAT 4 DESEMBER 2020
							
							
	-- =========================================================================
	-- =								NOTE									=
	-- =	JALANKAN PER BARIS													=
	-- =	TINGAL COPY PASTE AE												=
	-- =	PADA RUN USE GUNAKAN NAMA DAN NPM DARI DATA DBMS 5 SEBELUM NYA      =
	-- =	KALO MAU DI RUN DI BLOCK DULU MANA YANG MAU DI RUN BARU DI EXECUTE	=
	-- =																		=			
	-- =========================================================================


-- =============================================================================
-- 		TAMBAHAN KATA NYA HARUS ADA BIAR BISA DI RUN NGAK EROR
-- =============================================================================
use reza_50420900

ALTER TABLE datapenduduk
add KD_POS nvarchar(5) null

ALTER TABLE datapenduduk
ALTER column NAMA nvarchar(50) not null

ALTER TABLE datapenduduk
ALTER column STATUS VARCHAR (30) null

-- =============================================================================
-- 	1. Masukkan data ke tabel datapenduduk dengan data sebagai berikut :
-- =============================================================================
insert into datapenduduk values
('1','Shinta','Jl.Gugus Depan','Belum Menikah','13120'),
('2','Amin','Jl.Margonda Raya','Menikah','16424'),
('3','Dea','Jl.Lenteng Agung','Belum Menikah','12342'),
('4','Bagas','Jl.Matraman Raya','Menikah','16279'),
('5','Wati','Jl.Pramuka','Belum Menikah','14324');

SELECT * FROM datapenduduk;

-- =============================================================================
-- 	2. Tampilkan penduduk yang bertempat tinggal di Jl. Pramuka
-- =============================================================================

SELECT * FROM datapenduduk where ALAMAT='Jl.Pramuka'

-- =============================================================================
-- 	3. Tampilkan penduduk yang namanya mengandung huruf N
-- =============================================================================

SELECT * FROM datapenduduk where NAMA like '%n%'

-- =============================================================================
-- 	4. Tampilkan penduduk yang angka kedua Kode Posnya adalah 2
-- =============================================================================

SELECT * FROM datapenduduk where KD_POS like '_2%'

-- =============================================================================
-- 	5. Ubah data STATUS penduduk dengan nama ‘Shinta’ menjadi “MENIKAH’
-- =============================================================================

update datapenduduk set STATUS = 'Menikah' where NAMA = 'Shinta'

SELECT * FROM datapenduduk;

-- =============================================================================
-- 	6. Ubah data Nama penduduk ‘Dea’ menjadi ‘Dena’
-- =============================================================================

update datapenduduk set NAMA = 'Dena' where NAMA = 'Dea'

SELECT * FROM datapenduduk;

-- =============================================================================
-- 	7. Hapus penduduk yang bertempat tinggal di ‘Jl.PRAMUKA’
-- =============================================================================

delete from datapenduduk where ALAMAT = 'Jl.Pramuka'

SELECT * FROM datapenduduk;

-- =============================================================================
-- 	8. Hapus penduduk yang kode posnya mengandung angka 0
-- =============================================================================

delete from datapenduduk where KD_POS like '%0%'

SELECT * FROM datapenduduk;


	-- =============================================================================
	-- =									SELESEI									=
	-- =																			=
	-- =	KALO EROR HAPUS LG MULAI LG DARI DBMS 5									=
	-- =		DROP TABLE pasien;		(PERINTAH UNTUK MENGHAPUS TABLE)			=
	-- =		DROP DATABASE pasien;	(PERINTAH UNTUK MENGHAPUS DATABASE)			=
	-- =============================================================================

