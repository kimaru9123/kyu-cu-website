-- MySQL Workbench Synchronization
-- Generated: 2019-08-20 11:56
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: digio

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `cudb`.`admin` 
ADD COLUMN `user_fk_user_id` INT(11) NOT NULL AFTER `admin_type`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`admin_id`, `user_fk_user_id`),
ADD INDEX `fk_admin_user1_idx` (`user_fk_user_id` ASC);
;

ALTER TABLE `cudb`.`admin` 
ADD CONSTRAINT `fk_admin_user1`
  FOREIGN KEY (`user_fk_user_id`)
  REFERENCES `cudb`.`user` (`user_id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
