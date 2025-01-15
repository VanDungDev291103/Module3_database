create database school;

use school;

create table teacher (
	id int primary key auto_increment,
    name nvarchar (100)
);

create table students (
	id int primary key auto_increment,
    name nvarchar(50) not null, 
    id_teacher int not null,
    foreign key (id_teacher) references teacher (id)
);
