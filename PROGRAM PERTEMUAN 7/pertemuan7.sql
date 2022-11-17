-- SQL DEV

-- 1) buatlah table supplier yang mempunyai kolom kolom berisi kode supplier
-- nama suplier alamat kota no telpon waktu pembayaran 

-- buuat kembali table dengan nama pembelian dengan kolom kolomnya seperti table di bawah ini
-- =============================================================================================================
CREATE TABLE Supplier (Kode_supplier number(10) PRIMARY KEY,
Nama_supplier varchar2(20) not null ,
Alamat varchar2(10) not null,
Kota number(20),
No_telepon varchar2(10),
Waktu_pembayaran date);

desc Supplier

CREATE TABLE beli (No_slip number(10),
Tanggal date,
Kode_supplier number(10),
Nama_produk varchar2(40));

desc beli

-- 2. Berdasarkan soal nomor 1, tambahkanlah primary key pada kolom No_slip di tabel
-- Pembelian. (15 point)

ALTER TABLE beli ADD PRIMARY KEY (No_slip);

-- 3. Berdasarkan soal nomor 1, tambahkan foreign key ke kolom Kode_supplier tabel
-- Pembelian yang berhubungan dengan kolom Kode_supplier pada tabel Supplier. (15
-- point)
ALTER TABLE beli ADD CONSTRAINT kode_supplier FOREIGN KEY(Kode_supplier) REFERENCES Supplier(Kode_supplier);

-- 4. Kemudian tambahkan kolom baru bernama Total dengan tipe data number dan
-- ukuran 20 pada tabel Pembelian. (10 point)
ALTER TABLE BELI ADD(Total number(20));

-- 5. Kemudian ubah ukuran pada kolom Total menjadi 15 di tabel Pembelian (10 point)
ALTER TABLE Beli MODIFY(Total number(15));

-- 6. Jika telah berhasil membuat kolom Total di table Pembelian, hapuslah kembali
-- constraint pada kolom Kode_supplier tersebut di tabel Pembelian. (10 point) 
ALTER TABLE beli DROP CONSTRAINT kode_supplier;

-- 7.Hapuslah table Supplier. (10 point)
DROP TABLE supplier;

desc supplier

desc beli



-- =============================================================================================================

-- SQL PLUS [CMD]

-- =============================================================================================================
-- sqlplus/nolog

connect / as sysdba

CREATE TABLE Supplier (Kode_supplier number(10) PRIMARY KEY,
Nama_supplier varchar2(20) not null ,
Alamat varchar2(10) not null,
Kota number(20),
No_telepon varchar2(10),
Waktu_pembayaran date);

desc Supplier

CREATE TABLE beli (No_slip number(10),
Tanggal date,
Kode_supplier number(10),
Nama_produk varchar2(40));

desc beli

ALTER TABLE beli ADD PRIMARY KEY (No_slip);

desc beli

ALTER TABLE beli ADD CONSTRAINT kode_supplier FOREIGN KEY(Kode_supplier) REFERENCES Supplier(Kode_supplier);

desc beli

ALTER TABLE beli ADD(Total number(20));

desc beli

ALTER TABLE beli MODIFY(Total number(15));

desc beli

ALTER TABLE beli DROP CONSTRAINT kode_supplier;

desc beli

DROP TABLE Supplier;

desc beli

desc Supplier

=============================================================================================================
