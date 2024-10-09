create table trial.data_buku (
id_buku varchar (200) primary key not null,
judul_buku varchar (200) not null,
nama_penulis varchar (200) null,
jumlah integer  null
);

alter table trial.data_buku add lokasi varchar (200);
alter table trial.data_buku drop column_lokasi;
explain trial.data_buku;
select * from trial.data_buku;

create table trial.data_peminjaman (
no_peminjaman varchar (200) not null,
nama_peminjam varchar (200) primary key not null,
id_buku varchar (200)  not null,
jumlah_buku integer null,
tgl_pinjam date not null,
tgl_ekspetasi_kembali date not null,
tgl_aktual_kembali date null,
foreign key (id_buku) references trial.data_buku (id_buku)
);

explain trial.data_peminjaman;

drop table trial.data_peminjaman;

drop table trial.data_buku;

INSERT INTO
    trial.data_buku (
        id_buku,
        lokasi,
        judul_buku,
        nama_penulis,
        jumlah
    )
VALUES
    (
        '1234133',
        '2U91',
        'Membuat Strategi Bisnis',
        'Dewey Deckers',
        2
    ),
    (
        '1390022',
        '1A12',
        'Anatomi Tubuh for Kids',
        'Syafina',
        3
    ),
    (
        '1773364',
        '1A29',
        'Sentiment Analysis for Dummies 2nd Edition',
        'Regina Alwi, Humaira',
        2
    );
    
    select * from trial.data_buku;
    
    INSERT INTO
    trial.data_peminjaman (
        no_peminjaman,
        nama_peminjam,
        id_buku,
        jumlah_buku,
        tgl_pinjam,
        tgl_ekspetasi_kembali,
        tgl_aktual_kembali
    )
VALUES
    (
        'A0000000001',
        'Adi',
        '1234133',
        1,
        '2022-10-10',
        '2022-10-17',
        NULL
    ),
    (
        'A0000000002',
        'Firman',
        '1234133',
        1,
        '2022-10-12',
        '2022-10-19',
        NULL
    ),
    (
        'A0000000003',
        'Tina',
        '1773364',
        1,
        '2022-10-09',
        '2022-10-16',
        '2022-10-12'
    );
    
    select * from trial.data_peminjaman;