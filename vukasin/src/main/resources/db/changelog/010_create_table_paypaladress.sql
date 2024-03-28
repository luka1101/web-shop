create table paypal_account (
    id int primary key,
    account_id varchar(100),
    expires_on date,
    budget float,
    billing_address -- TODO
    foreign key (id) references base_entity(id),
    foreign key (billing_address) references address(id) -- ne znam da li ovako treba
)