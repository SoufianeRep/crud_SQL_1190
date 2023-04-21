-- SQLite
DROP TABLE IF EXISTS doctors;

CREATE TABLE IF NOT EXISTS doctors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR,
  last_name VARCHAR,
  specialty VARCHAR
);

INSERT INTO doctors (first_name, last_name, specialty)
VALUES
  ('Daniel', 'Scharf', 'Cardiology'),
  ('Tsubasa', 'Toda', 'Neurology'),
  ('Rashon', 'Rogers', 'Psychology'),
  ('Arthur', 'West', 'Cardiology'),
  ('Anne', 'Garvey', 'Psychology');
