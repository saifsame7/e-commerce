--create database e_commerce 
--go
--use e_commerce 
--go
--CREATE TABLE Products (
--product_id INT PRIMARY KEY,
--product_name NVARCHAR(50) NOT NULL,
--price INT ,
--quantity INT ,
--catagory NVARCHAR(20) not null
--);
--CREATE TABLE Costumer (
--CostumerID INT PRIMARY KEY,
--FirstName NVARCHAR(50) NOT NULL,
--LastName NVARCHAR(50) Default 'N\A',
--Email NVARCHAR(100) NOT NULL UNIQUE,
--City NVARCHAR(30),
--Country NVARCHAR(30)
--);
--CREATE TABLE Orders(
--OrderID INT PRIMARY KEY ,
--CID INT,
--OrderDate DATE ,
--Status_ NVARCHAR(20)
--Foreign Key (CID) REFERENCES Costumer(costumerid)
--);
--CREATE TABLE Order_Items(
--OrderID INT ,
--ProductID INT,
--Quantity INT ,
--Primary Key (OrderID ,ProductID),
--Foreign Key (OrderID) REFERENCES Orders(OrderID),
--Foreign Key (ProductID) REFERENCES Products(product_id),
--);
--CREATE TABLE ShippingDetails(
--OrderID INT,
--CostumerID INT,
--City NVARCHAR(50),
--Country NVARCHAR(50),
--PostalCode INT NOT NULL,
--ShippingDate DATE ,
--STATUS_ NVARCHAR(20),
--Foreign KEY (OrderID) REFERENCES Orders(OrderID),
--Foreign KEY (CostumerID) REFERENCES Costumer(CostumerID)
--);
--CREATE TABLE Payments(
--PaymentID INT PRIMARY KEY,
--OrderID INT,
--CostumerID INT,
--PaymentDate DATE,
--TotalAmount REAL,
--Method NVARCHAR(20),
--Status_ NVARCHAR(20)
--Foreign KEY (OrderID) REFERENCES Orders(OrderID),
--Foreign KEY (CostumerID) REFERENCES Costumer(CostumerID)
--);

--INSERT INTO Products (product_id, product_name, price, quantity, catagory) VALUES
--(1, 'Laptop', 1200, 50, 'Electronics'),
--(2, 'Headphones', 150, 100, 'Electronics'),
--(3, 'Smartphone', 800, 70, 'Electronics'),
--(4, 'Desk Chair', 200, 40, 'Furniture'),
--(5, 'Notebook', 5, 500, 'Stationery'),
--(6, 'Tablet', 400, 30, 'Electronics'),
--(7, 'Monitor', 300, 60, 'Electronics'),
--(8, 'Backpack', 50, 200, 'Accessories'),
--(9, 'Mouse', 25, 150, 'Electronics'),
--(10, 'Keyboard', 30, 120, 'Electronics');

--INSERT INTO Costumer (CostumerID, FirstName, LastName, Email, City, Country) VALUES
--(1, 'John', 'Doe', 'johndoe@example.com', 'New York', 'USA'),
--(2, 'Jane', 'Smith', 'janesmith@example.com', 'Los Angeles', 'USA'),
--(3, 'Ahmed', 'Ali', 'ahmedali@example.com', 'Cairo', 'Egypt'),
--(4, 'Emily', 'Clark', 'emilyclark@example.com', 'London', 'UK'),
--(5, 'Liam', 'Brown', 'liambrown@example.com', 'Sydney', 'Australia'),
--(6, 'Sophia', 'Jones', 'sophiajones@example.com', 'Toronto', 'Canada'),
--(7, 'Michael', 'Lee', 'michaellee@example.com', 'Seoul', 'South Korea'),
--(8, 'Anna', 'Garcia', 'annagarcia@example.com', 'Madrid', 'Spain'),
--(9, 'Robert', 'Wilson', 'robertwilson@example.com', 'Berlin', 'Germany'),
--(10, 'Sara', 'Chen', 'sarachen@example.com', 'Shanghai', 'China');

--INSERT INTO Orders (OrderID, CID, OrderDate, Status_) VALUES
--(1, 1, '2024-12-01', 'Pending'),
--(2, 2, '2024-12-02', 'Shipped'),
--(3, 3, '2024-12-03', 'Delivered'),
--(4, 4, '2024-12-04', 'Pending'),
--(5, 5, '2024-12-05', 'Shipped'),
--(6, 6, '2024-12-06', 'Cancelled'),
--(7, 7, '2024-12-07', 'Pending'),
--(8, 8, '2024-12-08', 'Delivered'),
--(9, 9, '2024-12-09', 'Shipped'),
--(10, 10, '2024-12-10', 'Pending');

--INSERT INTO Order_Items (OrderID, ProductID, Quantity) VALUES
--(1, 1, 1),
--(1, 2, 2),
--(2, 3, 1),
--(3, 4, 1),
--(3, 5, 10),
--(4, 6, 1),
--(5, 7, 2),
--(6, 8, 1),
--(7, 9, 3),
--(8, 10, 1);


