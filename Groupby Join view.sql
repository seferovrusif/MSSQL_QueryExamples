--CREATE DATABASE AzMB101_Rusif1
--use AzMB101_Rusif1

------------------------------------- Create Table's and Insert Values -----------------------------------------------

--CREATE TABLE Duties
--(
--	Id int identity primary key,
--	Name nvarchar(30)
--)
--insert Duties values('Kassir'),(N'Baş Kassir'),('Satıcı')

--CREATE TABLE Employee
--(
--	Id int identity primary key,
--	Name nvarchar(30),
--	Surname nvarchar(30),
--	FatherName nvarchar(30),
--	Salary tinyint,
--	PositionId int REFERENCES Duties(Id)
--)
--Alter table Employee
--Alter COLUMN Salary money
--insert Employee values('Kamran',N'Kerimli','Ali','600',3),('Esed',N'Aliyev','Ali','800',1),('Nihad',N'Seferli','Cavid','900',2)

--CREATE TABLE Branches
--(
--	Id int identity primary key,
--	Name nvarchar(60)
--)
--insert Branches values('Huseyn Cavid'),(N'Elmler'),('Kaktus dairesi'),('28 May')

--CREATE TABLE Products
--(
--	Id int identity primary key,
--	Name nvarchar(60),
--	PurchasePrice money,
--	SalePrice money
--)
--insert Products values(N'Şəkər tozu','1','1.3'),(N'Alma','0.5','0.7'),(N'Banan','2.4','2.8'),(N'Makaron','1.5','1.8')

--insert Products values('sas','2.67','89.55')

--CREATE TABLE Sale
--(
--	Id int identity primary key,
--	WorkerId int REFERENCES Employee(Id),
--	BranchId int REFERENCES Branches(Id),
--	SaleDate datetime
--)
--CREATE TABLE SaleProduct
--(
--	Id int identity primary key,
--	SaleId int REFERENCES Sale(Id),
--	ProductId int REFERENCES Products(Id)
	
--)
--insert Sale values(1,2,'2023-09-11 12:01:00'),(3,2,'2023-09-11 20:00:00'),(3,4,'2023-09-11 19:34:00'),(2,3,'2023-09-11 23:00:00'),(2,3,'2023-09-11 15:13:23')
--insert Sale values(1,1,'2023-11-11 09:00:00')
--insert Sale values(2,3,'2023-11-08 10:00:00')

--insert SaleProduct values(1,1),(1,2),(1,3),(2,1),(2,5),(3,4),(4,3),(4,4),(5,4),(5,1)
--insert SaleProduct values(7,1),(7,3)
--insert SaleProduct values(8,5),(8,4)

------------------------------------- Query -----------------------------------------------

------- 1    

--SELECT i.Name as N'Worker',m.Name as N'Product', f.Name as Branch,m.PurchasePrice,m.SalePrice FROM Sale AS s
--JOIN SaleProduct AS sm
--ON s.Id=sm.SaleId
--JOIN Products as m
--ON m.Id=sm.ProductId
--JOIN Branches AS f
--ON f.Id=s.BranchId
--JOIN Employee AS i
--ON i.Id=s.workerId

--------- 2               
---------To perform "Group By", I calculated the total for each branch separately

--Select f.Name as Branch,SUM(m.SalePrice) as 'Branch's Total Sale' FROM Sale AS s
--JOIN SaleProduct AS sm
--ON s.Id=sm.SaleId
--JOIN Products AS m
--ON m.Id=sm.ProductId
--JOIN Branches as f
--ON f.Id=s.BranchId
--Group BY f.Name

--------- 3

--Select f.Name as Branch, Sum(m.SalePrice-m.PurchasePrice) as 'Earnings per branch in the current month' FROM Sale AS s
--JOIN SaleProduct AS sm
--ON s.Id=sm.SaleId
--JOIN Products AS m
--ON m.Id=sm.ProductId
--JOIN Branches as f
--ON f.Id=s.BranchId
--Where  DATEDIFF(month, GETDATE(), s.SaleDate)=0 AS DateDiff;
--Group BY f.Name



-------- 4

--select i.Name+' '+i.Surname+' '+i.FatherName as Fullname_ASA,Count(ProductId) AS Product_Count from Sale as s
--JOIN SaleProduct as sm
--ON s.Id=sm.SaleId
--Join Employee as i
--ON i.Id=s.WorkerId
--GROUP BY i.Name+' '+i.Surname+' '+i.FatherName


---------- 5


--Create view vw_FilalProduct
--as
--select BranchId,COUNT(ProductID)as count from Sale as s
--JOIN SaleProduct as sm
--ON s.Id=sm.SaleId
--WHERE  DATEDIFF(DAY, SaleDate, GETDATE())=0
--Group by BranchId


----Yuxardaki view'a esasen

--Declare @max int
--Set @max=(Select max(a.say) from dbo.vw_FilalProduct as a)
--Select Name from dbo.vw_FilalProduct as a 
--Join Branches as f
--ON f.Id=a.BranchId
--where say=@max 





-------- 6
---view

--Create view vw_ProductSay
--as
--select m.Name,Count(m.Name)as count from Sale as s
--JOIN SaleProduct as sm
--ON s.Id=sm.SaleId
--Join Products as m
--On m.Id=sm.ProductId
--WHERE  DATEDIFF(MONTH, SaleDate, GETDATE())=0
--Group by m.Name

---- Select

--SELECT * FROM  dbo.vw_ProductSay as ms
--where ms.say=(SELECT max(ms.say) FROM  dbo.vw_ProductSay as ms)

