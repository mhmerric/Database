

CREATE TABLE inventory (
    store_ID INT,
    product_ID INT,
    quantity INT,
    CONSTRAINT PK_inventory PRIMARY KEY (store_ID, product_ID),
    CONSTRAINT CHK_quantity CHECK (quantity >= 0)
);


INSERT INTO inventory (store_ID, product_ID, quantity) VALUES (
    01,
    02,
    35
    )
