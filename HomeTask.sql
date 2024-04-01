create DATABASE Course

use Course

create TABLE Teachers(  
    [Id] int PRIMARY KEY IDENTITY,
    [Nmae] NVARCHAR(50),
    [Surname] NVARCHAR(50),
    [Email] NVARCHAR(50) UNIQUE,
    [Age] int
)

CREATE table Students(  
    [Id] int PRIMARY KEY IDENTITY,
    [Fullname] NVARCHAR(100) not NULL,
    [Age] int,
    [Address] NVARCHAR(100)
)

INSERT into Teachers([Nmae],[Surname],[Email],[Age])
VALUES   ('Cavid','Bashirov','bashirov@gmail.com',31),
        ('Rufat','Aliyev','aliyev@gmail.com',22),
         ('Orxan','Ismayilov','ismayilov@gmail.com',25)

INSERT into Students([Fullname],[Age],[Address])
VALUES ('Ilgar Shiriyev',26,'Sebail'),
('Narmin Haciyeva',21,'Nerimanov'),
('Tural Huseynov',27,'Xetai')

SELECT * FROM Teachers
SELECT * FROM Students

Select COUNT(*) FROM Students

SELECT [Nmae],[Surname] from Teachers WHERE [Age]>20

SELECT * FROM Teachers where [Email] like '%m%@%'