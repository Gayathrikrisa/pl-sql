SELECT
  *,
  first_value(grade) OVER (
    PARTITION BY subject
    ORDER BY grade DESC
    RANGE BETWEEN
      UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
  ) first_grade
FROM student_grade;