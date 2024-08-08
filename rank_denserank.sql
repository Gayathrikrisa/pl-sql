SELECT *,
  rank() OVER (
    PARTITION BY subject
    ORDER BY grade DESC
  ),
  dense_rank() OVER (
    PARTITION BY subject
    ORDER BY grade DESC
  )
FROM student_grade;