CREATE TABLE User (
      username VARCHAR(255) PRIMARY KEY,
      password VARCHAR(255),
      firstName VARCHAR(255),
      lastName VARCHAR(255),
      payPalAccount VARCHAR(255),
      FOREIGN KEY (payPalAccount) REFERENCES PayPalAccount(accountId)
);

ALTER TABLE PayPalAccount
ADD COLUMN username VARCHAR(255),
ADD CONSTRAINT FK_PayPalAccount_User FOREIGN KEY (username) REFERENCES User(username);