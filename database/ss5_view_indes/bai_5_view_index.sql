create database demo;
use demo;

create table products (
	id int primary key auto_increment,
    productCode varchar(50) not null,
    productName varchar(50) not null,
    productPrice decimal(10,2),
    productAmount int,
    productDescription varchar(100),
    productStatus varchar(10)
);

insert into Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)  
values  
('P001', 'Laptop Dell XPS 13', 1200.00, 10, 'Laptop Dell XPS 13 với màn hình 13.3 inch', 'Active'),  
('P002', 'MacBook Pro M2', 1500.00, 5, 'MacBook Pro M2 2023, hiệu năng mạnh mẽ', 'Active'),  
('P003', 'iPhone 14 Pro', 999.99, 15, 'Điện thoại iPhone 14 Pro 256GB', 'Active'),  
('P004', 'Samsung Galaxy S23', 899.99, 20, 'Điện thoại Samsung Galaxy S23 Ultra', 'Active'),  
('P005', 'Sony WH-1000XM5', 399.99, 30, 'Tai nghe chống ồn Sony WH-1000XM5', 'Active'),  
('P006', 'iPad Air 5', 749.99, 8, 'Máy tính bảng iPad Air 5 M1 2022', 'Active'),  
('P007', 'Logitech MX Master 3', 99.99, 50, 'Chuột không dây Logitech MX Master 3', 'Active'),  
('P008', 'Asus ROG Strix G16', 1800.00, 3, 'Laptop gaming Asus ROG Strix G16', 'Active'),  
('P009', 'GoPro Hero 11', 499.99, 12, 'Camera hành trình GoPro Hero 11 Black', 'Active'),  
('P010', 'Xbox Series X', 499.00, 7, 'Máy chơi game Xbox Series X', 'Inactive');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
create unique index i_productCode on products(productCode);
create index i_name_price on products(productName, productPrice);
explain select * from products where productCode = 'P001';

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành xoá view
create view product_view as
select productCode, productName, productPrice, productStatus
from products;
-- Tiến hành sửa đổi view
alter view product_view as
select productCode, productName, productPrice, productStatus
from products;
-- Tiến hành xoá view
drop view product_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure GetAllProducts ()
begin
select * from products;
end //
delimiter ;

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure AddProduct (
	in p_code varchar(50),
    in p_name varchar(50),
    in p_price decimal(10,2),
    in p_amount int,
    in p_description varchar(100),
    in p_status varchar(10)
)
begin
	insert into products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
	values (p_code, p_name, p_price, p_amount, p_description, p_status);
end //
delimiter ;

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure UpdateProduct (
	in p_id int,
	in p_code varchar(50),
    in p_name varchar(50),
    in p_price decimal(10,2),
    in p_amount int,
    in p_description varchar(100),
    in p_status varchar(10)
)
begin
update products
set 
	productCode = p_code,
    productName = p_name,
    productPrice = p_price,
    productAmount = p_amount,
    productDescription = p_description,
    productStatus = p_status
    where id = p_id;
end //
delimiter ;
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure DeleteProduct (in p_id int)
begin
delete from products
where id = p_id;
end //
delimiter ;

