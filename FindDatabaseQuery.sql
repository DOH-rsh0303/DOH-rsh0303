-- Use this script in a Multi connected CMS query to find which instances contain a given Database name.
-- Replace the name of the database below with the DB you are trying to find.
declare 
	@DBName varchar(128)
set @DBName = '%Rad_%'


IF EXISTS (select * from master.sys.databases where name like @DBName)
	select @@Servername + '  has a/an  ' + @DBName + '  DB.'
ELSE
	select '---  Nope ---'
GO