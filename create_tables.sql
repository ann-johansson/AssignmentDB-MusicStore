USE GameStoreDB;

CREATE TABLE GameStore (
Store_ID INTEGER PRIMARY KEY,
Street VARCHAR(100),
City VARCHAR(100),
Country VARCHAR(100),
Telephone VARCHAR(20),
Email VARCHAR(100)
);

CREATE TABLE Game (
Game_ID INTEGER PRIMARY KEY,
GameName VARCHAR(100),
GamePlatform VARCHAR(100),
Publisher VARCHAR(100),
Price DECIMAL(10,2)
);

CREATE TABLE Inventory (
Inventory_ID INTEGER PRIMARY KEY,
Store_ID INTEGER,
Game_ID INTEGER,
Stock INTEGER,
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID),
FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID)
);

CREATE TABLE Customer (
Customer_ID INTEGER PRIMARY KEY,
CustomerName VARCHAR(100),
CustomerLastname VARCHAR(100),
CustomerStreet VARCHAR(100),
CustomerZIP CHAR(5),
CustomerCity VARCHAR(100),
CustomerPhone VARCHAR(20),
PaymentInfo VARCHAR(100),
CustomerEmail VARCHAR(100)
);

CREATE TABLE CustomerOrder (
CustomerOrder_ID INTEGER PRIMARY KEY,
Store_ID INTEGER,
Customer_ID INTEGER,
OrderDate TIMESTAMP,
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE GameCustomerOrder (
GameCustomerOrder_ID INTEGER PRIMARY KEY,
CustomerOrder_ID INTEGER,
Game_ID INTEGER,
Quantity INTEGER,
TotalPrice DECIMAL(10,2),
FOREIGN KEY (CustomerOrder_ID) REFERENCES CustomerOrder(CustomerOrder_ID),
FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID)
);

CREATE TABLE Employee (
Employee_ID INTEGER PRIMARY KEY,
Store_ID INTEGER,
JobRole VARCHAR(100),
EmployeeName VARCHAR(100),
EmployeeLastname VARCHAR(100),
EmployeeStreet VARCHAR(100),
EmployeeZIP CHAR(5),
EmployeeCity VARCHAR(100),
EmployeePhone VARCHAR(20),
EmployeeEmail VARCHAR(100),
BankInfo VARCHAR(100),
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID)
);