create table client (id serial primary key);

create table registration (
    id serial primary key,
    email varchar(255),
    password varchar(20),
    id_client references client (id)
    unique nulls not distinct (email, password)
);

create table user(
    id serial primary key,
    id_registration references registration (id)
);

create table login (
    id serial primary key,
    token varchar(255),
    id_user references user(id),
)