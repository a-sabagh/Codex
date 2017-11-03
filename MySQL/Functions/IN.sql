#Select Multiple Ids from a table
#@IN
SELECT * FROM [table_name] WHERE [column_name] IN([columns_name]);
#example
SELECT * FROM info WHERE id IN ('1','2','3','4','5')