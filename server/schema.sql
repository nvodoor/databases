CREATE DATABASE IF NOT EXISTS chat;

USE chat;

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  id INTEGER NOT NULL AUTO_INCREMENT,
  message VARCHAR(120) NOT NULL COMMENT 'text',
  roomname VARCHAR(30),
  user_id INTEGER NOT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'messages';


DROP TABLE IF EXISTS `users`;
    
CREATE TABLE `users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'usertable';



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

