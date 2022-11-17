create database bank1;
show databases;

use bank1;
create table nasabah(
    no_rek varchar(15) primary key,
    nama varchar(50),
    alamat varchar(15),
    alamat varchar(15),
    notelp varchar(12),
    tgl_lahir varchar(12));

desc nasabah;

alter table nasabah_baru;

alter table nasabah rename to nasabah_baru;

alter table nasabah_baru;

desc nasabah_baru;

alter table nasabah_baru change column nama nama_nasabah varchar(15);

desc nasabah_baru;

alter table nasabah_baru add tgl_nasabah varchar(15);

desc nasabah_baru;

alter table nasabah_baru modify column tgl_nasabah date;

desc nasabah_baru;

alter table nasabah_baru drop tgl_nasabah;

desc nasabah_baru;
