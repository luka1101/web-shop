CREATE TABLE Product (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    price DOUBLE,
    quantity INTEGER,
    FOREIGN KEY (id) REFERENCES BaseEntity(id)
);

CREATE TABLE Category (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    FOREIGN KEY (id) REFERENCES BaseEntity(id)
);

CREATE TABLE ProductCategory (
    product_id BIGINT,
    category_id BIGINT,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

ALTER TABLE Item
ADD COLUMN product BIGINT,
ADD CONSTRAINT FK_Item_Product FOREIGN KEY (product) REFERENCES Product(id);