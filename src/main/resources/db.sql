USE [G3_MovieTheater]
GO
SET IDENTITY_INSERT [movie_theater].[roles] ON 

INSERT [movie_theater].[roles] ([role_id], [role_name]) VALUES (1, N'ROLE_ADMIN')
INSERT [movie_theater].[roles] ([role_id], [role_name]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [movie_theater].[roles] OFF
GO
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'1', N'namdinh', CAST(N'2008-11-11' AS Date), N'chuong1@gmail.com', N'hoang van chuong', N'M', N'123456', N'imgage', N'$2a$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'0999999', CAST(N'2008-11-11' AS Date), 1, N'admin', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'2', N'quat lam', CAST(N'1999-10-10' AS Date), N'chuong2@gmail.com', N'do nhu the', N'M', N'234557', N'image2', N'$2a$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'1999-11-11' AS Date), 0, N'user', 2)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'3', N'bach long', CAST(N'1888-08-10' AS Date), N'chuong3@gmail.com', N'tran van chien ', N'M', N'111111', N'profile1.jpg', N'$2a$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2018-11-11' AS Date), 0, N'chuong', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'4', N'giao yen ', CAST(N'2008-10-10' AS Date), N'dieu@gmail.com', N'do vinh ', N'F', N'000000', N'image2', N'$2a$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09' AS Date), 0, N'admin4', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'5', N'ha noi ', CAST(N'2008-10-10' AS Date), N'chuong5@gmail.com', N'hao an ', N'F', N'111111', N'image2', N'pass', N'111111', CAST(N'2007-09-09' AS Date), 0, N'admin5', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'6', N'quat lam', CAST(N'1228-10-10' AS Date), N'w', N'kim ngan ', N'M', N'111111', N'image2', N'pass', N'111111', CAST(N'2007-09-09' AS Date), 0, N'admin6', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'7', N'ha don', CAST(N'1008-10-10' AS Date), N'chuong7@gmail.com', N'minh vu ', N'F', N'111111', N'image2', N'pass', N'111111', CAST(N'2007-09-09' AS Date), 0, N'admin7', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'8', N'hai an ', CAST(N'1983-10-10' AS Date), N'chuong8@gmail.com', N'trung kien ', N'M', N'111111', N'image2', N'pass', N'111111', CAST(N'2007-09-09' AS Date), 0, N'admin8', 1)
GO
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'1', N'1')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'2', N'2')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'3', N'3')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'4', N'4')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'5', N'5')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'6', N'6')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'7', N'7')
INSERT [movie_theater].[employee] ([employee_id], [account_id]) VALUES (N'8', N'8')
GO
SET IDENTITY_INSERT [movie_theater].[cinema_room] ON 

INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (2, N'Room 1', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_1fMl2BZ7OIpLPK5F9BHmqTa1aBIhXqtFpw&usqp=CAU', 50)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (3, N'Room 2', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_1fMl2BZ7OIpLPK5F9BHmqTa1aBIhXqtFpw&usqp=CAU', 50)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (4, N'Room 3', N'https://i.pinimg.com/474x/c1/3c/11/c13c11ec72e83fc8521893d53ec35623.jpg', 60)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (5, N'Room 4', N'https://i.pinimg.com/474x/c1/3c/11/c13c11ec72e83fc8521893d53ec35623.jpg', 50)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (6, N'Room 5', N'https://i.pinimg.com/474x/c1/3c/11/c13c11ec72e83fc8521893d53ec35623.jpg', 60)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (7, N'Room 6', N'https://i.pinimg.com/474x/c1/3c/11/c13c11ec72e83fc8521893d53ec35623.jpg', 50)
SET IDENTITY_INSERT [movie_theater].[cinema_room] OFF
GO
SET IDENTITY_INSERT [movie_theater].[movie] ON 

INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (1, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (2, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (3, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (4, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (5, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (6, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (7, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (8, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (9, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (10, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (11, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (12, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (13, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (14, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (15, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (16, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (17, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (18, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (19, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (20, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (21, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (22, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (23, N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26' AS Date), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (24, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [small_image], [to_date], [version], [release_date]) VALUES (25, N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26' AS Date), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, CAST(N'2021-12-02' AS Date), N'1', NULL)
SET IDENTITY_INSERT [movie_theater].[movie] OFF
GO
SET IDENTITY_INSERT [movie_theater].[show_dates] ON 

INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (1, N'Date1', CAST(N'2021-11-30' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (2, N'Date2', CAST(N'2021-12-01' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (3, N'Date3', CAST(N'2021-12-02' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (4, N'Date4', CAST(N'2021-12-03' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (5, N'Date5', CAST(N'2021-12-04' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (6, N'Date6', CAST(N'2021-12-07' AS Date))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (7, N'Date7', CAST(N'2021-12-06' AS Date))
SET IDENTITY_INSERT [movie_theater].[show_dates] OFF
GO
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (1, 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (3, 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (5, 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (6, 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (1, 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (2, 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (4, 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (5, 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (1, 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (2, 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (4, 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (1, 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (2, 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (3, 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (1, 5)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (5, 5)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (4, 6)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (4, 7)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (7, 7)
GO
SET IDENTITY_INSERT [movie_theater].[schedule] ON 

INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (1, N'07:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (2, N'09:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (3, N'11:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (4, N'13:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (5, N'14:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (6, N'15:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (7, N'16:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (8, N'17:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (9, N'18:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (10, N'19:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (11, N'20:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (12, N'21:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (13, N'22:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (14, N'23:00')
SET IDENTITY_INSERT [movie_theater].[schedule] OFF
GO
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (3, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (4, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (5, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (6, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (7, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (7, 2)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (7, 4)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, 2)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, 6)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (9, 1)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (9, 2)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, 2)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, 3)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, 4)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, 2)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, 3)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, 5)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (12, 3)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (13, 5)
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (14, 3)
GO
SET IDENTITY_INSERT [movie_theater].[promotion] ON 

INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (1, N'Merry Chrismas 10k', 10000, CAST(N'2021-12-31' AS Date), NULL, CAST(N'2021-12-20' AS Date), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (2, N'Merry Chrismas 50k', 50000, CAST(N'2021-12-31' AS Date), NULL, CAST(N'2021-12-20' AS Date), N'MC50')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (3, N'Merry Chrismas 100k', 100000, CAST(N'2021-12-25' AS Date), NULL, CAST(N'2021-12-24' AS Date), N'MC100')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (4, N'Happy New Year 10k', 10000, CAST(N'2022-01-10' AS Date), NULL, CAST(N'2021-12-29' AS Date), N'NY10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (5, N'Happy New Year 20K', 20000, CAST(N'2022-01-07' AS Date), NULL, CAST(N'2021-12-29' AS Date), N'NY20')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (6, N'Happy New Year 50K', 50000, CAST(N'2022-01-05' AS Date), NULL, CAST(N'2021-12-29' AS Date), N'NY50')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (7, N'Happy New Year 100k', 100000, CAST(N'2022-01-02' AS Date), NULL, CAST(N'2021-12-31' AS Date), N'NY100')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (8, N'Lunar New Year 10k', 10000, CAST(N'2022-03-01' AS Date), NULL, CAST(N'2022-01-31' AS Date), N'LY10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (9, N'Lunar New Year 22k', 22222, CAST(N'2022-02-20' AS Date), NULL, CAST(N'2022-01-31' AS Date), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (10, N'Lunar New Year 66k', 66666, CAST(N'2022-02-10' AS Date), NULL, CAST(N'2022-01-31' AS Date), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (11, N'Lunar New Year 88k', 88888, CAST(N'2022-02-07' AS Date), NULL, CAST(N'2022-01-31' AS Date), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (12, N'Lunar New Year 222k', 222222, CAST(N'2022-02-05' AS Date), NULL, CAST(N'2022-01-31' AS Date), N'MC10')
SET IDENTITY_INSERT [movie_theater].[promotion] OFF
GO
