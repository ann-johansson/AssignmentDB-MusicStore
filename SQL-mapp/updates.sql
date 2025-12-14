USE GameStoreDB;

-- It's a sale and two of the games prices is going down by 150
UPDATE Game 
SET Price = Price - 150 
WHERE Game_ID IN (2, 4);

-- One customer have changed their phone number
UPDATE Customer
SET CustomerPhone = '012-345678'
WHERE Customer_ID = 3;
