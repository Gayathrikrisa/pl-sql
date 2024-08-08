select * from student_grade
SELECT *,
  rank() OVER (
    PARTITION BY subject
    ORDER BY grade DESC
  ),
  percent_rank() OVER (
    PARTITION BY subject
    ORDER BY grade DESC
  )
FROM student_grade;


