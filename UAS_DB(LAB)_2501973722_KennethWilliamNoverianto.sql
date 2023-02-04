# LB75 - 2501973722 - Kenneth William Noverianto
# Nomor 1
CREATE DATABASE binus;

USE binus;

-- Create Table
CREATE TABLE mahasiswa (
	id_mahasiswa BIGINT NOT NULL,
    nama_mahasiswa VARCHAR(255) NOT NULL,
    alamat_mahasiswa VARCHAR(255) NOT NULL,
    kota VARCHAR(255) NOT NULL,
    tgl_lahir DATE NOT NULL,
    usia INT NOT NULL,
    no_kontak VARCHAR(13) NOT NULL,
    email VARCHAR(255) NOT NULL,
    jurusan VARCHAR(255) NOT NULL,
    nama_wali VARCHAR(255) NOT NULL,
    tgl_terdaftar DATE NOT NULL,
    prestasi_1 VARCHAR(255) DEFAULT NULL,
    prestasi_2 VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY(id_mahasiswa)
);

CREATE TABLE mata_kuliah (
	id_mata_kuliah VARCHAR(255) NOT NULL,
    nama_mata_kuliah VARCHAR(255) NOT NULL,
    jurusan VARCHAR(255) NOT NULL,
    kelas VARCHAR(255) NOT NULL,
    tahun_ajaran VARCHAR(255) NOT NULL,
    semester INT NOT NULL,
    jenis VARCHAR(5) NOT NULL,
    kode_dosen VARCHAR(255) NOT NULL,
    nama_dosen VARCHAR(255) NOT NULL,
    kuota_maks INT NOT NULL,
    kuota_tersisa INT NOT NULL,
    model_perkuliahan VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    durasi INT NOT NULL,
    maks_sks INT NOT NULL,
    PRIMARY KEY(id_mata_kuliah)
);

CREATE TABLE transaksi (
	id_transaksi BIGINT NOT NULL,
    id_mahasiswa BIGINT NOT NULL,
    id_mata_kuliah VARCHAR(255) NOT NULL,
    jurusan VARCHAR(255) NOT NULL,
    timestamp_transaksi DATETIME NOT NULL,
    jumlah_sks INT NOT NULL,
    total_biaya BIGINT NOT NULL,
    virtual_account BIGINT NOT NULL,
    status_pembayaran VARCHAR(255) NOT NULL,
    jatuh_tempo DATE NOT NULL,
    potongan_biaya CHAR(3) DEFAULT NULL,
    PRIMARY KEY(id_transaksi)
);


# -------------------------------------------------------- #
# Nomor 2
-- Insert table mahasiswa
INSERT INTO mahasiswa VALUES
	(2401985645,'Asep Maulana','Jl. Belitung no. 53','Bandung','2003-03-15',19,'08382256373','asep@binus.ac.id','IT','Josep Maulana','2021-09-13','juara 1 lomba hackathon',default),
    (2501123456,'Marya Aulia','Jl. Sukaluyu no. 15','Bandung','2001-04-30',21,'081384037069','marya@binus.ac.id','DKV','Vina Muliani','2019-09-10',default,default),
    (2301862696,'Deri Sanusi','Jl. Kalidam no. 25','Cimahi','2002-06-05',20,'08572746511','deri@binus.ac.id','DI','Sito Sanusi','2020-09-07','juara 1 lomba desain ruang','juara 2 3D design'),
    (2501973722,'Kenneth William Noverianto','Jl. Pasirkaliki no. 2','Bandung','2003-11-03',19,'081122229999','kenneth.noverianto@binus.ac.id','IT','Kenneth Noverianto','2021-09-27',default,default),
    (2501942354,'Ariel','Jl. Pasirkaliki no. 3','Bandung','2003-01-01',20,'084918323941','ariel@binus.ac.id','CP','Desi Wijaya','2020-09-07',default,default),
    (2501967852,'Annie','Jl. Pasirkaliki no. 4','Bandung','2003-01-02',20,'085727372138','annie@binus.ac.id','DKV','Agung Sentosa','2019-09-10','juara 3 lomba desain poster',default),
    (2501973719,'Ami','Jl. Ciroyom no. 110','Bandung','2003-01-03',20,'083822563732','ami@binus.ac.id','IT','Tri Partin','2021-09-27','juara 2 ICPC 2022',default),
    (2501973700,'Roy','Jl. Ciroyom no. 120','Bandung','2001-05-10',21,'085724656159','roy@binus.ac.id','CP','Pujiono','2019-09-10',default,default),
    (2501913445,'Ujang','Jl. Cipaganti no. 33','Bandung','2004-06-06',18,'085726657237','ujang@binus.ac.id','DTI','Sulistyo','2022-09-11',default,default),
    (2502034563,'Bima','Jl. Cipaganti no. 06','Bandung','2003-10-10',19,'085275825783','bima@binus.ac.id','DI','Sutarna','2021-09-27','juara 3 lomba desain ruang',default),
    (2502045809,'Iren','Jl. Setibudi no. 104','Bandung','2003-01-31',20,'082736657000','iren@binus.ac.id','IT','Sulistyo','2021-09-11','juara 3 INC 2022','top 10 ICPC Global 2022');
    
