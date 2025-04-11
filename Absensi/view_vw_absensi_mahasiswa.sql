CREATE VIEW vw_absensi_mahasiswa AS
SELECT 
    a.id_absensi,
    m.nama AS nama_mahasiswa,
    mk.matkul AS nama_matkul,
    a.jam_masuk,
    a.status AS keterangan
FROM Absensi a
JOIN Mahasiswa m ON a.id_mahasiswa = m.id_mahasiswa
JOIN Mata_Kuliah mk ON a.id_matkul = mk.id_matkul;
