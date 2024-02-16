CREATE DATABASE NEW

CREATE TABLE customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(255),
ContactName VARCHAR(255),
Address VARCHAR(255)
)
--Drop table customers
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8');

SELECT * FROM customers
SELECT DISTINCT customerID FROM customers
SELECT * FROM customers WHERE CustomerID=1
SELECT CustomerID,CustomerName FROM customers GROUP BY CustomerID, CustomerName
SELECT CustomerID,CustomerName FROM customers GROUP BY CustomerID, CustomerName HAVING CustomerName LIKE '%na%'
DELETE customers WHERE CustomerID=2

CREATE TABLE employees1 (
ID INT PRIMARY KEY,
Name VARCHAR(255),
Department VARCHAR(255),
Salary INT,
Year_of_Experience INT
);

INSERT INTO employees1 (ID, Name, Department, Salary, Year_of_Experience) VALUES
(1, 'Prashant Wagh', 'R&D', 49000, 1),
(2, 'Abhishek Pawar', 'Production', 45000, 1),
(3, 'Gautam Jain', 'Development', 56000, 4),
(4, 'Shubham Mahale', 'Accounts', 57000, 2),
(5, 'Rahul Thakur', 'Production', 76000, 4),
(6, 'Bhushan Wagh', 'R&D', 75000, 2),
(7, 'Anand Singh', 'Marketing', 28000, 1);


CREATE TABLE employees2 (
ID INT PRIMARY KEY,
Name VARCHAR(255),
Department VARCHAR(255),
Salary INT,
Year_of_Experience INT
);

INSERT INTO employees2 (ID, Name, Department, Salary, Year_of_Experience) VALUES
(1, 'Aakash Singh', 'Development', 72000, 2),
(2, 'Abhishek Pawar', 'Production', 45000, 1),
(3, 'Pranav Deshmukh', 'HR', 59900, 3),
(4, 'Shubham Mahale', 'Accounts', 57000, 2),
(5, 'Sunil Kulkarni', 'Development', 87000, 3),
(6, 'Bhushan Wagh', 'R&D', 75000, 2),
(7, 'Paras Jaiswal', 'Marketing', 32000, 1);


SELECT *FROM employees1 UNION SELECT *FROM employees2; 
SELECT *FROM employees1 UNION ALL SELECT *FROM employees2;
SELECT *FROM employees1 INTERSECT SELECT *FROM employees2; 
SELECT *FROM employees1 MINUS SELECT *FROM employees2; 

-- Second
SELECT * FROM employees1 WHERE Year_of_Experience=1 AND Department='Production'
SELECT * FROM employees1 where Department NOT IN ('R&D','Production')
SELECT * FROM employees1 WHERE Department='R&D' OR Department='Production'
SELECT * FROM employeeS1 WHERE Department NOT LIKE 'A%';
SELECT * FROM employeeS1 WHERE Department LIKE 'P%';
SELECT * FROM employees1 WHERE id BETWEEN 1 AND 4;
SELECT * FROM employeeS1 WHERE id = ALL (SELECT id FROM employeeS2 WHERE Department='Production');
SELECT * FROM employeeS1 WHERE id = ANY (SELECT id FROM employeeS2 WHERE Department='Production');
SELECT Name FROM employees1 WHERE EXISTS(SELECT id FROM employeeS2 WHERE Department='Production');
SELECT * FROM employeeS1 WHERE id < SOME (SELECT id FROM employeeS2 WHERE Department='Production');
SELECT DISTINCT DEPARTMENT FROM employees1;
SELECT DISTINCT DEPARTMENT FROM employees1 ORDER BY Department DESC;
SELECT COUNT(DISTINCT DEPARTMENT) FROM employees1;
UPDATE employees1 SET Salary = 50000 WHERE ID = 1;
SELECT * FROM employees1 AS E1 
JOIN employees2 AS E2 ON E1.ID=E2.ID
ALTER TABLE EMPLOYEES1 ADD NewColumn INT;
ALTER TABLE EMPLOYEES1 DROP COLUMN NewColumn;

