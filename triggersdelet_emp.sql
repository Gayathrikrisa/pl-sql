CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);
INSERT INTO employees(name, salary)
VALUES
   ('John Doe', 90000),
   ('Jane Doe', 80000)
RETURNING *;