USE GameStoreDB;

-- One of the customers have chosen to delete an order of a game
DELETE FROM GameCustomerOrder 
WHERE GameCustomerOrder_ID = 3;