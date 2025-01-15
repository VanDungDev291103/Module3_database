create database contacts;

use contacts;

create table person (
	id int primary key auto_increment,
    name nvarchar(50)
);

create table phone_number (
	id int	primary key auto_increment,
    phone_number varchar(15) not null,
    id_user int not null,
    foreign key (id_user) references person (id)
);

create table email (
	id int primary key auto_increment,
    email varchar(255) not null,
    id_user int not null,
    foreign key (id_user) references person (id)
);