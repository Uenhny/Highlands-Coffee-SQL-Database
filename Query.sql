USE Manage_products_at_Highlands_coffee
GO
1, Show full product information
SELECT Product_ID,ProductName,Quantity,Price,Category,IngredientName,Supplier
FROM dbo.Product, dbo.Ingredient
WHERE Ingredient.Ingredient_ID=Product.Ingredient_ID

2, Select the top 5 products that have the highest price in descending order
SELECT top (5)* from Product 
ORDER BY Price DESC

3, Show the types of cakes and their price 
SELECT ProductName, Price
FROM dbo.Product
WHERE Category = N'Bánh'

4, Add some new items
INSERT INTO dbo.Product
( Product_ID,  ProductName, Price, Category, Ingredient_ID)
VALUES
(34, N'Mousse Sô-cô-la', 55000, 'Bánh', 6),
(35, N'Quất lắc sữa', 44000, N'Thức uống khác',18),
(36, N'Nước chanh dây', 39000, N'Thức uống khác',19);

5, Update prices of coffee
UPDATE dbo.Product
SET Price=30000
WHERE Category = N'Cà phê pha Phin';

6, List products with quantity under 20kg
SELECT * 
FROM dbo.Ingredient
WHERE CAST(REPLACE(REPLACE(Quantity, 'Kg', ''), N'hộp', '') AS INT) < 20;

7, Count the number of products in each category
SELECT Category, 
COUNT(*) AS Product_Count 
FROM dbo.Product 
GROUP BY Category;

8, Total quantity of products from each supplier
SELECT Supplier, 
COUNT(*) AS Product_Count
FROM dbo.Ingredient
GROUP BY Supplier;

9, Find all products with inventory value (price × quantity) above 1,500,000
SELECT ProductName,IngredientName, 
       (Price * TRY_CAST(REPLACE(REPLACE(Quantity, 'Kg', ''), 'hộp', '') AS INT)) AS Revenue
FROM dbo.Ingredient,dbo.Product
WHERE Ingredient.Ingredient_ID=Product.Ingredient_ID
 AND (Price * TRY_CAST(REPLACE(REPLACE(Quantity, 'Kg', ''), 'hộp', '') AS INT)) > 1500000;

 10, Total assumed revenue if all products are sold OUT
SELECT SUM(Price * TRY_CAST(REPLACE(REPLACE(Quantity, 'Kg', ' '), 'hộp', '') AS INT)) AS Total_Revenue
FROM dbo.Product, dbo.Ingredient
WHERE Ingredient.Ingredient_ID=Product.Ingredient_ID
