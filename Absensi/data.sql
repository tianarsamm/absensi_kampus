USE AbsensiKampus;

-- Matikan sementara pengecekan foreign key agar bisa hapus data tanpa error
SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE Dosen_Matkul_Kurikulum;
TRUNCATE TABLE Ruangan_Matkul;
TRUNCATE TABLE Semester_Kurikulum;
TRUNCATE TABLE Semester_Matkul;
TRUNCATE TABLE Mahasiswa_Kurikulum;
TRUNCATE TABLE Status_Absensi;
TRUNCATE TABLE Absensi;
TRUNCATE TABLE Kurikulum;
TRUNCATE TABLE Semester;
TRUNCATE TABLE Mata_Kuliah;
TRUNCATE TABLE Ruangan;
TRUNCATE TABLE Kelas;
TRUNCATE TABLE Dosen;
TRUNCATE TABLE Mahasiswa;
TRUNCATE TABLE Jurusan;

SET FOREIGN_KEY_CHECKS = 1;

-- Mulai isi data

INSERT INTO Jurusan (id_jurusan, nama_jurusan) VALUES
(1, 'Teknik Informatika'),
(2, 'Sistem Informasi'),
(3, 'Teknik Elektro'),
(4, 'Manajemen'),
(5, 'Akuntansi'),
(6, 'Desain Komunikasi Visual');

INSERT INTO Mahasiswa VALUES
(101, 'Andi Saputra', 'Jl. Mawar No.1', '081234567890', 'andi@gmail.com', 'Bandung', 1, 'QR001'),
(102, 'Budi Santoso', 'Jl. Melati No.2', '081234567891', 'budi@gmail.com', 'Jakarta', 2, 'QR002'),
(103, 'Citra Dewi', 'Jl. Anggrek No.5', '081234567894', 'citra@gmail.com', 'Medan', 3, 'QR003'),
(104, 'Dedi Pratama', 'Jl. Teratai No.6', '081234567895', 'dedi@gmail.com', 'Bekasi', 4, 'QR004'),
(105, 'Eka Kurniawan', 'Jl. Cempaka No.7', '081234567896', 'eka@gmail.com', 'Solo', 5, 'QR005'),
(106, 'Fajar Maulana', 'Jl. Flamboyan No.8', '081234567897', 'fajar@gmail.com', 'Denpasar', 6, 'QR006');

INSERT INTO Dosen VALUES
(1, 'Dr. Siti Aminah', 'Jl. Kenanga No.3', '081234567892', 'siti@kampus.ac.id', 'Surabaya'),
(2, 'Dr. Agus Hidayat', 'Jl. Dahlia No.4', '081234567893', 'agus@kampus.ac.id', 'Yogyakarta'),
(3, 'Dr. Lina Marlina', 'Jl. Sakura No.9', '081234567898', 'lina@kampus.ac.id', 'Padang'),
(4, 'Dr. Bambang Sutrisno', 'Jl. Angsana No.10', '081234567899', 'bambang@kampus.ac.id', 'Malang'),
(5, 'Dr. Rina Kurnia', 'Jl. Mangga No.11', '081234567800', 'rina@kampus.ac.id', 'Semarang'),
(6, 'Dr. Wahyu Hadi', 'Jl. Pisang No.12', '081234567801', 'wahyu@kampus.ac.id', 'Makassar');

INSERT INTO Kelas VALUES
(1, 'IF-1A'),
(2, 'SI-2B'),
(3, 'IF-2A'),
(4, 'SI-3C'),
(5, 'EL-1B'),
(6, 'DKV-1A');

INSERT INTO Ruangan VALUES
(1, 'Ruang 101'),
(2, 'Ruang 102'),
(3, 'Ruang 103'),
(4, 'Ruang 104'),
(5, 'Ruang 201'),
(6, 'Ruang 202');

INSERT INTO Mata_Kuliah VALUES
(11, 'Basis Data', 3),
(12, 'Pemrograman Web', 3),
(13, 'Struktur Data', 3),
(14, 'Jaringan Komputer', 2),
(15, 'Manajemen Keuangan', 2),
(16, 'Desain Grafis', 2);

INSERT INTO Semester VALUES
(1, 'Semester 1'),
(2, 'Semester 2'),
(3, 'Semester 3'),
(4, 'Semester 4'),
(5, 'Semester 5'),
(6, 'Semester 6');

INSERT INTO Kurikulum VALUES
(2021, '2021'),
(2022, '2022'),
(2023, '2023'),
(2024, '2024'),
(2025, '2025'),
(2026, '2026');

INSERT INTO Absensi VALUES
(1, 101, 1, 11, '08:00:00', 'Hadir'),
(2, 102, 2, 12, '08:10:00', 'Terlambat'),
(3, 103, 3, 13, '07:55:00', 'Hadir'),
(4, 104, 4, 14, '08:15:00', 'Terlambat'),
(5, 105, 5, 15, '08:00:00', 'Izin'),
(6, 106, 6, 16, '08:05:00', 'Sakit');

INSERT INTO Status_Absensi VALUES
(1, 1, 'Hadir'),
(2, 2, 'Terlambat'),
(3, 3, 'Hadir'),
(4, 4, 'Terlambat'),
(5, 5, 'Izin'),
(6, 6, 'Sakit');

INSERT INTO Mahasiswa_Kurikulum VALUES
(101, 2021),
(102, 2022),
(103, 2023),
(104, 2023),
(105, 2024),
(106, 2024);

INSERT INTO Semester_Matkul VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16);

INSERT INTO Semester_Kurikulum VALUES
(1, 2021),
(2, 2022),
(3, 2023),
(4, 2023),
(5, 2024),
(6, 2024);

INSERT INTO Ruangan_Matkul VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16);

INSERT INTO Dosen_Matkul_Kurikulum VALUES
(1, 11, 2021),
(2, 12, 2022),
(3, 13, 2023),
(4, 14, 2023),
(5, 15, 2024),
(6, 16, 2024);
