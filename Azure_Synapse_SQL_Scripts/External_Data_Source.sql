CREATE DATABASE Sales
COLLATE Latin1_General_100_BIN2_UTF8;
GO;

USE Sales;

CREATE EXTERNAL DATA SOURCE sales_data WITH(
    LOCATION = 'https://datalake9xykopw.dfs.core.windows.net/files/sales/'
);
GO;