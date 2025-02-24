use casestudy;

insert into vi_tri (ma_vi_tri, ten_vi_tri)
values 
	(1, 'Quan ly'),
	(2, 'Nhan vien');
    
insert into trinh_do (ma_trinh_do, ten_trinh_do)
values
	(1, 'Trung cap'),
    (2, 'Cao dang'),
    (3, 'Dai hoc'),
    (4, 'Sau dai hoc');
    
insert into bo_phan (ma_bo_phan, ten_bo_phan)
values
	(1, 'Sale-Marketing'),
    (2, 'Hanh chinh'),
    (3, 'Phuc vu'),
    (4, 'Quan ly');
    
insert into nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
values
	(1, 'Nguyen Van An', '1970-11-07', 456231786, 10000000, '0901234121', 'annguyen@gmail.com', '295 Nguyen Tat Thanh, Da Nang', 1, 3, 1),
    (2, 'Le Van Binh', '1997-04-09', 654231234, 7000000, '0934212314', 'binhlv@gmail.com', '22 Yen Bai, Da Nang', 1, 2, 2),
    (3, 'Ho Thi Yen', '1995-12-12', 999231723, 14000000, '0412352315', 'thiyen@gmail.com', 'K234/11 Dien Bien Phu, Gia Lai', 1, 3, 2),
    (4, 'Vo Cong Toan', '1980-04-04', 123231365, 17000000, '0374443232', 'toan0404@gmail.com', '77 Hoang Dieu, Quang Tri', 1, 4, 4),
    (5, 'Nguyen Binh Phat', '1999-12-09', 454363232, 6000000, '0902341231', 'phatphat@gmail.com', '43 Yen Bai, Da Nang', 2, 1, 1),
    (6, 'Khuc Nguyen An Nghi', '2000-11-08', 964542311, 7000000, '0978653213', 'annghi20@gmail.com', '294 Nguyen Tat Thanh, Da Nang', 2, 2, 3),
    (7, 'Nguyen Huu Ha', '1993-01-01', 534323231, 8000000, '0941234553', 'nhh0101@gmail.com', '4 Nguyen Chi Thanh, Hue', 2, 3, 2),
    (8, 'Nguyen Ha Dong', '1989-09-03', 234414123, 9000000, '0642123111', 'donghanguyen@gmail.com', '111 Hung Vuong, Ha Noi', 2, 4, 4),
    (9, 'Tong Hoang', '1982-09-03', 256781231, 6000000, '0245144444', 'hoangtong@gmail.com', '213 Ham Nghi, Da Nang', 2, 4, 4),
    (10, 'Nguyen Cong Dao', '1994-01-08', 755434343, 8000000, '0988767111', 'nguyencongdao12@gmail.com', '6 Hoa Khanh, Dong Nai', 2, 3, 2);
    
insert into loai_khach (ma_loai_khach, ten_loai_khach)
values
	(1, 'Diamond'),
    (2, 'Platinum'),
    (3, 'Gold'),
    (4, 'Silver'),
    (5, 'Member');

insert into khach_hang (ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi)
values
	(1, 5, 'Nguyen Thi Hao', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyen Hoang, Da Nang'),
    (2, 3, 'Pham Xuan Dieu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thai Phien, Quang Tri'),
    (3, 1, 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ong Ich Khiem, Vinh'),
    (4, 1, 'Dương Van Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Le Loi, Da Nang'),
    (5, 4, 'Hoang Tran Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Ly Thai To, Gia Lai'),
    (6, 4, 'Ton Nu Moc Chau', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yen The, Da Nang'),
    (7, 1, 'Nguyen My Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Le Loi, Ho Chi Minh'),
    (8, 3, 'Nguyen Thi Hao', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyen Van Linh, Kon Tum'),
    (9, 1, 'Tran Dai Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Ly Thuong Kiet, Quang Ngai'),
    (10, 2, 'Nguyen Tam Đac', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngo Quyen, Da Nang');
    
insert into kieu_thue (ma_kieu_thue, ten_kieu_thue)
values
	(1, 'year'),
    (2, 'month'),
    (3, 'day'),
    (4, 'hour');
    
insert into loai_dich_vu (ma_loai_dich_vu, ten_loai_dich_vu)
values
	(1, 'Villa'),
    (2, 'House'),
    (3, 'Room');
    
insert into dich_vu (ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da,
ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong,
mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang)
values
	(1, 'Villa Beach Front', 25000, 10000000, 10, 3, 1, 'vip', 'Co ho boi', 500, 4),
    (2, 'House Princess 01', 14000, 5000000, 7, 2, 2, 'vip', 'Co them bep nuong', null, 3),
    (3, 'Room Twin 01', 5000, 1000000, 2, 4, 3, 'normal', 'Co tivi', null, null),
    (4, 'Villa No Beach Front', 22000, 9000000, 8, 3, 1, 'normal', 'Co ho boi', 300, 3),
    (5, 'House Princess 02', 10000, 4000000, 5, 3, 2, 'normal', 'Co them bep nuong', null, 2),
    (6,'Room Twin 02', 3000, 900000, 2, 4, 3, 'normal', 'Co tivi', null, null);
    
insert into dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai)
values
	(1, 'Karaoke', 10000, 'gio', 'tien nghi, hien tai'),
    (2, 'Thue xe may', 10000, 'chiec', 'hong 1 xe'),
    (3, 'Thue xe đap', 20000, 'chiec', 'tot'),
    (4, 'Buffet buoi sang', 15000, 'suat', 'day du do an, trang mieng'),
    (5, 'Buffet buoi trua', 90000, 'suat', 'day du do an, trang mieng'),
    (6, 'Buffet buoi toi', 16000, 'suat', 'day du do an, trang mieng');
    
insert into hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc,
tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
values
	(1, '2020-12-08', '2020-12-08', 0, 3, 1, 3),
    (2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1),
    (3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2),
    (4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5),
    (5, '2021-07-14', '2021-07-15', 0, 7, 2, 6),
    (6, '2021-06-01', '2021-06-03', 0, 7, 7, 6),
    (7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4),
    (8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1),
    (9, '2020-11-19', '2020-11-19', 0, 3, 4, 3),
    (10, '2021-04-12', '2021-04-14', 0, 10, 3, 5),
    (11, '2021-04-25', '2021-04-25', 0, 2, 2, 1),
    (12, '2021-05-25', '2021-05-27', 0, 7, 10, 1);
    
insert into hop_dong_chi_tiet (ma_hop_dong_chi_tiet, so_luong, ma_hop_dong, ma_dich_vu_di_kem)
values
	(1, 5, 2, 4),
	(2, 8, 2, 5),
	(3, 15, 2, 6),
	(4, 1, 3, 1),
	(5, 11, 3, 2),
	(6, 1, 1, 3),
	(7, 2, 1, 2),
	(8, 2, 12, 2);