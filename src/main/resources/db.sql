USE [G3_MovieTheater]
GO
SET IDENTITY_INSERT [movie_theater].[roles] ON 

INSERT [movie_theater].[roles] ([role_id], [role_name]) VALUES (1, N'ROLE_USER')
INSERT [movie_theater].[roles] ([role_id], [role_name]) VALUES (2, N'ROLE_ADMIN')
SET IDENTITY_INSERT [movie_theater].[roles] OFF
GO
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'1', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$2a$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 1, N'admin', 2)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'2', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin123', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'3', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin2', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'4', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin3', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'5', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin4', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'6', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin5', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'7', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin6', 1)
INSERT [movie_theater].[account] ([account_id], [address], [date_of_birth], [email], [full_name], [gender], [identity_card], [image], [password], [phone_number], [register_date], [status], [username], [role_id]) VALUES (N'8', N'quat lam', CAST(N'2008-10-10T00:00:00.000' AS DateTime), N'chuong2@gmail.com', N'do nhu the', N'M', N'111111', N'image2', N'$10$32S8vE0sFBbyIq68fB.lQeOW9F7vXhSbcpMX7NvdNI9WXb1ohZuyi', N'111111', CAST(N'2007-09-09T00:00:00.000' AS DateTime), 0, N'admin7', 1)
GO
SET IDENTITY_INSERT [movie_theater].[cinema_room] ON 

INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (1, N'room1', NULL, 60)
INSERT [movie_theater].[cinema_room] ([cinema_room_id], [cinema_room_name], [cinema_image], [seat_quantity]) VALUES (2, N'room2', NULL, 30)
SET IDENTITY_INSERT [movie_theater].[cinema_room] OFF
GO
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'1', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'10', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'11', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'12', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'13', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'14', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'15', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'16', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'17', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'18', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'19', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'2', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'20', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'21', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'22', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'23', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'24', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'25', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'3', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'4', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'5', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'6', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'7', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'8', N'Actor', N'Black Window: Goá Phụ Đen', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'black_widow.jpg', N'Black Window', N'
Black Window: Goá Phụ Đen', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
INSERT [movie_theater].[movie] ([movie_id], [actor], [content], [director], [duration], [from_date], [large_image], [movie_name_english], [movie_name_vn], [movie_product_company], [release_date], [small_image], [to_date], [version], [cinema_room_id]) VALUES (N'9', N'Actor', N'
Shang-Chi Và Huyền Thoại Thập Luân', NULL, 1, CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'poster_shangchi.jpg', N'Shang-Chi and The Legend of The Ten Rings', N'
Shang-Chi Và Huyền Thoại Thập Luân', N'Movie Theater', NULL, NULL, CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'1', 1)
GO
SET IDENTITY_INSERT [movie_theater].[seat] ON 

INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (1, 30, N'A', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (2, 20, N'B', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (3, 30, N'C', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (4, 40, N'D', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (5, 30, N'E', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (6, 30, N'F', 1, 1, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (7, 30, N'A', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (8, 20, N'B', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (9, 30, N'C', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (10, 40, N'D', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (11, 30, N'E', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (12, 30, N'F', 2, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (13, 30, N'A', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (14, 20, N'B', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (15, 30, N'C', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (16, 40, N'D', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (17, 30, N'E', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (18, 30, N'F', 3, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (19, 30, N'A', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (20, 20, N'B', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (21, 30, N'C', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (22, 40, N'D', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (23, 30, N'E', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (24, 30, N'F', 4, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (25, 30, N'A', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (26, 20, N'B', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (27, 30, N'C', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (28, 40, N'D', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (29, 30, N'E', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (30, 30, N'F', 5, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (31, 30, N'A', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (32, 20, N'B', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (33, 30, N'C', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (34, 40, N'D', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (35, 30, N'E', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (36, 30, N'F', 6, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (37, 30, N'A', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (38, 20, N'B', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (39, 30, N'C', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (40, 40, N'D', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (41, 30, N'E', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (42, 30, N'F', 7, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (43, 30, N'A', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (44, 20, N'B', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (45, 30, N'C', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (46, 40, N'D', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (47, 30, N'E', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (48, 30, N'F', 8, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (49, 30, N'A', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (50, 20, N'B', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (51, 30, N'C', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (52, 40, N'D', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (53, 30, N'E', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (54, 30, N'F', 9, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (55, 30, N'A', 10, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (56, 20, N'B', 10, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (57, 30, N'C', 10, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (58, 40, N'D', 10, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (59, 30, N'E', 10, 0, 0, 1)
INSERT [movie_theater].[seat] ([seat_id], [seat_price], [seat_column], [seat_row], [seat_type], [status], [cinema_room_id]) VALUES (60, 30, N'F', 10, 0, 0, 1)
SET IDENTITY_INSERT [movie_theater].[seat] OFF
GO
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'1', N'1', 1, N'A', 1, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'10', N'1', 4, N'D', 17, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'11', N'1', 4, N'E', 2, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'12', N'1', 4, N'F', 3, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'2', N'1', 1, N'B', 2, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'3', N'1', 1, N'C', 45, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'4', N'1', 2, N'D', 1, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'5', N'1', 2, N'E', 5, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'6', N'1', 2, N'F', 7, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'7', N'1', 3, N'A', 4, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'8', N'1', 3, N'B', 10, 1, 0, 0, NULL)
INSERT [movie_theater].[schedule_seat] ([cinema_room_id], [movie_id], [schedule_id], [seat_column], [seat_id], [seat_row], [seat_type], [status], [invoice_id]) VALUES (N'9', N'1', 3, N'C', 26, 1, 0, 0, NULL)
GO
SET IDENTITY_INSERT [movie_theater].[show_dates] ON 

INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (1, N'Date1', CAST(N'2021-12-04T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (2, N'Date2', CAST(N'2021-12-05T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (3, N'Date3', CAST(N'2021-12-06T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (4, N'Date4', CAST(N'2021-12-07T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (5, N'Date5', CAST(N'2021-12-08T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (6, N'Date6', CAST(N'2021-12-09T00:00:00.000' AS DateTime))
INSERT [movie_theater].[show_dates] ([show_date_id], [date_name], [show_date]) VALUES (7, N'Date7', CAST(N'2021-12-10T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [movie_theater].[show_dates] OFF
GO
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'1', 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'3', 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'5', 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'6', 1)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'1', 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'2', 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'4', 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'5', 2)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'1', 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'2', 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'4', 3)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'1', 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'2', 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'3', 4)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'1', 5)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'5', 5)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'4', 6)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'4', 7)
INSERT [movie_theater].[movie_date] ([movie_id], [show_date_id]) VALUES (N'7', 7)
GO
SET IDENTITY_INSERT [movie_theater].[schedule] ON 

INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (1, N'08:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (2, N'09:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (3, N'10:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (4, N'11:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (5, N'13:30')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (6, N'14:30')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (7, N'15:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (8, N'17:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (9, N'18:30')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (10, N'19:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (11, N'20:00')
INSERT [movie_theater].[schedule] ([schedule_id], [schedule_time]) VALUES (12, N'21:00')
SET IDENTITY_INSERT [movie_theater].[schedule] OFF
GO
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (1, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (2, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (3, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (4, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (5, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (7, N'2')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (7, N'4')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, N'2')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (8, N'6')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (9, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (9, N'2')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, N'2')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, N'3')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (10, N'4')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, N'2')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, N'3')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (11, N'5')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (12, N'1')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (12, N'3')
INSERT [movie_theater].[movie_schedule] ([schedule_id], [movie_id]) VALUES (12, N'5')
GO
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (1, N'Phim Hành Động')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (2, N'Phim Tình Cảm')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (3, N'Phim Chiến Tranh')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (4, N'Phim Hài Hước')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (5, N'Phim Viễn Tưởng')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (6, N'Phim Hoạt Hình')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (7, N'Phim Kinh Dị')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (8, N'Phim Tâm Lý')
INSERT [movie_theater].[type] ([type_id], [type_name]) VALUES (9, N'Phim Phiêu Lưu')
GO
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'1')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'10')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'12')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'14')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'16')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'18')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'20')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'22')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'24')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'3')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'5')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'6')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (1, N'8')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'11')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'13')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'15')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'17')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'19')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'2')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'21')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'23')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'4')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'5')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'7')
INSERT [movie_theater].[movie_type] ([type_id], [movie_id]) VALUES (5, N'9')
GO
SET IDENTITY_INSERT [movie_theater].[promotion] ON 

INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (1, N'Merry Chrismas 10k', 10000, CAST(N'2021-12-31T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (2, N'Merry Chrismas 50k', 50000, CAST(N'2021-12-31T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-20T00:00:00.000' AS DateTime), N'MC50')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (3, N'Merry Chrismas 100k', 100000, CAST(N'2021-12-25T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-24T00:00:00.000' AS DateTime), N'MC100')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (4, N'Happy New Year 10k', 10000, CAST(N'2022-01-10T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'NY10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (5, N'Happy New Year 20K', 20000, CAST(N'2022-01-07T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'NY20')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (6, N'Happy New Year 50K', 50000, CAST(N'2022-01-05T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'NY50')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (7, N'Happy New Year 100k', 100000, CAST(N'2022-01-02T00:00:00.000' AS DateTime), NULL, CAST(N'2021-12-31T00:00:00.000' AS DateTime), N'NY100')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (8, N'Lunar New Year 10k', 10000, CAST(N'2022-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2022-01-31T00:00:00.000' AS DateTime), N'LY10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (9, N'Lunar New Year 22k', 22222, CAST(N'2022-02-20T00:00:00.000' AS DateTime), NULL, CAST(N'2022-01-31T00:00:00.000' AS DateTime), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (10, N'Lunar New Year 66k', 66666, CAST(N'2022-02-10T00:00:00.000' AS DateTime), NULL, CAST(N'2022-01-31T00:00:00.000' AS DateTime), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (11, N'Lunar New Year 88k', 88888, CAST(N'2022-02-07T00:00:00.000' AS DateTime), NULL, CAST(N'2022-01-31T00:00:00.000' AS DateTime), N'MC10')
INSERT [movie_theater].[promotion] ([promotion_id], [detail], [discount_level], [end_time], [image], [start_time], [title]) VALUES (12, N'Lunar New Year 222k', 222222, CAST(N'2022-02-05T00:00:00.000' AS DateTime), NULL, CAST(N'2022-01-31T00:00:00.000' AS DateTime), N'MC10')
SET IDENTITY_INSERT [movie_theater].[promotion] OFF
GO
