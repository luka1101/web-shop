create table product (
    id int primary key,
    name varchar(100),
    price float,
    quantity int,
    foreign key (id) references base_entity(id)
);