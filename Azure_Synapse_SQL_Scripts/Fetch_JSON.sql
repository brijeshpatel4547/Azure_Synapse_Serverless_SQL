-- This is auto-generated code
SELECT JSON_VALUE(Doc,'$.SalesOrderNumber') AS OrderNum,
JSON_VALUE(Doc,'$.CustomerName') As Customer
FROM
    OPENROWSET(
        BULK 'https://datalake9xykopw.dfs.core.windows.net/files/sales/json/**',
        FORMAT = 'CSV',
        FIELDTERMINATOR = '0x0b',
        ROWTERMINATOR = '0x0b',
        FIELDQUOTE = '0x0b'
    ) WITH(Doc nvarchar(MAX)) AS rows