INSERT INTO mata_kuliah VALUES
	('COMP45434','Algorithm and Programming','IT','LA65','2022',1,'LEC','D9000','Maria Auleria',50,32,'Online','tersedia',120,2),
    ('COMP684701','Database Technology','IT','BA75','2022',3,'LAB','D6764','Vito Hafizh',25,25,'Onsite','penuh',90,2),
    ('ARTS602203','Photography','DKV','BG90','2022',5,'LAB','D1472','Krisna Ahmad',25,15,'Onsite','tersedia',90,1),
    ('DSGN66960','3-Dimension Layout','DI','LF45','2022',5,'LEC','D6076','Anisa Putri',45,27,'Online','tersedia',120,2),
    ('COMP684702','Database Technology','IT','BB75','2022',3,'LAB','D6274','Husni Iskandar Pohan',26,20,'Onsite','tersedia',90,1),
    ('COMP6839031','Program Design Methods','IT','LB75','2021',1,'LEC','D3564','Evawaty Tanuar',54,54,'Online','penuh',90,2),
    ('MATH6192031','Scientific Computing','IT','LA75','2021',2,'LEC','D6331','Annisa Istiqomah Arrahmah',27,27,'Onsite','penuh',90,2),
    ('COMP6472031','Algorithm Design and Analysis','IT','LB75','2022',3,'LEC','D2211','Abdul Haris Rangkuti',54,30,'Onsite','tersedia',120,4),
    ('COMP6468031','Artificial Intelligence','IT','LB75','2022',3,'LEC','D6331','Annisa Istiqomah Arrahmah',54,17,'Online','tersedia',120,4),
    ('SCIE6065031','Computational Physics','IT','LB75','2022',3,'LEC','D6407','Dany Eka Saputra',54,54,'Onsite','penuh',90,2),
    ('CPEN6249031','Computer Network','IT','LB75','2022',3,'LEC','D6184','Mochammad Haldi Widianto',54,54,'Onsite','penuh',90,2),
    ('COMP6848031','Object Oriented Programming','IT','LB75','2022',3,'LEC','D6469','Muhammad Maulana Ramadhan',54,45,'Online','tersedia',90,2),
    ('CHAR6036031','Character Building Agama','IT','LB75','2022',3,'LEC','D6231','Marsudi Fitro Wibowo',54,37,'Onsite','tersedia',90,2);
    
INSERT INTO transaksi VALUES
	(15060001,2401985645,'DSGN66960','DI','2022-12-24 07:00:00',2,500000,7623523425,'belum lunas','2023-01-15',default),
    (17060002,2501123456,'COMP684702','IT','2022-12-27 22:00:00',1,250000,7623878979,'lunas','2023-01-16','10%'),
    (17060003,2301862696,'ARTS602203','DKV','2022-12-30 01:00:00',1,250000,7623975678,'lunas','2023-01-15',default),
    (17060010,2502034563,'COMP684701','IT','2022-12-15 02:00:00',2,500000,7623456345,'belum lunas','2023-01-15','5%'),
    (17060004,2501973722,'SCIE6065031','IT','2022-12-16 03:00:00',2,700000,765734523,'lunas','2023-01-16','10%'),
    (17060005,2501942354,'CPEN6249031','IT','2022-12-17 04:00:00',2,500000,712345648,'lunas','2023-01-17',default),
    (17060006,2501967852,'CHAR6036031','IT','2022-12-18 05:00:00',2,500000,723424576,'belum lunas','2023-01-18','10%'),
    (17060007,2501973719,'COMP6848031','IT','2022-12-19 06:00:00',2,500000,745634537,'lunas','2023-01-19',default),
    (17060008,2501973700,'COMP45434','IT','2022-12-20 07:00:00',2,500000,745235786,'belum lunas','2023-01-20',default),
    (17060009,2501913445,'COMP6472031','IT','2022-12-21 08:00:00',4,800000,7867967687,'lunas','2023-01-21','15%'),
    (17060011,2502045809,'COMP6468031','IT','2022-12-22 09:00:00',4,800000,7678462346,'belum lunas','2023-01-22',default);
    

# -------------------------------------------------------- #
# Nomor 3
# Table transaksi
-- WHERE - AND - OR
SELECT *
FROM transaksi
WHERE status_pembayaran = 'belum lunas' AND (jurusan = 'DI' OR jurusan = 'IT');

