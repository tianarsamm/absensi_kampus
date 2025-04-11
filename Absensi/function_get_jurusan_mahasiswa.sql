CREATE FUNCTION get_jurusan_mahasiswa(mahasiswa_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE nama_jurusan VARCHAR(100);
    SELECT j.nama_jurusan
    INTO nama_jurusan
    FROM Mahasiswa m
    JOIN Jurusan j ON m.jurusan = j.id_jurusan
    WHERE m.id_mahasiswa = mahasiswa_id;
    RETURN nama_jurusan;
END;
