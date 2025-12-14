USE GameStoreDB;

-- Show all customers
SELECT * FROM Customer;

-- Show all employees first name and their job role
SELECT EmployeeName, JobRole
FROM Employee;

-- Shows all games that cost less than 500
SELECT * FROM Game
WHERE Price < 500;

-- Sorting all games in a descending order by their publishers
SELECT * FROM Game
ORDER BY Publisher DESC;

-- Choses all who have "ns" inside their last names
SELECT * FROM Customer
WHERE CustomerLastname LIKE '%ns%';

-- Counts all the games that are made for specific platforms (it is grouped by platforms)
SELECT COUNT(GameName) AS NumberOfGames, GamePlatform
FROM Game
GROUP BY GamePlatform