CREATE OR REPLACE FUNCTION add_timestamp_table_test()
RETURNS trigger AS
$$
    BEGIN
        NEW.insert_time := CURRENT_TIMESTAMP;
        NEW.update_time := CURRENT_TIMESTAMP;
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;