-- WHERE - NOT - LIKE
SELECT * 
FROM transaksi
WHERE id_mata_kuliah NOT LIKE 'COMP%'; 

-- WHERE - LIKE - AND - IN
SELECT *
FROM transaksi
WHERE id_mata_kuliah LIKE 'COMP%' AND total_biaya IN (250000,500000,800000);


-- WHERE - NOT - OR - IN
SELECT *
FROM transaksi
WHERE potongan_biaya IS NOT NULL OR total_biaya IN (200000,500000);


# Table Mata Kuliah
-- WHERE - AND - OR
SELECT *
FROM mata_kuliah
WHERE semester = 3 AND (kuota_maks = 54 OR kuota_tersisa >= 45);

-- WHERE - NOT - LIKE
SELECT * 
FROM mata_kuliah
WHERE nama_mata_kuliah NOT LIKE '%Technology';

-- WHERE - LIKE - AND - IN
SELECT *
FROM mata_kuliah
WHERE kode_dosen LIKE '_63%' AND tahun_ajaran IN ('2021','2022');

-- WHERE - NOT - OR - IN
SELECT *
FROM mata_kuliah
WHERE (NOT semester IN (1,3,5)) OR maks_sks IN (1,4);


# -------------------------------------------------------- #
# Nomor 4
CREATE TABLE pegawai (
	id_pegawai BIGINT NOT NULL,
    nama_pegawai VARCHAR(255) NOT NULL,
    pemberian_pelaporan_kepada BIGINT DEFAULT NULL,
    PRIMARY KEY (id_pegawai)
);

INSERT INTO pegawai VALUES
	(22040001,'Gifari Saputra',null),
    (22040002,'Vina Muliani',null),
    (17040001,'Fauzi Hamdani',22040001),
    (17040002,'Riska Fajrini',22040001),
    (17040003,'Zahra Safitri',22040002);
    
    
# -------------------------------------------------------- #   
# Nomor 5
-- INNER JOIN
SELECT 
	id_transaksi,
	nama_mata_kuliah,
    nama_dosen,
    semester,
    id_mahasiswa,
    total_biaya
FROM transaksi
INNER JOIN mata_kuliah ON transaksi.id_mata_kuliah = mata_kuliah.id_mata_kuliah;

-- LEFT JOIN
SELECT
	mata_kuliah.id_mata_kuliah,
    nama_mata_kuliah,
    mata_kuliah.jurusan,
    nama_dosen,
    semester,
    maks_sks,
    total_biaya
FROM mata_kuliah
LEFT JOIN transaksi ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah
WHERE semester = 1;

-- RIGHT JOIN
SELECT
	timestamp_transaksi,
	transaksi.id_mahasiswa,
    nama_mata_kuliah,
    transaksi.jurusan,
    nama_dosen,
    total_biaya,
    status_pembayaran,
    jatuh_tempo,
    potongan_biaya
FROM transaksi
RIGHT JOIN mata_kuliah ON transaksi.id_mata_kuliah = mata_kuliah.id_mata_kuliah;
    
-- FULL JOIN (true)
SELECT
	timestamp_transaksi,
	mata_kuliah.id_mata_kuliah,
    nama_mata_kuliah,
    mata_kuliah.jurusan,
    nama_dosen,
    semester,
    maks_sks,
    total_biaya,
    status_pembayaran,
    jatuh_tempo,
    potongan_biaya
FROM mata_kuliah
LEFT JOIN transaksi ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah
UNION
SELECT
	timestamp_transaksi,
	mata_kuliah.id_mata_kuliah,
    nama_mata_kuliah,
    mata_kuliah.jurusan,
    nama_dosen,
    semester,
    maks_sks,
    total_biaya,
    status_pembayaran,
    jatuh_tempo,
    potongan_biaya
FROM transaksi
RIGHT JOIN mata_kuliah ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah;

-- FULL JOIN (duplicate)
SELECT
	timestamp_transaksi,
	mata_kuliah.id_mata_kuliah,
    nama_mata_kuliah,
    mata_kuliah.jurusan,
    nama_dosen,
    semester,
    maks_sks,
    total_biaya,
    status_pembayaran,
    jatuh_tempo,
    potongan_biaya
FROM mata_kuliah
LEFT JOIN transaksi ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah
UNION
SELECT
	timestamp_transaksi,
	transaksi.id_mata_kuliah,
    nama_mata_kuliah,
    transaksi.jurusan,
    nama_dosen,
    semester,
    maks_sks,
    total_biaya,
    status_pembayaran,
    jatuh_tempo,
    potongan_biaya
FROM transaksi
RIGHT JOIN mata_kuliah ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah;

