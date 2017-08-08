#REGEXP
#SELECT `string` REGEXP `pattern`
SELECT 'Abolfazl' REGEXP '^[A-Z]+(bolfazl)+';
#REGEX BINARY
SELECT 'a' REGEXP 'A';
SELECT 'a' REGEXP BINARY 'A';
#use \\ for special character
SELECT 'a+b' REGEXP 'a\\+b';