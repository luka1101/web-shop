create table product_category (
    id int primary key,
    id_product int,
    id_category int,
    foreign key (id) references base_entity(id),
    foreign key (id_product) references product(id),
    foreign key (id_category) references category(id)
)