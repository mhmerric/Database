
DROP TABLE transaction;

CREATE TABLE transaction ( 
  sale_id SERIAL NOT NULL,
  total float,
  payment varchar(16),
  employee_id int NOT NULL DEFAULT(0),
  customer_id int NOT NULL DEFAULT(0),
  store_id int NOT NULL DEFAULT(0),
  created_on timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT pk_transaction PRIMARY KEY (sale_id),
  CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES store(store_id)
);

DROP TABLE transaction_entry;

CREATE TABLE transaction_entry (
  product_id int NOT NULL DEFAULT(0),
  sale_id int NOT NULL DEFAULT(0),
  quanity integer NOT NULL,
  subtotal float,
  CONSTRAINT pk1_transaction_entry PRIMARY KEY (product_id),
  CONSTRAINT pk2_transaction_entry PRIMARY KEY (sale_id)
);

CREATE TABLE customer (
  customer_id SERIAL NOT NULL,
  phone varchar(16),
  CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);