SELECT * FROM employees2

--SELECT ID, DEPARTMENT FROM employees1, employees2 WHERE employees1.ID = employees2.ID

--THIRD
-- EXISTS
SELECT Name FROM employees1
WHERE EXISTS (SELECT ID FROM employees2)

--ANY
SELECT Name FROM employees1
WHERE ID = ANY(SELECT ID FROM employees2 WHERE Department = 'Development');

--ALL
SELECT Name FROM employees1
WHERE ID = ALL(SELECT ID FROM employees2 WHERE Department = 'Development');
SELECT Name FROM employees1
WHERE ID = ALL(SELECT ID FROM employees2 WHERE Department = 'R&D');

-- NESTED SUB QUERY
SELECT Name
FROM employees1
WHERE ID IN (SELECT ID FROM employees2);

--CORRELATED SUB QUERY
SELECT Name
FROM employees1 AS E1
WHERE EXISTS (
SELECT 1
FROM employees2 E2
WHERE E2.ID = E1.ID AND E2.Year_of_Experience > 1
);



CREATE TABLE customer (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(255),
ContactName VARCHAR(255),
Address VARCHAR(255),
City VARCHAR(255),
PostalCode VARCHAR(10),
Country VARCHAR(255)
);

-- Insert data into the customers table
INSERT INTO customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain');

SELECT * FROM customer
-- GROUP BY
SELECT CITY,COUNT(CustomerID) FROM customer 
GROUP BY City
-- ORDER BY
SELECT Country, COUNT(CustomerID) FROM customer
GROUP BY Country 
ORDER BY Country DESC
--EXISTS
SELECT Country FROM customer WHERE EXISTS (SELECT CITY,COUNT(CustomerID) FROM customer 
GROUP BY City) GROUP BY Country


CREATE TABLE orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
ShipperID INT,
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)
);

-- Insert into orders table (only records with CustomerID < 30)
INSERT INTO orders (OrderID, CustomerID, OrderDate, ShipperID)
VALUES
(10250, 3, '1996-07-08', 2),
(10253, 3, '1996-07-10', 2),
(10254, 1, '1996-07-11', 2),
(10258, 2, '1996-07-17', 1),
(10259, 1, '1996-07-18', 3),
(10260, 5, '1996-07-19', 1),
(10261, 6, '1996-07-19', 2),
(10263, 20, '1996-07-23', 3),
(10265, 7, '1996-07-25', 1),
(10267, 25, '1996-07-29', 1),
(10269, 9, '1996-07-31', 1),
(10270, 7, '1996-08-01', 1),
(10271, 7, '1996-08-01', 2),
(10272, 5, '1996-08-02', 2),
(10274, 5, '1996-08-06', 1),
(10275, 9, '1996-08-07', 1),
(10276, 8, '1996-08-08', 3),
(10277, 2, '1996-08-09', 3),
(10278,5, '1996-08-12', 2),
(10279, 4, '1996-08-13', 2),
(10280, 5, '1996-08-14', 1),
(10281, 9, '1996-08-14', 1),
(10282, 9, '1996-08-15', 1),
(10284, 4, '1996-08-19', 1),
(10285, 3, '1996-08-20', 2),
(10286, 3, '1996-08-21', 3),
(10287, 7, '1996-08-22', 3),
(10288, 6, '1996-08-23', 1),
(10290, 15, '1996-08-27', 1),
(10291, 1, '1996-08-27', 2),
(10292, 1, '1996-08-28', 2),
(10293, 8, '1996-08-29', 3),
(10294, 5, '1996-08-30', 2),
(10295, 5, '1996-09-02', 2),
(10296, 6, '1996-09-03', 1),
(10297, 7, '1996-09-04', 2),
(10298, 7, '1996-09-05', 2),
(10300, 9, '1996-09-09', 2),
(10301, 6, '1996-09-09', 2),
(10302, 6, '1996-09-10', 2),
(10303, 30, '1996-09-11', 2),
(10304, 9, '1996-09-12', 2),
(10306, 9, '1996-09-16', 3),
(10307, 8, '1996-09-17', 2),
(10308, 2, '1996-09-18', 3),
(10310, 7, '1996-09-20', 2),
(10311, 18, '1996-09-20', 3),
(10313, 6, '1996-09-24', 2),
(10315, 8, '1996-09-26', 2),
(10316, 5, '1996-09-27', 3),
(10319, 8, '1996-10-02', 3),
(10321, 3, '1996-10-03', 2),
(10322, 8, '1996-10-04', 3),
(10323, 9, '1996-10-07', 1),
(10325, 9, '1996-10-09', 3),
(10326, 8, '1996-10-10', 2),
(10327, 24, '1996-10-11', 1),
(10329, 5, '1996-10-15', 2),
(10330, 6, '1996-10-16', 1);

