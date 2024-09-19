
CREATE PROCEDURE SP_GetProductSalesDetails
AS
BEGIN
    SELECT 
        p.ProductID,                             
        p.ProductName,                           
        YEAR(s.SaleDate) AS SaleYear,            
        SUM(s.Quantity * p.ProductPrice) AS TotalSalesAmount, 
        SUM(s.Quantity) AS TotalQuantitySold,
        COUNT(s.SaleID) AS TotalSales            
    FROM 
        Sales s                                  
    JOIN 
        Products p ON s.ProductID = p.ProductID  
    GROUP BY 
        p.ProductID,                             
        p.ProductName,                           
        YEAR(s.SaleDate)                         
    ORDER BY 
        TotalSalesAmount DESC;                  
END;
GO

EXEC SP_GetProductSalesDetails;



