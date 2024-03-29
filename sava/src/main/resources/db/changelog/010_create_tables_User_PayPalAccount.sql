CREATE TABLE PayPalAccount (
   id BIGINT PRIMARY KEY,
   accountId VARCHAR(255) UNIQUE,
   expiresOn DATE,
   budget DOUBLE,
   country VARCHAR(255),
   city VARCHAR(255),
   postalCode INT,
   street VARCHAR(255),
   FOREIGN KEY (id) REFERENCES BaseEntity(id)
);


CREATE TABLE User (
    id BIGINT PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    payPalAccount BIGINT,
    FOREIGN KEY (id) REFERENCES BaseEntity(id),
    FOREIGN KEY (payPalAccount) REFERENCES PayPalAccount(id)
);

ALTER TABLE PayPalAccount
ADD COLUMN user BIGINT,
ADD CONSTRAINT FK_PayPalAccount_User FOREIGN KEY (user) REFERENCES User(id);