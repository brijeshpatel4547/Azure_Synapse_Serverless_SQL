-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datalake9xykopw.dfs.core.windows.net/files/sales/csv/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    )
    WITH (
        Sales_Order_Num VARCHAR(10) COLLATE Latin1_General_100_BIN2_UTF8,
        Sales_Order_Line_Num INT,
        Order_Date DATE,
        Customer_Name VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
        Customer_email VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
        Item VARCHAR(30) COLLATE Latin1_General_100_BIN2_UTF8,
        Quantiry INT,
        UnitPrice DECIMAL(18,2),
        TaxAmount DECIMAL(18,2)
    )AS [result]
