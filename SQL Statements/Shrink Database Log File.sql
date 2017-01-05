USE [資料庫名稱]
GO
ALTER DATABASE [資料庫名稱] SET RECOVERY SIMPLE WITH NO_WAIT
DBCC SHRINKFILE (記錄檔邏輯名稱, 1)
ALTER DATABASE [資料庫名稱] SET RECOVERY FULL WITH NO_WAIT
GO

--記錄檔邏輯名稱可以用以下的指令查看
SELECT
	*
FROM sys.database_files