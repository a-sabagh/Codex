#show table status
SHOW TABLE STATUS FROM [db_name]

#mention table column
[table_name]([column_name]);

#create table 
#@IF NOT EXIST
#@NOT NULL
#@AUTO_INCREMENT
#@DEFAULT '[default_value]'
#@PRIMARY KEY([field name])
#@FOREIGN KEY ([column_name_foreign]) REFERENCES [table_name]([column_name_primary])
#@ON DELETE [reference_option]
#@ON UPDATE [reference_option]
#reference_option: RESTRICT | CASCADE | SET NULL | NO ACTION | SET DEFAULT
CREATE TABLE IF NOT EXISTS [table_name](
	[column_name] [type] NOT NULL AUTO_INCREMENT,
	[column_name] [type] NOT NULL DEFAULT '[default_value]',
	PRIMARY KEY ([column_name]),
	FOREIGN KEY ([column_name_foreign]) REFERENCES [table_name]([column_name_primary]) ON DELETE CASCADE
);

#alter table
#@ADD
#@DROP
#@MODIFY
#@CHANGE
#@COLUMN
#@FIRST
#@AFTER
#@DROP
ALTER TABLE [table_name] ADD COLUMN [column_name] [type] FIRST 
ALTER TABLE [table_name] ADD COLUMN [column_name] [type] FIRST [column_name] 
ALTER TABLE [table_name] ADD COLUMN [column_name] [type] AFTER [column_name]
ALTER TABLE [table_name] DROP PRIMARY KEY ADD PRIMARY KEY([column_name]) 
ALTER TABLE [table_name] DROP FOREIGN KEY ADD FOREIGN KEY([column_name]) REFERENCES [table_name]([column_name]) ON DELETE [references_option] ON UPDATE [references_option]
ALTER TABLE [table_name] MODIFY COLUMN [column_name] [type] 
ALTER TABLE [table_name] CHANGE COLUMN [column_name] [type] FIRST|AFTER [column_name] 
ALTER TABLE [table_name] RENAME [table_new_name]

#drop table
#@DROP
#@IF EXISTS
DROP TABLE IF EXISTS [table_name]