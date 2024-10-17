CREATE PROCEDURE INSERT_OR_UPDATE(
   IN website_name VARCHAR(150),
   IN website_url VARCHAR(500),
   IN first_name VARCHAR(30),
   IN last_name VARCHAR(30),
   IN username VARCHAR(30),
   IN email VARCHAR(50),
   IN password VARCHAR(30),
   IN comments VARCHAR(1500)
   )
   
BEGIN
INSERT INTO user (first_name, last_name, email)
VALUES (first_name, last_name, email)
ON DUPLICATE KEY UPDATE first_name = VALUES(first_name), last_name = VALUES(last_name);
INSERT INTO website (website_name, website_url)
VALUES (website_name, website_url)
ON DUPLICATE KEY UPDATE website_name = VALUES(website_name)
