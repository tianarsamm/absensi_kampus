CREATE TRIGGER trg_insert_absensi_status
AFTER INSERT ON Absensi
FOR EACH ROW
BEGIN
    INSERT INTO Status_Absensi(id_absensi, id_semester, status)
    VALUES (
        NEW.id_absensi,
        1, -- default semester
        NEW.status
    );
END;
