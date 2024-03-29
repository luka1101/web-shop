CREATE TABLE PayPalAccount (
       accountId VARCHAR(255) PRIMARY KEY,
       expiresOn DATE,
       budget DOUBLE,
       country VARCHAR(255),
       city VARCHAR(255),
       postalCode INT,
       street VARCHAR(255),
       user VARCHAR(255)
);
