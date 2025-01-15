create database book_store;

use book_store;

-- Tạo database cho tác giả
create table author (
	id int primary key auto_increment,
    name nvarchar(50) not null
);

create table books (
	id int primary key auto_increment,
    name nvarchar(255) not null,
    price decimal null,
    author_id int not null,
    foreign key (author_id) references author(id)
);

create table employee (
	id int primary key auto_increment,
    name nvarchar(50) not null,
    adress nvarchar(255) null
);

create table selling_book_management (
	id_employee int not null,
    id_books int not null,
    primary key (id_employee,id_books),
    foreign key (id_employee) references employee(id),
    foreign key  (id_books) references books(id)
);




