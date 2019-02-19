CREATE TABLE employee ( 
  record_id uuid NOT NULL DEFAULT gen_random_uuid(), --The record ID. Stored in the edu.uark.dataaccess.entities:BaseEntity#id property. See also the named constant defined in edu.uark.dataaccess.entities:BaseFieldNames that is used for Java <-> SQL mappings.
  first_name varchar(225),
  last_name varchar(225),
  employee_id
  active bit, --1 for true, 0 for false
  role
  manager uuid,
  password
  created_on timestamp without time zone NOT NULL DEFAULT now(), --Stored in the edu.uark.dataaccess.entities:BaseEntity#createdOn property. See also the named constant defined in edu.uark.dataaccess.entities:BaseFieldNames that is used for Java <-> SQL mappings.
  CONSTRAINT employee_pkey PRIMARY KEY (record_id),
  CONSTRAINT fk_manager FOREIGN KEY (manager) REFERENCES employee(record_ID)
) WITH (
  OIDS=FALSE
);
