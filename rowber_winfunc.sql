SELECT *,
  row_number() OVER (
    PARTITION BY subject
    ORDER BY grade DESC
  )
FROM student_grade;
 