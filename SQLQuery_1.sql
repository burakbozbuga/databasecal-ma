
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    ProductPrice DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName,ProductPrice) VALUES
(1, 'Laptop', 1500.00),
(2, 'Mouse', 25.00),
(3, 'Keyboard', 45.00);
SELECT * FROM Products;