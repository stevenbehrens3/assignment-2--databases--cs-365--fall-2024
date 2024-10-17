\W
DROP DATABASE IF EXISTS `password_manager`;
CREATE DATABASE `password_manager` DEFAULT CHARACTER SET utf8mb4;
USE `password_manager`;

CREATE TABLE IF NOT EXISTS user_information (
    database_id        SMALLINT        NOT NULL AUTO_INCREMENT,
    first_name      VARCHAR(20)        NOT NULL,
    last_name       VARCHAR(20)        NOT NULL,
    email           VARCHAR(50)        NOT NULL,
    notes           VARCHAR(500)               ,
    PRIMARY KEY (database_id)
);