--INSERT INTO ShippingDetails (OrderID, CostumerID, City, Country, PostalCode, ShippingDate, STATUS_) VALUES
--(1, 1, 'New York', 'USA', 10001, '2024-12-05', 'Shipped'),
--(2, 2, 'Los Angeles', 'USA', 90001, '2024-12-06', 'In Transit'),
--(3, 3, 'Cairo', 'Egypt', 11511, '2024-12-07', 'Delivered'),
--(4, 4, 'London', 'UK', 54321, '2024-12-08', 'Pending'),
--(5, 5, 'Sydney', 'Australia', 2000, '2024-12-09', 'Shipped'),
--(6, 6, 'Toronto', 'Canada', 12345, '2024-12-10', 'Cancelled'),
--(7, 7, 'Seoul', 'South Korea', 67890, '2024-12-11', 'Pending'),
--(8, 8, 'Madrid', 'Spain', 28001, '2024-12-12', 'Delivered'),
--(9, 9, 'Berlin', 'Germany', 10115, '2024-12-13', 'Shipped'),
--(10, 10, 'Shanghai', 'China', 200000, '2024-12-14', 'Pending');

--INSERT INTO Payments (PaymentID, OrderID, CostumerID, PaymentDate, TotalAmount, Method, Status_) VALUES
--(1, 1, 1, '2024-12-01', 2550.00, 'Credit Card', 'Completed'),
--(2, 2, 2, '2024-12-02', 800.00, 'PayPal', 'Completed'),
--(3, 3, 3, '2024-12-03', 500.00, 'Debit Card', 'Completed'),
--(4, 4, 4, '2024-12-04', 200.00, 'Bank Transfer', 'Pending'),
--(5, 5, 5, '2024-12-05', 300.00, 'Credit Card', 'Completed'),
--(6, 6, 6, '2024-12-06', 50.00, 'Cash', 'Cancelled'),
--(7, 7, 7, '2024-12-07', 75.00, 'Credit Card', 'Pending'),
--(8, 8, 8, '2024-12-08', 30.00, 'Debit Card', 'Completed'),
--(9, 9, 9, '2024-12-09', 25.00, 'PayPal', 'Completed'),
--(10, 10, 10, '2024-12-10', 150.00, 'Bank Transfer', 'Pending');

--INSERT INTO Orders (OrderID, CID, OrderDate, Status_) VALUES
--(11, 1, '2024-12-11', 'Pending'),
--(12, 2, '2024-12-12', 'Delivered'),
--(13, 3, '2024-12-13', 'Shipped'),
--(14, 1, '2024-12-14', 'Delivered'),
--(15, 4, '2024-12-15', 'Pending');

--INSERT INTO Order_Items (OrderID, ProductID, Quantity) VALUES
--(11, 2, 3),
--(12, 1, 1),
--(13, 4, 2),
--(14, 6, 1),
--(15, 9, 5);

--INSERT INTO ShippingDetails (OrderID, CostumerID, City, Country, PostalCode, ShippingDate, STATUS_) VALUES
--(11, 1, 'New York', 'USA', 10001, '2024-12-12', 'In Transit'),
--(12, 2, 'Los Angeles', 'USA', 90001, '2024-12-13', 'Delivered'),
--(13, 3, 'Cairo', 'Egypt', 11511, '2024-12-14', 'Shipped'),
--(14, 1, 'New York', 'USA', 10001, '2024-12-15', 'Delivered'),
--(15, 4, 'London', 'UK', 54321, '2024-12-16', 'Pending');

--INSERT INTO Payments (PaymentID, OrderID, CostumerID, PaymentDate, TotalAmount, Method, Status_) VALUES
--(11, 11, 1, '2024-12-11', 450.00, 'Credit Card', 'Completed'),
--(12, 12, 2, '2024-12-12', 1200.00, 'PayPal', 'Completed'),
--(13, 13, 3, '2024-12-13', 400.00, 'Debit Card', 'Completed'),
--(14, 14, 1, '2024-12-14', 400.00, 'Credit Card', 'Completed'),
--(15, 15, 4, '2024-12-15', 125.00, 'Bank Transfer', 'Pending');

--create procedure get_costumer_info
--@CostumerID int 
--as
--begin
--set nocount on
--select c.CostumerID,c.FirstName,c.LastName,c.Email,oi.OrderID,p.product_name
--from Costumer c
--inner join Orders O on o.CID=c.CostumerID
--inner join Order_Items oi on oi.OrderID=o.OrderID
--inner join Products P on p.product_id=oi.ProductID
-- WHERE c.CostumerID = @CostumerID
--End;
--create procedure get_product
--@product_id int
--as
--begin
--set nocount on
--select p.product_id,p.catagory,p.product_name
--from Products p
--where p.product_id=@product_id
select *
from Costumer c
--insert into Costumer
--values 
--(12,'Dr\Elhossainy','ibrahim','elhosainy@gmail.com','menofia','egypt')
select *
from Costumer c
where c.CostumerID=12
select *
from Costumer c