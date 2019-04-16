CREATE TABLE store (
    store_ID INT NOT NULL, -- PK and ID of store unique for each row.
    location varchar(20),
    constraint PK_store_ID PRIMARY KEY (store_ID)
  );

INSERT INTO store (store_ID, location) VALUES (
  01,
  Fayetteville
  )
