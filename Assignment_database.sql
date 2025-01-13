create database store_management;

use store_management;

create table product(
	id char primary key not null,
    name varchar(100) not null,
    description varchar(255) null,
    price decimal null,
    stock int null -- số lượng tồn kho
);

-- Thêm dữ liệu
-- a.thao tác trực tiếp trên giao diện workbench
INSERT INTO `store_management`.`product` (`id`, `name`, `description`, `price`, `stock`) VALUES ('01', 'áo', 'áo thun nam', '200000', '10');

-- b. Sử dụng lệch mà không chỉ định tên cột
insert into product value(02,'quần','quần đùi',250000,15);
insert into product value(05,'quần','quần jeans ống loe',15000000,15);

-- c. Sử dụng lệnh và chỉ rõ tên cột
insert into product(id,name,description,price,stock) value(03,'quần','quần tây',300000,20);

-- d. Sử dụng lệnh, chỉ rõ tên cột và không nhập dữ liệu cho các cột cho phép null
insert into product(id,name) value(04,'quần jeans');

-- Truy vấn dữ liệu
-- a.Liệt kê toàn bộ thông tin của product
select *from product;
-- b. liệt kê id,name và price của tất cả sản phẩm
select id,name,price from product;
-- c. liệt kê id,name và price của các sản phẩm có giá dưới 10 triệu 
select id,name,price from product where price < 10000000;

-- Cập nhật dữ liệu
-- a. Thao tác trực tiếp trên giao diện workbench.
UPDATE `store_management`.`product` SET `id` = '1' WHERE (`id` = '0');
UPDATE `store_management`.`product` SET `price` = '300000', `stock` = '3' WHERE (`id` = '4');
-- b.sử dụng lệnh mà không có điều kiện WHERE
update product set stock = 5;
-- c.sử dụng lệnh mà có điều kiện WHERE
update product set stock = 10 where id = 2;

set sql_safe_updates = 0;
set sql_safe_updates = 1;

-- Chỉnh sửa bảng
-- a. Thêm trường Barcode với tất cả dữ liệu trước là NULL
ALTER TABLE product 
ADD COLUMN Barcode VARCHAR(50) NULL;

-- b. Thêm trường Warranty với giá trị mặc định là 6 tháng
ALTER TABLE product 
ADD COLUMN Warranty VARCHAR(20) DEFAULT '6 tháng';

-- Xóa dữ liêu
-- a. Xóa dữ liệu trực tiếp trên giao diện Workbench
DELETE FROM `store_management`.`product` WHERE (`id` = '4');
-- b. Xóa dữ liệu mà không có điều kiện WHERE
DELETE FROM product;
-- c. Xóa dữ liệu với điều kiện WHERE
DELETE FROM product 
WHERE id = '2';

-- Xóa Bảng
DROP TABLE product;

-- XÓA CƠ SỞ DỮ LIỆU
-- a. Xóa mà không có điều kiện
DROP DATABASE store_management;
-- b. Xóa bằng cách kiểm tra database đã tồn tại chưa rồi tiến hành xóa
DROP DATABASE IF EXISTS store_management;


