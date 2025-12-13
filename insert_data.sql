USE GameStoreDB;

INSERT INTO Customer (
CustomerName, CustomerLastname, CustomerStreet, CustomerZIP, CustomerCity, CustomerPhone, PaymentInfo, CustomerEmail)
VALUES 
('Henrietta', 'Hansson', 'Hamngatan 1', '12345', 'Falköping', '070-1234567', 'VISA-9876', 'henny@penny.com'),
('Erik', 'Lindgren', 'Björnvägen 22', '45678', 'Göteborg', '072-9876543', 'Master-1122', 'erik.l@mail.se'),
('Olle', 'Persson', 'Kungsallén 5', '77788', 'Malmö', '076-1110099', 'Faktura', 'persson_o@online.net'),
('Maria', 'Jönsson', 'Åkersvägen 7', '65432', 'Uppsala', '070-0012345', 'Amex-4455', 'maria.j@uppsala.nu'),
('Viktor', 'Svensson', 'Solvägen 8', '90909', 'Luleå', '079-8877665', 'Klarna', 'viktor.s@norr.se');

INSERT INTO GameStore (
Street, City, Country, Telephone, Email)
VALUES
('Kungsgatan 12', 'Stockholm', 'Sweden', '08-1112233', 'sthlm@gamestore.se'),
('Lilla Torg 5', 'Malmö', 'Sweden', '040-998877', 'malmo@gamestore.se');

INSERT INTO Game (
GameName, GamePlatform, Publisher, Price)
VALUES
('Cyberpunk 2077', 'PC', 'CD Projekt RED', 499.50),
('Elden Ring', 'PS5', 'Bandai Namco', 599.00),
('The Sims 4', 'PC', 'Electronic Arts', 299.00),
('Call of Duty: Modern Warfare', 'XBOX', 'Activision', 699.00),
('Minecraft', 'Switch', 'Mojang', 199.90);

INSERT INTO Inventory (
Store_ID, Game_ID, Stock)
VALUES
(1, 1, 50),
(1, 2, 20),
(1, 3, 15),
(1, 4, 30),
(1, 5, 45),
(2, 1, 10),
(2, 2, 5),
(2, 3, 25),
(2, 4, 15),
(2, 5, 30);

INSERT INTO CustomerOrder (
Store_ID, Customer_ID)
VALUES
(1, 3),
(2, 5),
(1, 1),
(2, 4),
(1, 2);

INSERT INTO GameCustomerOrder (
CustomerOrder_ID, Game_ID, Quantity, TotalPrice)
VALUES
(1, 1, 1, 499.50),
(2, 2, 1, 599.00),
(2, 3, 2, 598.00),
(3, 5, 1, 199.90),
(4, 4, 1, 699.00),
(5, 1, 1, 499.50),
(5, 5, 1, 199.90);

INSERT INTO Employee (
Store_ID, JobRole, EmployeeName, EmployeeLastname, EmployeeStreet, EmployeeZIP, EmployeeCity, EmployeePhone, EmployeeEmail, BankInfo)
VALUES
(1, 'Manager', 'Adam', 'Berg', 'Storgatan 1', '10111', 'Stockholm', '070-1112233', 'adam.b@game.se', 'Swedbank-999'),
(1, 'Sales Associate', 'Frida', 'Nilsson', 'Långa Gatan 3', '10111', 'Stockholm', '070-4445566', 'frida.n@game.se', 'Nordea-888'),
(2, 'Manager', 'Linda', 'Åkesson', 'Södergatan 10', '20222', 'Malmö', '076-7778899', 'linda.a@game.se', 'Handelsbanken-777');