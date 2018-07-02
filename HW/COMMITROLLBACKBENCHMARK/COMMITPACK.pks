CREATE OR REPLACE PACKAGE COMMITPACK
AS
    FUNCTION  get_seconds RETURN NUMBER;
    FUNCTION  Total_time_spend(pin_insert_start_seconds IN NUMBER ,pin_insert_end_seconds IN NUMBER)RETURN NUMBER;
    PROCEDURE insert_rows(pin_row_value IN NUMBER);
END COMMITPACK;