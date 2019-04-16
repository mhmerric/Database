

CREATE TABLE inventory (
    store_ID INT NOT NULL, -- ID of store Unique for each store, but not unique for each row.
    product_ID INT NOT NULL, -- ID of product Unique for each product, but not unique for each store.
    quantity INT, -- Quantity of Product left in related store.
    CONSTRAINT PK_inventory PRIMARY KEY (store_ID, product_ID), -- Primary key is combination of StoreID and ProductID. Together they are unique for each entry
    CONSTRAINT CHK_quantity CHECK (quantity >= 0) -- Quantity should never be allowed to go below 0.
);


INSERT INTO inventory (store_ID, product_ID, quantity) VALUES (
    01,
    02,
    35
    )
