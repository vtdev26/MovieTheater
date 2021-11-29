USE master
GO

IF(EXISTS(SELECT * FROM SYSDATABASES WHERE NAME='G3_MovieTheater'))
	DROP DATABASE G3_MovieTheater
GO

CREATE DATABASE G3_MovieTheater
GO


USE G3_MovieTheater
GO

CREATE SCHEMA movie_theater
GO


// chuonghv1
INSERT INTO movie_theater.account VALUES
 (1, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (2, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (3, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (4, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (5, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (6, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (7, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1),
 (8, 'quat lam', '2008-10-10', 'chuong2@gmail.com', 'do nhu the', 'M', 111111, 'image2', 'pass', 0111111, '2007-09-09', 0, 'admin2', 1);

INSERT INTO movie_theater.roles (role_name) VALUES
('USER'), ('ADMIN');

INSERT INTO movie_theater.employee VALUES
(1,2),(2,2);

SELECT * FROM movie_theater.employee
SELECT * FROM movie_theater.account
SELECT * FROM movie_theater.roles







// truongnd
INSERT INTO [movie_theater].[promotion]
([detail],[discount_level],[end_time],[image],[start_time],[title])
VALUES
('Merry Chrismas 10k', 10000, '2021-12-31', null, '2021-12-20', 'MC10'),
('Merry Chrismas 50k', 50000, '2021-12-31', null, '2021-12-20', 'MC50'),
('Merry Chrismas 100k', 100000, '2021-12-25', null, '2021-12-24', 'MC100'),
('Happy New Year 10k', 10000, '2022-01-10', null, '2021-12-29', 'NY10'),
('Happy New Year 20K', 20000, '2022-01-07', null, '2021-12-29', 'NY20'),
('Happy New Year 50K', 50000, '2022-01-05', null, '2021-12-29', 'NY50'),
('Happy New Year 100k', 100000, '2022-01-02', null, '2021-12-31', 'NY100'),
('Lunar New Year 10k', 10000, '2022-03-01', null, '2022-01-31', 'LY10'),
('Lunar New Year 22k', 22222, '2022-02-20', null, '2022-01-31', 'MC10'),
('Lunar New Year 66k', 66666, '2022-02-10', null, '2022-01-31', 'MC10'),
('Lunar New Year 88k', 88888, '2022-02-07', null, '2022-01-31', 'MC10'),
('Lunar New Year 222k', 222222, '2022-02-05', null, '2022-01-31', 'MC10')

