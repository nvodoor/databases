CREATE DATABASE IF NOT EXISTS chat;

USE chat;

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE messages (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  message VARCHAR(120) NULL DEFAULT NULL COMMENT 'text',
  room_id INTEGER NULL DEFAULT NULL,
  user_id INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'messages';


/* Create other tables and define schemas for them here! */

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'rooms'
-- 
-- ---

DROP TABLE IF EXISTS `rooms`;
    
CREATE TABLE `rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` VARCHAR(20) NULL DEFAULT NULL COMMENT 'Room',
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
-- usertable
-- ---

DROP TABLE IF EXISTS `users`;
    
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'usertable';

-- ---
-- Table 'messages'
-- messages
-- ---


-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (room_id) REFERENCES `rooms` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`text`,`room_id`,`user_id`) VALUES
-- ('','','','');




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

