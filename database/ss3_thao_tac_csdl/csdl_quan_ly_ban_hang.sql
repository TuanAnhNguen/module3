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
select o.oID as oid, o.oDate as oDate, sum(od.adQTY * p.pPrice) as oprice
from `order` o
join order_detail od on o.oID = od.oID
join product p on od.pID = p.pID
group by o.oID, o.oDate;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách--
select c.cName, p.pName, od.adQTY
from customer c
join `order` o on c.cID = o.cID
join order_detail od on o.oID = od.oID
join product p on od.pID = p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào--
select c.cName
from customer c
left join `order` o on c.cID = o.cID
where o.oID is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