SELECT * FROM customer
--INNER JOIN
SELECT * FROM customer AS C
INNER JOIN orders AS O ON O.CustomerID=C.CustomerID
--LEFT JOIN 
SELECT * FROM customer AS C
LEFT JOIN orders AS O ON O.CustomerID=C.CustomerID
--RIGHT JOIN
SELECT * FROM customer AS C
RIGHT JOIN orders AS O ON O.CustomerID=C.CustomerID
--FULL OUTER JOIN & SELF JOIN
SELECT * FROM customer AS C
FULL OUTER JOIN customer AS O ON O.CustomerID=C.CustomerID
--CROSS JOIN
SELECT * FROM customer 
CROSS JOIN orders 
--NON EQUI JOIN
SELECT * FROM customer AS C
JOIN orders AS O ON O.CustomerID>C.CustomerID

SELECT * FROM orders
--avg()
SELECT Country, AVG(CustomerID) FROM customer
GROUP BY Country
--COUNT()
SELECT COUNTRY,COUNT(cUSTOMERID) FROM customer
GROUP BY Country
--DISTINCT()
SELECT DISTINCT(COUNTRY) FROM customer
--MAX()
SELECT MAX(CustomerID) FROM orders
--MIN()
SELECT MIN(CustomerID) FROM orders
--SUM()
SELECT CUSTOMERID, SUM(CUSTOMERID)/CustomerID FROM orders
GROUP BY CustomerID

SELECT * FROM employees1
-- RULES FOR GROUP BY
--1
SELECT ID,AVG(Year_of_Experience)
FROM employees1
WHERE Salary >30000
GROUP BY ID
ORDER BY AVG(Year_of_Experience) DESC
--2
SELECT e2.ID,AVG(e2.Year_of_Experience)
FROM employees2 as e2 
JOIN employees1 as e1 ON e1.ID=e2.ID 
WHERE e2.Salary>30000
GROUP BY e2.ID
--3
SELECT id,SUM(Salary)
FROM employees1 
WHERE Salary>30000
GROUP BY ID
ORDER BY ID
--4
SELECT id,name,SUM(salary)
FROM employees1
WHERE Salary>30000
GROUP BY ID,Name
ORDER BY ID,Name


-- MATH FUNCTION
SELECT PI()
SELECT POWER(10,2)
SELECT SQRT(36)
SELECT CEILING(10.5),FLOOR(10.5)
SELECT SIGN(10)
SELECT ROUND(10.56,1)
SELECT RAND()

SELECT 10+10,10-5,10*10,10%2

SELECT * FROM customer
--STRING
SELECT CONCAT(CustomerName,'-',ContactName) FROM customer
SELECT UPPER(CustomerName) AS 'UPPER' FROM customer
SELECT LOWER(CustomerName) AS 'LOWER' FROM customer
SELECT CustomerName,CHARINDEX('A',CustomerName) FROM customer;
SELECT CustomerName,LEN(CustomerName) FROM customer;
SELECT CustomerName,PATINDEX('%AR%',CustomerName) FROM customer;
SELECT CustomerName,REPLACE(CustomerName,'K','M') FROM customer;
SELECT CustomerName,REPLICATE(CustomerName,2) FROM customer;
SELECT CustomerName,REVERSE(CustomerName) FROM customer;


