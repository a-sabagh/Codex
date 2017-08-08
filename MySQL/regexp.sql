#REGEXP
#SELECT `string` REGEXP `pattern`
SELECT 'Abolfazl' REGEXP '^[A-Z]+(bolfazl)+';
SELECT username FROM users WHERE username REGEXP ".+";
SELECT username FROM users WHERE username REGEXP "(al).i";
SELECT username FROM users WHERE username REGEXP "(al)?k";
SELECT username FROM users WHERE username REGEXP "(al)+k"
#REGEX BINARY
SELECT 'a' REGEXP 'A';
SELECT 'a' REGEXP BINARY 'A';
#use \\ for special character
SELECT 'a+b' REGEXP 'a\\+b';
#[[:alnum:]]
SELECT * FROM users WHERE username REGEXP "^[[:alnum:]]+$";
SELECT * FROM users WHERE username REGEXP "[[:alnum:]]+";
#[[:alpha:]]
SELECT * FROM users WHERE username REGEXP "[[:alpha:]]+";
SELECT * FROM users WHERE username REGEXP "^[[:alpha:]]+$";
#[[:digit:]]
SELECT * FROM users WHERE username REGEXP "[[:digit:]]+";
#[[:lower:]]
SELECT * FROM users WHERE username REGEXP "[[:lower:]]+";
#[[:upper:]]
SELECT * FROM users WHERE username REGEXP "[[:upper:]]+";
#[[:space:]]
SELECT * FROM users WHERE username REGEXP "[[:space:]]+";
#[[:punct:]]
SELECT * FROM users WHERE username REGEXP "[[:punct:]]+";
#NOT REGEXP
SELECT * FROM users WHERE username NOT REGEXP "[[:alnum:]]+[[:alpha:]]+"
SELECT * FROM users WHERE username NOT REGEXP "[[:punct:]]+";
SELECT * FROM users WHERE username NOT REGEXP "[[:alnum:]]";
SELECT * FROM users WHERE username NOT REGEXP "^[[:alnum:]]+[[:alpha:]]+$";