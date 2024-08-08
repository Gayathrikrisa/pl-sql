CREATE TABLE student_grade (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  class CHAR(1) NOT NULL,
  subject VARCHAR(20) NOT NULL,
  grade INT NOT NULL
);
INSERT INTO student_grade
  (name, class, subject, grade)
VALUES
  ('Tim', 'A', 'Math', 9),
  ('Tom', 'A', 'Math', 7),
  ('Jim', 'A', 'Math', 8),
  ('Tim', 'A', 'English', 7),
  ('Tom', 'A', 'English', 8),
  ('Jim', 'A', 'English', 7),
  ('Lucy', 'B', 'Math', 8),
  ('Jody', 'B', 'Math', 6),
  ('Susy', 'B', 'Math', 9),
  ('Lucy', 'B', 'English', 6),
  ('Jody', 'B', 'English', 7),
  ('Susy', 'B', 'English', 8);
 
 select * from student_grade