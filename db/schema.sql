DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees; 

USE employees; 

-- table for Department
CREATE TABLE department (
  id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  name VARCHAR(20) UNIQUE NOT NULL 
); 

-- table for Role
CREATE TABLE role(
  id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(20) NOT NULL, 
  salary DECIMAL NOT NULL, 
  department_id INT UNSIGNED NOT NULL, 
  CONSTRAINT fk_department FORIEGN KEY (department_id) REFERENCES department 
  (id) ON
  DELETE CASCADE 
); 

--table for Employees 
CREATE TABLE employee (
  id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL, 
  last_name VARCHAR(30) NOT NULL, 
  role_id INT UNSIGNED NOT NULL,
  CONSTRAINT fk_role FORIEGN KEY (role_id) REFERENCES role 
  (id) ON 
  DELETE CASCADE, 
  manager_id INTEGER UNSIGNED, 
  CONSTRAINT fk_manager FORIEGN KEY (manager_id) REFERENCES employee 
  (id) ON 
  DELETE 
  SET NULL 
); 