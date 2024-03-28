create table item (
    id int primary key,
    quantity int,
    price float,
    product int,
    shoping_cart int,
    foreign key (id) references base_entity(id),
    foreign key (product) references product(id),
    foreign key (shoping_cart) references shoping_cart(id)
)