CREATE DATABASE EMPLOYEE;

CREATE TABLE employeeDetail (
  emp_id INT IDENTITY(1,1) NOT NULL,
  name VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  current_addr TEXT,
  permanent_addr TEXT
);
