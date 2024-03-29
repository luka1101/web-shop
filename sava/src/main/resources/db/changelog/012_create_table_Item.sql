CREATE TABLE Item (
    id BIGINT PRIMARY KEY,
    quantity INT,
    price DOUBLE,
    shoppingCart BIGINT,
    FOREIGN KEY (shoppingCart) REFERENCES ShoppingCart(id),
    FOREIGN KEY (id) REFERENCES BaseEntity(id)
);


