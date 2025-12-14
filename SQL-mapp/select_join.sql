USE GameStoreDB;

-- I JOIN the customer table and the orders to show which customers have made orders from which store and when
SELECT Customer.Customer_ID, 
Customer.CustomerName, 
Customer.CustomerLastname, 
Customer.CustomerEmail, 
CustomerOrder.Store_ID, 
CustomerOrder.OrderDate
FROM Customer
JOIN CustomerOrder
ON Customer.Customer_ID = CustomerOrder.Customer_ID;

-- This joins 4 tables to show which games and how many of each game, customers have bought
SELECT C.Customer_ID, C.CustomerName, C.CustomerLastname, GCO.Quantity, G.GameName
FROM Customer AS C
LEFT JOIN CustomerOrder AS CO
ON C.Customer_ID = CO.Customer_ID
LEFT JOIN GameCustomerOrder AS GCO
ON CO.CustomerOrder_ID = GCO.CustomerOrder_ID
LEFT JOIN Game as G
ON GCO.Game_ID = G.Game_ID;
