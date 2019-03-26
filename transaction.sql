
DROP TABLE transaction;

CREATE TABLE transaction ( 
  sale_id SERIAL NOT NULL,
  total float,
  payment varchar(16),
  employee_id
  customer_id
  CONSTRAINT pk_transaction PRIMARY KEY (sale_id),
  CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
);

DROP TABLE transaction_entry;

CREATE TABLE transaction_entry (
  product_id SERIAL NOT NULL,
  sale_id SERIAL NOT NULL,
  quanity integer NOT NULL,
  subtotal float,
  CONSTRAINT pk1_transaction_entry PRIMARY KEY (product_id),
  CONSTRAINT pk2_transaction_entry PRIMARY KEY (sale_id),
);
