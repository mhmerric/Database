CREATE TABLE employee ( 
  record_id uuid NOT NULL DEFAULT gen_random_uuid(), --The record ID. Stored in the edu.uark.dataaccess.entities:BaseEntity#id property. See also the named constant defined in edu.uark.dataaccess.entities:BaseFieldNames that is used for Java <-> SQL mappings.
  first_name varchar(16),
  last_name varchar(16),
  employee_id integer NOT NULL,
  active boolean NOT NULL, -- 1 for true, 0 for false
  role varchar(16),
  manager integer,
  password varchar(16) NOT NULL,
  created_on timestamp without time zone NOT NULL DEFAULT now(), --Stored in the edu.uark.dataaccess.entities:BaseEntity#created_on property. See also the named constant defined in edu.uark.dataaccess.entities:BaseFieldNames that is used for Java <-> SQL mappings.
  CONSTRAINT pk_employee PRIMARY KEY (record_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager) REFERENCES employee(record_id),
  CONSTRAINT chk_employee_id CHECK (employee_id between 0 and 99999),
  CONSTRAINT chk_role CHECK (role IN ('General Manager', 'Shift Manager', 'Cashier')
) WITH (
  OIDS=FALSE
);
