create type shopingCartStatus as ENUM ('NEW', 'ACTIVE', 'COMPLETED', 'DELETED');

create table shoping_cart (
    id int primary key,
    name varchar(100),
    status ShopingCartStatus,
    price float,
    user int,
    foreign key (id) references base_entity(id),
    foreign key (user) references user(id)
)