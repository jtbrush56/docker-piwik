# mysql -u root -p

-- Create a new piwik database
CREATE DATABASE piwik CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Create a local and a remote user
CREATE USER piwik@'localhost' IDENTIFIED BY 'password';
CREATE USER piwik@'%' IDENTIFIED BY 'password';

-- Grant users permissions
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON piwik.* TO 'piwik'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON piwik.* TO 'piwik'@'%';

-- Flush privileges
FLUSH PRIVILEGES;
