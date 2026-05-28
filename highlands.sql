CREATE DATABASE Manage_products_at_Highlands_coffee
GO

USE Manage_products_at_Highlands_coffee
GO

CREATE TABLE Product 
(
	Product_ID INT PRIMARY KEY,
	ProductName  NVARCHAR(50),
	Price INT, 
	Category NVARCHAR(20),
	Ingredient_ID INT,
);
GO
insert INTO dbo.Product
(
    Product_ID,
    ProductName,
    Price,
    Category,
    Ingredient_ID
)
VALUES 
 
	(1, N'PHIN Sữa Đá', 29000, N'Cà phê pha Phin', 1),
	(2, N'PHIN Đen Đá', 29000, N'Cà phê pha Phin', 1),
	(3, N'Bạc Xỉu Đá', 29000, N'Cà phê pha Phin', 1),
	(4, N'PhinDi Kem Sữa', 39000, 'Phindi', 1),
	(5, N'PhinDi Hạnh Nhân', 39000, 'Phindi', 1),
	(6, 'PhinDi Choco', 39000, 'Phindi', 6),
	(7, 'Espresso', 35000, 'Espresso', 1),
	(8, 'Americano', 35000, 'Espresso', 1),
	(9, 'Cappuccino', 55000, 'Espresso', 1),
	(10, 'Latte', 55000, 'Espresso', 1),
	(11, 'Mocha', 59000, 'Espresso', 3),
	(12, 'Caramel Macchiato', 59000, 'Espresso', 12),
	(13, N'Trà Sen Vàng', 39000, N'Trà', 2),
	(14, N'Trà Thạch Đào', 39000, N'Trà', 11),
	(15, N'Trà Thanh Đào', 39000, N'Trà', 8),
	(16, N'Trà Thạch Vải', 39000, N'Trà', 9),
	(17, N'Trà Xanh Đậu Đỏ', 39000, N'Trà', 7),
	(18, N'Freeze Trà Xanh', 49000, 'Freeze', 10),
	(19, N'Freeze Sô-cô-la', 49000, 'Freeze', 6),
	(20, 'Cookies & Cream', 49000, 'Freeze', 3),
	(21, 'Caramel Phin Freeze', 49000, 'Freeze', 12),
	(22, N'Chanh đá xay/ Đá Viên', 39000, N'Thức uống khác', 17),
	(23, N'Tắc/ Quất Đá Viên', 39000, N'Thức uống khác', 18),
	(24, N'Sô-Cô-La', 55000, N'Thức uống khác', 6),
	(25, 'Tiramisu', 29000, N'Bánh', 3),
	(26, N'Bánh Chuối', 29000, N'Bánh', 14),
	(27, N'Mousse Đào', 29000, N'Bánh', 16),
	(28, 'Mousse Cacao', 29000, N'Bánh', 16),
	(29, N'Phô Mai Trà Xanh', 29000, N'Bánh', 13),
	(30, N'Phô Mai Chanh Dây' ,29000, N'Bánh', 19),
	(31, N'Phô Mai Cà Phê', 29000, N'Bánh', 1),
	(32, N'Phô Mai Caramel', 29000, N'Bánh', 12),
	(33, N'Sô-Cô-La Highlands', 29000, N'Bánh', 6);

GO 
CREATE TABLE Ingredient 
(
	Ingredient_ID INT FOREIGN KEY(Ingredient_ID) REFERENCES dbo.Product,
	IngredientName NVARCHAR(30),
	Quantity NVARCHAR(10),
	Supplier NVARCHAR(50)
);
GO
insert INTO dbo.Ingredient
(
    Ingredient_ID,
    IngredientName,
    Quantity,
    Supplier
)
VALUES
	(1, N'Hạt cà phê nguyên chất', '50Kg', N'Nhà cung cấp Cà phê Việt Nam'),
	(2, N'Lá trà', '10Kg', N'Nhà cung cấp trà'),
	(3, N'Sữa tươi đóng hộp', N'20 hộp', N'Nhà cung cấp sữa Dalatmilk'),
	(4, N'Bột kem', '10Kg', N'Nhà cung cấp Bột làm bánh'),
	(5, N'Hạnh nhân', '15Kg', N'Nhà cung cấp Hạt'),
	(6, N'Sô-cô-la', '25Kg', N'Nhà cung cấp Cacao'),
	(7, N'Đậu đỏ', '10Kg', N'Nhà cung cấp Hạt'),
	(8, N'Đào', '35Kg', N'Nhà cung cấp Hoa quả'),
	(9, N'Vải','35Kg', N'Nhà cung cấp Hoa quả'),
	(10, N'Trà xanh', '10Kg', N'Nhà cung cấp trà'),
	(11, N'Thạch đào', '10Kg', N'Nhà cung cấp Thạch'),
	(12, 'Caramel', '15Kg', N'Nhà cung cấp Thạch'),
	(13, N'Phô mai', '15Kg', N'Nhà cung cấp Kem Tràng Tiền'),
	(14, N'Chuối', '35Kg', N'Nhà cung cấp Hoa quả'),
	(15, N'Cacao', '15Kg', N'Nhà cung cấp Cacao'),
	(16, N'Mousse', '20Kg', N'Nhà cung cấp Kem Tràng Tiền'),
	(17, N'Chanh', '35Kg', N'Nhà cung cấp Hoa quả'),
	(18, N'Quất/Tắc', '35kg', N'Nhà cung cấp hoa quả'),
	(19, N'Chanh dây', '35Kg', N'Nhà cung cấp Hoa quả'),
	(20, N'Hạt sen', '10Kg', N'Nhà cung cấp Hạt');
GO 