DROP TABLE employee;

CREATE TABLE employee ( 
  record_id SERIAL NOT NULL,
  first_name varchar(16),
  last_name varchar(16),
  employee_id integer NOT NULL,
  active boolean NOT NULL DEFAULT 1, -- 1 for true, 0 for false
  role varchar(16),
  manager integer,
  password varchar(100) NOT NULL, -- 100 to allow space for hashing
  created_on timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT pk_employee PRIMARY KEY (record_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager) REFERENCES employee(record_id),
  CONSTRAINT chk_employee_id CHECK (employee_id between 0 and 99999),
  CONSTRAINT chk_role CHECK (role IN ('General Manager', '', 'Shift Manager', 'Cashier'))
);
                             
INSERT INTO employee (first_name, last_name, employee_id, role, password) VALUES (
  'Jeff'
  , 'Bezos'
  , 1
  , 'General Manager'
  , 'password' );
