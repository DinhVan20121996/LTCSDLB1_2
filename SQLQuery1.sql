USE ONLINE_SHOP

GO
IF OBJECT_ID('USPCau1', 'P') IS NOT NULL
	DROP PROC USPCau1
GO
CREATE PROC USPCau1
	@a float,
	@b float,
	@tong float OUT
AS
	--RETURN (@a + @b)
	SET @tong = @a + @b
GO
DECLARE @x float = 6.3 , @y float = 5.4, @tong float = 0
EXEC  USPCau1 @x, @y, @tong OUT
--PRINT N'tổng 2 số x và y là : ' + CAST(@tong AS varchar)
PRINT CAST(@x AS varchar)+ ' + ' + CAST(@y AS varchar) + ' = ' + CAST(@tong AS varchar)