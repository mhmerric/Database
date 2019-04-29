
DROP TABLE transaction;

CREATE TABLE transaction ( 
  sale_id SERIAL NOT NULL,
  total float,
  payment varchar(16),
  employee_id int NOT NULL DEFAULT(0),
  created_on timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT pk_transaction PRIMARY KEY (sale_id),
  CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
);

DROP TABLE transaction_entry;

CREATE TABLE transaction_entry (
  product_id int NOT NULL DEFAULT(0),
  sale_id int NOT NULL DEFAULT(0),
  quanity integer NOT NULL,
  subtotal float,
  CONSTRAINT pk1_transaction_entry PRIMARY KEY (product_id, sale_id)
);
