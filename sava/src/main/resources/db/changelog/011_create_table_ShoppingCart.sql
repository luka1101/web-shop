CREATE TABLE ShoppingCart (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    status ENUM('NEW', 'ACTIVE', 'COMPLETED', 'DELETED'),
    price DOUBLE,
    user BIGINT,
    FOREIGN KEY (user) REFERENCES User(id),
    FOREIGN KEY (id) REFERENCES BaseEntity(id)
);
