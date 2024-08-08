CREATE OR REPLACE FUNCTION check_positive(number INT) RETURNS TEXT AS $$
BEGIN
    IF number < 0 THEN
        RAISE EXCEPTION 'NegativeNumberException The number must be positive';
    END IF;
    RETURN 'The number is positive';
EXCEPTION
    WHEN SQLSTATE 'P0001' THEN
        -- Handle the NegativeNumberException
        RETURN 'Custom Exception: ' || SQLERRM;
END;
$$ LANGUAGE plpgsql;

select * from check_positive(-5);