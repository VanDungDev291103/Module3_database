create database bank_account;

use bank_account;

create table customer (
	id int primary key auto_increment,
    name nvarchar(50) not null
);


-- decimal(10,2): 10 là Tổng số chữ số (phần nguyên + phần thập phân) 
-- 2 là Số chữ số sau dấu thập phân.
-- default 0.00 : Nếu không nhập giá trị hệ thống sẽ mặc định là 0.00
create table bank_account (
	id int primary key auto_increment,
    balance decimal(10,2) not null default 0.00,
    id_customer int not null unique,
    foreign key (id_customer) references customer (id)
);
-- unique được để ở dòng id_customer vì nó sẽ là duy nhất chỉ dc 1 người cho một tài khoản