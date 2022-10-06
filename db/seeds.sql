USE employees; 

INSERT INTO department (name) 
VALUES 
  ('Finance'), 
  ('Insurance'); 

  INSERT INTO role 
    (title, salary, department_id)
  VALUES
    ('Accounts', 123000, 1), 
    ('Banker', 123450, 1); 

    INSERT INTO employee (first_namem, last_name, role_id, manager_id)
    VALUES 
      ('That', 'Person', 1, NULL),
      ('ThatOther','Person',2,,1);