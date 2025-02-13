use quan_ly_ban_hang;

insert into customer (cName, cAge) values
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

insert into product (pName, pPrice) values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

insert into `order` (cID, oDate, oTotalPrice) values
(1, '2006-03-21', null),
(2, '2006-03-23', null),
(1, '2006-03-16', null);

insert into order_detail (oID, pID, adQTY) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order--
select 