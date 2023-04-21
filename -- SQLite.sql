-- SQLite
-- Read

SELECT name FROM doctors;
SELECT * FROM doctors WHERE id = 2;

-- Create
-- INSERT INTO table_name (column_name1, comlumn_name2, ...)
-- VALUES (value1, value2, ...)

INSERT INTO doctors (first_name, last_name, specialty)
VALUES
  ('Donald', 'Chow', 'GP'),
  ('Mei', 'Fruit', 'Neurology');

-- UPDATE
-- UPDATE table_name
-- SET column_name = value
-- WHERE condition

UPDATE doctors
SET first_name = 'Soufiane', specialty = 'Neurology'
WHERE id = 6 ;

-- DELETE
-- DELETE FROM table_name
-- WHERE condition;

DELETE FROM doctors
WHERE id = 4 AND first_name = 'something';

DELETE FROM doctors WHERE id = 5;
