-- This is auto-generated code
SELECT YEAR(OrderDate) YEAR,
APPROX_COUNT_DISTINCT(SalesOrderNumber) as Number_Of_Orders
FROM
    OPENROWSET(
        BULK 'https://datalake9xykopw.dfs.core.windows.net/files/sales/parquet/**',
    -- Wildcard ** used to fetch the data from all the folders in Parquet folder
        FORMAT = 'PARQUET'
    ) AS [result]
GROUP BY YEAR(OrderDate)
ORDER BY 1
;
--Using Partitions to filter data
SELECT YEAR(OrderDate) AS Year,
       COUNT(*) AS OrderedItems
FROM
    OPENROWSET(
        BULK 'https://datalake9xykopw.dfs.core.windows.net/files/sales/parquet/year=*/',
        FORMAT = 'PARQUET'
    ) AS [result]
WHERE [result].filepath(1) IN ('2019', '2020')
GROUP BY YEAR(OrderDate)
ORDER BY 1