--DATE
SELECT GETDATE()
SELECT SYSDATETIME()
SELECT MONTH(GETDATE())
SELECT MONTH(orderdate) FROM orders
SELECT YEAR(orderdate) FROM orders
SELECT DAY(orderdate) FROM orders
SELECT DATENAME(MONTH,orderdate) FROM orders
SELECT DATEPART(MONTH,orderdate) FROM orders
SELECT DATEDIFF(MONTH,orderdate,GETDATE()) FROM orders

SELECT HOST_ID();
/*System functions*/

select host_name() as Host_name;/*return system hostname*/

select Host_ID();/*return host id*/

select SUSER_ID();

select USER_ID();

select DB_NAME();/*return database name*/


CREATE PROCEDURE UK_customer AS BEGIN
SELECT customerid, CustomerName
FROM Customer
WHERE Country = 'UK'
END

EXEC UK_customer

--Rank functions
--row_number
select CustomerID, CustomerName, ROW_NUMBER() OVER ( ORDER BY customerid desc) as rank 
from customer
--row
select CustomerID, CustomerName, RANK() over ( order by customerid) as rank from customer
--dense_row
select CustomerID, CustomerName, dense_rank() over (ORDER BY customerid desc) as rank
from customer


--system functions
SELECT HOST_ID();

select host_name() as Host_name;

select SUSER_ID();

select USER_ID();

select DB_NAME();


--DATA CLEANSING
--CHECK FOR MISSING VALUES
-- IS NULL
SELECT OrderID, OrderDate
FROM orders
WHERE OrderDate IS NULL;
--COALESCE
SELECT ORDERID, COALESCE(ORDERDATE, 'Unknown') AS new_column
FROM ORDERS
--SUB STRING
SELECT SUBSTRING(CustomerName, 1, 10) AS SHORT_NAME
FROM customer;
--TRIM
SELECT TRIM(address) AS trimmed_address
FROM customer;
--CASE WHEN
SELECT ID,
CASE WHEN Salary >= 50000 THEN 'high_salary'
WHEN 20000 <= Salary  THEN 'medium_salary'
ELSE 'low_salary'
END
FROM employees1


--VIEWS
CREATE VIEW german_customers AS
SELECT CustomerID, CustomerName
FROM customer
WHERE Country = 'Germany';
SELECT * FROM german_customers;


--OVER AND PARTITION BY
SELECT ID,Name,
AVG(Salary) OVER() AS "overall average salary",
AVG(Salary) OVER (PARTITION BY department) AS "avg salary by dept"
FROM employees1

SELECT ID,Name,
avg(Salary) OVER() AS "overall average salary"
FROM employees2

SELECT ID,Name,
SUM(Salary) OVER (PARTITION BY department) 
FROM employees2

--sub totals and roll up
CREATE TABLE SalesList(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)

INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)

--1
SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList
GROUP BY ROLLUP(SalesYear)
--2
SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)
--3
SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth)
--Understanding grouping function
SELECT CASE WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1 THEN 'Grand Total'
ELSE CAST(SalesYear AS varchar(10))
END AS SalesYear,SalesQuartes,SUM(SalesTotal) AS SalesTotal
FROM SalesList
GROUP BY ROLLUP(SalesYear,SalesQuartes)
--Calculate subtotal in SQL query only for one column
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID()) AS RowNumber FROM SalesList
--Using GROUPING SET extension as an alternative method
SELECT  SalesQuartes,SalesMonth ,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY GROUPING SETS(SalesQuartes,SalesMonth)

--RegEx
SELECT * FROM customer WHERE CustomerName LIKE '%ar';
SELECT * FROM customer WHERE CustomerName LIKE '_am%';


