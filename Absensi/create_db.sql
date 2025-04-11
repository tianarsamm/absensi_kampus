CREATE DATABASE IF NOT EXISTS AbsensiKampus;


-- Tabel Mahasiswa
CREATE TABLE Mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat TEXT,
    no_hp VARCHAR(15),
    email VARCHAR(100),
    tpt_lahir VARCHAR(100),
    jurusan INT,
    qr_code TEXT
);

-- Tabel Dosen
CREATE TABLE Dosen (
    id_dosen INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat TEXT,
    no_hp VARCHAR(15),
    email VARCHAR(100),
    tpt_lahir VARCHAR(100)
);

-- Tabel Jurusan
CREATE TABLE Jurusan (
    id_jurusan INT PRIMARY KEY,
    nama_jurusan VARCHAR(100)
);

-- Tabel Kelas
CREATE TABLE Kelas (
    id_kelas INT PRIMARY KEY,
    kelas VARCHAR(50)
);

-- Tabel Ruangan
CREATE TABLE Ruangan (
    id_ruangan INT PRIMARY KEY,
    nama_ruangan VARCHAR(100)
);

-- Tabel Mata Kuliah
CREATE TABLE Mata_Kuliah (
    id_matkul INT PRIMARY KEY,
    matkul VARCHAR(100),
    SKS INT
);

-- Tabel Semester
CREATE TABLE Semester (
    id_semester INT PRIMARY KEY,
    semester VARCHAR(20)
);

-- Tabel Kurikulum
CREATE TABLE Kurikulum (
    id_kurikulum INT PRIMARY KEY,
    tahun VARCHAR(4)
);

-- Tabel Absensi
CREATE TABLE Absensi (
    id_absensi INT PRIMARY KEY,
    id_mahasiswa INT,
    id_dosen INT,
    id_matkul INT,
    jam_masuk TIME,
    status VARCHAR(20),
    FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen),
    FOREIGN KEY (id_matkul) REFERENCES Mata_Kuliah(id_matkul)
);

-- Tabel Status Absensi
CREATE TABLE Status_Absensi (
    id_absensi INT,
    id_semester INT,
    status VARCHAR(20),
    PRIMARY KEY (id_absensi, id_semester),
    FOREIGN KEY (id_absensi) REFERENCES Absensi(id_absensi),
    FOREIGN KEY (id_semester) REFERENCES Semester(id_semester)
);

-- Relasi Mahasiswa-Kurikulum
CREATE TABLE Mahasiswa_Kurikulum (
    id_mahasiswa INT,
    id_kurikulum INT,
    PRIMARY KEY (id_mahasiswa, id_kurikulum),
    FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa(id_mahasiswa),
    FOREIGN KEY (id_kurikulum) REFERENCES Kurikulum(id_kurikulum)
);

-- Relasi Semester-Matkul
CREATE TABLE Semester_Matkul (
    id_semester INT,
    id_matkul INT,
    PRIMARY KEY (id_semester, id_matkul),
    FOREIGN KEY (id_semester) REFERENCES Semester(id_semester),
    FOREIGN KEY (id_matkul) REFERENCES Mata_Kuliah(id_matkul)
);

-- Relasi Semester-Kurikulum
CREATE TABLE Semester_Kurikulum (
    id_semester INT,
    id_kurikulum INT,
    PRIMARY KEY (id_semester, id_kurikulum),
    FOREIGN KEY (id_semester) REFERENCES Semester(id_semester),
    FOREIGN KEY (id_kurikulum) REFERENCES Kurikulum(id_kurikulum)
);

-- Relasi Ruangan-Matkul
CREATE TABLE Ruangan_Matkul (
    id_ruangan INT,
    id_matkul INT,
    PRIMARY KEY (id_ruangan, id_matkul),
    FOREIGN KEY (id_ruangan) REFERENCES Ruangan(id_ruangan),
    FOREIGN KEY (id_matkul) REFERENCES Mata_Kuliah(id_matkul)
);

-- Relasi Dosen-Matkul-Kurikulum
CREATE TABLE Dosen_Matkul_Kurikulum (
    id_dosen INT,
    id_matkul INT,
    id_kurikulum INT,
    PRIMARY KEY (id_dosen, id_matkul, id_kurikulum),
    FOREIGN KEY (id_dosen) REFERENCES Dosen(id_dosen),
    FOREIGN KEY (id_matkul) REFERENCES Mata_Kuliah(id_matkul),
    FOREIGN KEY (id_kurikulum) REFERENCES Kurikulum(id_kurikulum)
);
