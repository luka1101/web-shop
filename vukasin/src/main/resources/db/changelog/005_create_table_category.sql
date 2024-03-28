create table category (
    id int primary key,
    name varchar(100),
    foreign key (id) references base_entity(id)
)