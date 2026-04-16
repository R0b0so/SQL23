CREATE TABLE IF NOT EXISTS Salesman (
    Salesman_ID TEXT PRIMARY KEY,
    Name TEXT,
    City TEXT,
    commission REAL
);

INSERT INTO Salesman(Salesman_ID,Name,City,commission) VALUES
("501","James","New_York",0.15),
("502","Neil","Paris",0.11),
("503","Paul","London",0.14);

SELECT * FROM Salesman;

CREATE TABLE IF NOT EXISTS Orders (
    Order_No INTEGER,
    Purchase_Amount REAL,
    Order_Date TEXT,
    Customer_ID TEXT,
    Salesman_ID TEXT
);

INSERT INTO Orders(Order_No,Purchase_Amount,Order_Date,Customer_ID,Salesman_ID) VALUES
(701,150.5,"5-02-2025","305","502"),
(702,100.5,"5-12-2025","307","501"),
(703,170.5,"5-22-2025","309","503");

SELECT * FROM Orders;