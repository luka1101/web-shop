create table user (
    id int primary key,
    username varchar(100),
    password varchar(100),
    first_name varchar(100),
    last_name varchar(100),
    paypal_account -- TODO
    foreign key (id) references base_entity(id),
    foreign key (paypal_account) references paypal_account(id)
)