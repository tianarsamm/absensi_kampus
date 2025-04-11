CREATE PROCEDURE sp_laporan_absensi_per_mahasiswa(IN mahasiswaID INT)
BEGIN
    SELECT 
        a.id_absensi,
        mk.matkul AS nama_matkul,
        a.jam_masuk,
        a.status AS keterangan
    FROM Absensi a
    JOIN Mata_Kuliah mk ON a.id_matkul = mk.id_matkul
    WHERE a.id_mahasiswa = mahasiswaID;
END 
