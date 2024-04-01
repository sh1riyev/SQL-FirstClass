CREATE DATABASE PB101
use PB101

CREATE TABLE Groups(    
[ID]int,
[Name] NVARCHAR(50)
)

CREATE TABLE Students(  
    [Id]int,
    [Name] NVARCHAR(50),
    [Surname] NVARCHAR(50),
    [Age] int
)

drop table Groups

ALTER table Students
add [Adress] NVARCHAR(200)

ALTER TABLE Students
drop COLUMN [Adress]

EXEC sp_rename Stu,Students

drop table Stu

EXEC sp_rename 'Students.Surname',Lastname

select * from Students

insert into Students([Id],[Name],[Lastname],[Age])
VALUES(2,'Ilgar','Shiriyev',26),
(3,'Reshad','Aghayev',21),
(4,'Kamran','Muradov',24),
(5,'Hacixan','Hacixanov',19),
(6,'Zeygem','Ashurov',26)

DELETE from Students where [Id] = 2

insert into Students([Id],[Name],[Lastname],[Age])
VALUES(7,'Behruz','Aliyev',36)

update Students
set [Age]=25
where [Id]=5

SELECT [Name],[Lastname] FROM Students
SELECT [Age] as 'Student age' FROM Students

SELECT COUNT(*) as 'Students count' from Students

SELECT AVG([Age]) as 'Student average age' from Students

SELECT SUM([Age]) as 'Student age sum' from Students
SELECT MIN([Age]) as 'Students minimal age' from Students
SELECT MAX([age]) as 'Students maximal age' from Students

SELECT * from Students WHERE [id]=1
SELECT * FROM Students WHERE [id]>1
SELECT COUNT(*) FROM Students WHERE [id]>3
SELECT * FROM Students WHERE [id]>1 and [id]<5

SELECT * FROM Students WHERE [age] BETWEEN 21 and 40

SELECT * FROM Students WHERE [Name] like '%r'

SELECT * FROM Students WHERE [Age] = (select MIN([age]) from Students)

DECLARE @TestVariable INT
SET @TestVariable=(select MIN([age]) from Students)
select * FROM Students WHERE [Age]= @TestVariable

SELECT * FROM Students
ORDER by [Age] DESC

DECLARE @SearchName NVARCHAR(50)
SET @SearchName = (select [name] from Students where [id]=1)

select SUBSTRING(@SearchName ,1,5) as 'Ilqarin adinin qisaldilmisi'
SELECT LEN([name]) from Students where [id]=1  

SELECT [name] FROM Students WHERE [id]=3

SELECT SUBSTRING([name],1,5) FROM Students

create TABLE Employees( 
    [Id] int PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR (50) not NULL,
    [Surname] NVARCHAR (50) DEFAULT 'XXX',
    [Age] int check (Age>=18),
    [Email] NVARCHAR(100) UNIQUE
)

INSERT into Employees([Name],[Surname],[Age],[Email])
VALUES ('Hacixan','Hacixanov',19,'hacixan@gmail.com')

SELECT * FROM Employees

INSERT into Employees ([Name],[Surname],[Age],[Email])
VALUES ('Afide','Veliyeva',38,'afida@gmail.com')