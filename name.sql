CREATE DATABASE Virtual

CREATE TABLE Posts(
Id int identity(1,1) primary key,
Content nvarchar(250),
Shareddate date,
Likecount int,
IsDeleted bit
)

CREATE TABLE Users(
Id int identity(1,1) primary key,
Login nvarchar(100),
Password nvarchar(250),
Mail nvarchar(250)
)

CREATE TABLE Comments(
PostId int references Posts(Id),
UserId int references Users(Id),
LikeCount int,
IsDeleted bit
)

CREATE TABLE People(
Id int identity(1,1) primary key,
[Name] nvarchar (50),
Surname nvarchar (60),
Age int
)
--1
SELECT COUNT(*) FROM Comments
--2
CREATE VIEW GETFULLINFO
AS
SELECT * FROM Comments
JOIN Posts
ON Comments.PostId = Posts.Id
JOIN Users
ON Comments.UserId = Users.Id
--3



