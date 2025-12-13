USE GameStoreDB;

--As I see the game store as physical stores and not online stores I choose to have NOT NULL on the adress parts too.
CREATE TABLE GameStore (
Store_ID INTEGER PRIMARY KEY IDENTITY(1,1),
Street VARCHAR(100) NOT NULL,
City VARCHAR(100) NOT NULL,
Country VARCHAR(100) NOT NULL,
Telephone VARCHAR(20) NOT NULL,
Email VARCHAR(100) NOT NULL
);

CREATE TABLE Game (
Game_ID INTEGER PRIMARY KEY IDENTITY(1,1),
GameName VARCHAR(100) NOT NULL,
GamePlatform VARCHAR(100) NOT NULL,
Publisher VARCHAR(100) NOT NULL,
Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Inventory (
Inventory_ID INTEGER PRIMARY KEY IDENTITY(1,1),
Store_ID INTEGER NOT NULL,
Game_ID INTEGER NOT NULL,
Stock INTEGER NOT NULL DEFAULT 0,
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID),
FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID)
);

-- Phone numbers will have VARCHAR instead of INTEGER so there won't be problems with '0' in the beginning or if other characters are put in like "-"
CREATE TABLE Customer (
Customer_ID INTEGER PRIMARY KEY IDENTITY(1,1),
CustomerName VARCHAR(100) NOT NULL,
CustomerLastname VARCHAR(100) NOT NULL,
CustomerStreet VARCHAR(100) NOT NULL,
CustomerZIP CHAR(5) NOT NULL,
CustomerCity VARCHAR(100)NOT NULL,
CustomerPhone VARCHAR(20) NOT NULL,
PaymentInfo VARCHAR(100) NOT NULL,
CustomerEmail VARCHAR(100) NOT NULL
);

CREATE TABLE CustomerOrder (
CustomerOrder_ID INTEGER PRIMARY KEY IDENTITY(1,1),
Store_ID INTEGER NOT NULL,
Customer_ID INTEGER NOT NULL,
OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE GameCustomerOrder (
GameCustomerOrder_ID INTEGER PRIMARY KEY IDENTITY(1,1),
CustomerOrder_ID INTEGER NOT NULL,
Game_ID INTEGER NOT NULL,
Quantity INTEGER NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL,
FOREIGN KEY (CustomerOrder_ID) REFERENCES CustomerOrder(CustomerOrder_ID),
FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID)
);

CREATE TABLE Employee (
Employee_ID INTEGER PRIMARY KEY IDENTITY(1,1),
Store_ID INTEGER NOT NULL,
JobRole VARCHAR(100) NOT NULL,
EmployeeName VARCHAR(100) NOT NULL,
EmployeeLastname VARCHAR(100) NOT NULL,
EmployeeStreet VARCHAR(100) NOT NULL,
EmployeeZIP CHAR(5) NOT NULL,
EmployeeCity VARCHAR(100) NOT NULL,
EmployeePhone VARCHAR(20) NOT NULL,
EmployeeEmail VARCHAR(100) NOT NULL,
BankInfo VARCHAR(100) NOT NULL,
FOREIGN KEY (Store_ID) REFERENCES GameStore(Store_ID)
);