-- SELF JOIN
SELECT
	staff.id_pegawai AS ID_Staff,
    staff.nama_pegawai AS Nama_Staff,
    staff.pemberian_pelaporan_kepada AS ID_Kadiv,
    kadiv.nama_pegawai AS Nama_Kepala_Divisi
FROM pegawai staff
JOIN pegawai kadiv ON staff.pemberian_pelaporan_kepada = kadiv.id_pegawai;

-- MULTIPLE JOIN
SELECT
	id_transaksi AS ID_Transaksi,
    timestamp_transaksi AS Tanggal_Transaksi,
    nama_mahasiswa AS Mahasiswa,
    nama_mata_kuliah AS Mata_Kuliah,
    nama_dosen AS Dosen,
    transaksi.jurusan AS Jurusan,
    semester AS Semester,
    jumlah_sks AS SKS,
    total_biaya AS Total_Biaya,
    jatuh_tempo AS Deadline,
    potongan_biaya AS Potongan,
    virtual_account AS Virtual_Account_Number
FROM transaksi
INNER JOIN mahasiswa ON transaksi.id_mahasiswa = mahasiswa.id_mahasiswa
INNER JOIN mata_kuliah ON transaksi.id_mata_kuliah = mata_kuliah.id_mata_kuliah
WHERE transaksi.jurusan = 'IT' AND semester = 3 AND status_pembayaran = 'Belum Lunas';


# -------------------------------------------------------- #
# Nomor 6
-- Mengubah nama tabel karyawan ke pegawai kemudian dikembalikan namanya ke nama asal
RENAME TABLE pegawai TO karyawan;
RENAME TABLE karyawan TO pegawai;

-- Mengubah nama tabel mata_kuliah ke matkul kemudian dikembalikan namanya ke nama asal
RENAME TABLE mata_kuliah TO matkul;
RENAME TABLE matkul TO mata_kuliah;


-- Mengubah tipe data pada 1 kolom dari suatu tabel
ALTER TABLE mata_kuliah
MODIFY tahun_ajaran YEAR;

ALTER TABLE mahasiswa
MODIFY jurusan CHAR(5);


-- Mengubah nama dari 1 kolom pada suatu tabel
ALTER TABLE mahasiswa
CHANGE no_kontak no_telp VARCHAR(13) NOT NULL;

ALTER TABLE transaksi
CHANGE virtual_account virtual_account_number BIGINT NOT NULL;


-- Mengubah posisi 1 kolom dari suatu tabel
ALTER TABLE transaksi
MODIFY timestamp_transaksi DATETIME AFTER id_transaksi;

ALTER TABLE mata_kuliah
MODIFY maks_sks INT AFTER status;


-- Menambahkan 1 kolom baru pada suatu tabel
ALTER TABLE pegawai
ADD jabatan VARCHAR(255) NOT NULL AFTER nama_pegawai;

ALTER TABLE mahasiswa
ADD alumni VARCHAR(255) NOT NULL AFTER email;


-- Menghapus 1 kolom baru tersebut dari suatu tabel
ALTER TABLE pegawai
DROP jabatan;

ALTER TABLE mahasiswa
DROP alumni;


# -------------------------------------------------------- #
# Nomor 7
ALTER TABLE transaksi
ADD CONSTRAINT fk_mata_kuliah FOREIGN KEY (id_mata_kuliah)
	REFERENCES mata_kuliah(id_mata_kuliah),
ADD CONSTRAINT fk_mahasiswa FOREIGN KEY (id_mahasiswa)
	REFERENCES mahasiswa(id_mahasiswa);
    
    
# -------------------------------------------------------- #
# Nomor 8
-- Transaction
START TRANSACTION;
	INSERT INTO transaksi VALUES 
		(17060012,now(),2501973719,'SCIE6065031','IT',2,700000,7867967912,'Lunas','2023-02-06','10%');
	UPDATE mata_kuliah SET kuota_tersisa=kuota_tersisa-1 WHERE id_mata_kuliah='SCIE6065031';
    
	INSERT INTO transaksi VALUES
		(17060013,now(),2501123456,'COMP6848031','IT',2,500000,7343234523,'Belum Lunas','2023-02-07',default);
	UPDATE mata_kuliah SET kuota_tersisa=kuota_tersisa-1 WHERE id_mata_kuliah='COMP6848031';
    
COMMIT;
ROLLBACK;


# Nomor 9
ALTER TABLE transaksi
ADD INDEX combine_transaksi_idx(id_mahasiswa, status_pembayaran, jatuh_tempo);

ALTER TABLE mahasiswa
ADD INDEX combine_mahasiswa_idx(id_mahasiswa, nama_mahasiswa, email);

-- Table transaksi
SHOW INDEX FROM transaksi;
SHOW CREATE TABLE transaksi;

-- Table mahasiswa
SHOW INDEX FROM mahasiswa;
SHOW CREATE TABLE mahasiswa;
