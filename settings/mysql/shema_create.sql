CREATE USER INETSHOP@localhost IDENTIFIED BY 'INETSHOP';
GRANT ALL ON db1.* TO INETSHOP@localhost;
CREATE DATABASE `etc` CHARACTER SET utf8;
GRANT ALL privileges On etc.* to INETSHOP@localhost;
use etc;