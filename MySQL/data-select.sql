#mention table column
[table_name].[column_name];

#select data from table
#@SELECT
#@FROM
#@WHERE
#@ORDER BY
#@ASC
#@DESC
#@LIMIT
#@OFFSET
#@AS
#@GROUP BY
SELECT [column_name1] , [column_name2] FROM [table_name];
SELECT * FROM [table_name] WHERE [condition];
SELECT [column_name] FROM [table_name] WHERE [condition] ORDER BY [column_name] ASC;
SELECT [column_name] FROM [table_name] WHERE [condition] ORDER BY [column_name] DESC;
SELECT [column_name] FROM [table_name] WHERE [condition] LIMIT [x] OFFSET [y];
SELECT [column_name] FROM [table_name] WHERE [condition] LIMIT [x] , [y];
SELECT [column_name] AS [temporary_column_name] FROM [table_name] WHERE [condition];
SELECT [column_name] AS [temporary_column_name] , [column_name2] AS [temporary_column_name2] FROM [table_name] WHERE [condition];
SELECT [column_name] FROM [table_name] GROUP BY [column_name];