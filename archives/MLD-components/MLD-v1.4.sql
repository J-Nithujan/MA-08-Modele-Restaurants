-- MySQL Script generated by MySQL Workbench
-- Mon Dec 27 15:51:17 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`locations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`locations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(60) NOT NULL,
  `ZIP` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_area` (`city` ASC, `ZIP` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`restaurants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `road` VARCHAR(45) NOT NULL,
  `regular_schedule` TEXT NULL COMMENT 'We expect this field to contain regular and holidays schedule',
  `location_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_restaurant` (`name` ASC, `road` ASC),
  INDEX `fk_restaurants_locations1_idx` (`location_id` ASC),
  CONSTRAINT `fk_restaurants_locations1`
    FOREIGN KEY (`location_id`)
    REFERENCES `mydb`.`locations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dishes_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dishes_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dishes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dishes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) NOT NULL,
  `description` VARCHAR(255) NULL,
  `base_price` DECIMAL NULL,
  `sale_price` DECIMAL NULL,
  `dish_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_dishes_dishes_types1_idx` (`dish_type_id` ASC),
  CONSTRAINT `fk_dishes_dishes_types1`
    FOREIGN KEY (`dish_type_id`)
    REFERENCES `mydb`.`dishes_types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`measurement_units`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`measurement_units` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ingredients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `quantity` INT NULL,
  `price` DECIMAL NULL,
  `measurement_unit_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC),
  INDEX `fk_ingredients_unit_of_measure1_idx` (`measurement_unit_id` ASC),
  CONSTRAINT `fk_ingredients_unit_of_measure1`
    FOREIGN KEY (`measurement_unit_id`)
    REFERENCES `mydb`.`measurement_units` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`restaurant_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurant_types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `description` VARCHAR(255) NULL COMMENT 'Entered by admins of the site. Should be kept simple to guide users broadly',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`allergens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`allergens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `description` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`order_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `reference` VARCHAR(60) NOT NULL COMMENT 'QUESTION : Dans le MLD ça ne semble pas nécessaire (contrairement au MCD). \n\nreference no prendrait bcp de place en mémoire (car bcp de order details par rapport au nb de orders) ?\nsimplement utiliser « id » (quitte à afficher en hexadecimal) ?\n',
  `dish_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique id_UNIQUE` (`reference` ASC),
  INDEX `fk_ordered dish descriptions_dishes1_idx` (`dish_id` ASC),
  CONSTRAINT `fk_ordered dish descriptions_dishes1`
    FOREIGN KEY (`dish_id`)
    REFERENCES `mydb`.`dishes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(254) NOT NULL,
  `firstname` VARCHAR(60) NULL,
  `lastname` VARCHAR(60) NULL,
  `password` VARCHAR(100) NULL,
  `birthdate` DATE NULL,
  `road` VARCHAR(45) NULL,
  `location_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  INDEX `fk_users_locations1_idx` (`location_id` ASC),
  CONSTRAINT `fk_users_locations1`
    FOREIGN KEY (`location_id`)
    REFERENCES `mydb`.`locations` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reviews` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(60) NOT NULL,
  `publication_date` DATETIME NOT NULL,
  `description` TEXT NULL,
  `rating` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_review` (`title` ASC, `publication_date` ASC),
  INDEX `fk_reviews_restaurants1_idx` (`restaurant_id` ASC),
  INDEX `fk_reviews_users1_idx` (`user_id` ASC),
  CONSTRAINT `fk_reviews_restaurants1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `mydb`.`restaurants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reviews_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order number` INT NOT NULL COMMENT 'QUESTION : Doublon ? On peut juste garder « id », à moins d’utiliser cette colonne pour obfusquer le no de commande réel (et éviter les mauvaises blagues d’escrocs mal intentionnés),',
  `date_and_time` DATETIME NULL,
  `user_id` INT NOT NULL,
  `sale_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `order number_UNIQUE` (`order number` ASC),
  INDEX `fk_orders_users1_idx` (`user_id` ASC),
  INDEX `fk_orders_sales1_idx` (`sale_id` ASC),
  CONSTRAINT `fk_orders_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_sales1`
    FOREIGN KEY (`sale_id`)
    REFERENCES `mydb`.`sales` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`restaurants_have_sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurants_have_sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `restaurant_id` INT NOT NULL,
  `sale_id` INT NOT NULL,
  `percentage` INT NOT NULL,
  `start` DATETIME NOT NULL,
  `end` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_restaurants_has_sales_sales1_idx` (`sale_id` ASC),
  INDEX `fk_restaurants_has_sales_restaurants_idx` (`restaurant_id` ASC),
  CONSTRAINT `fk_restaurants_has_sales_restaurants`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `mydb`.`restaurants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_restaurants_has_sales_sales1`
    FOREIGN KEY (`sale_id`)
    REFERENCES `mydb`.`sales` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`restaurants_have_dishes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurants_have_dishes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `restaurant_id` INT NOT NULL,
  `dish_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_restaurants_has_dishes_dishes1_idx` (`dish_id` ASC),
  INDEX `fk_restaurants_has_dishes_restaurants1_idx` (`restaurant_id` ASC),
  CONSTRAINT `fk_restaurants_has_dishes_restaurants1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `mydb`.`restaurants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_restaurants_has_dishes_dishes1`
    FOREIGN KEY (`dish_id`)
    REFERENCES `mydb`.`dishes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dishes_has_allergens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dishes_has_allergens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dish_id` INT NOT NULL,
  `allergen_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dishes_has_allergens_allergens1_idx` (`allergen_id` ASC),
  INDEX `fk_dishes_has_allergens_dishes1_idx` (`dish_id` ASC),
  CONSTRAINT `fk_dishes_has_allergens_dishes1`
    FOREIGN KEY (`dish_id`)
    REFERENCES `mydb`.`dishes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dishes_has_allergens_allergens1`
    FOREIGN KEY (`allergen_id`)
    REFERENCES `mydb`.`allergens` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`dishes_have_ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dishes_have_ingredients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dish_id` INT NOT NULL,
  `ingredient_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_dishes_has_ingredients_ingredients1_idx` (`ingredient_id` ASC),
  INDEX `fk_dishes_has_ingredients_dishes1_idx` (`dish_id` ASC),
  CONSTRAINT `fk_dishes_has_ingredients_dishes1`
    FOREIGN KEY (`dish_id`)
    REFERENCES `mydb`.`dishes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_dishes_has_ingredients_ingredients1`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `mydb`.`ingredients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`restaurants_has_types_of_restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`restaurants_has_types_of_restaurant` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `restaurant_id` INT NOT NULL,
  `restaurant_type_id` INT NOT NULL,
  INDEX `fk_restaurants_has_types_of_restaurant_types_of_restaurant1_idx` (`restaurant_type_id` ASC),
  INDEX `fk_restaurants_has_types_of_restaurant_restaurants1_idx` (`restaurant_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_restaurants_has_types_of_restaurant_restaurants1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `mydb`.`restaurants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_restaurants_has_types_of_restaurant_types_of_restaurant1`
    FOREIGN KEY (`restaurant_type_id`)
    REFERENCES `mydb`.`restaurant_types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`users_have_restaurants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users_have_restaurants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `restaurant_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_has_restaurants_restaurants1_idx` (`restaurant_id` ASC),
  INDEX `fk_users_has_restaurants_users1_idx` (`user_id` ASC),
  CONSTRAINT `fk_users_has_restaurants_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_restaurants_restaurants1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `mydb`.`restaurants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`order_details_have_ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`order_details_have_ingredients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_detail_id` INT NOT NULL,
  `ingredient_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_order_details_has_ingredients_ingredients1_idx` (`ingredient_id` ASC),
  INDEX `fk_order_details_has_ingredients_order_details1_idx` (`order_detail_id` ASC),
  CONSTRAINT `fk_order_details_has_ingredients_order_details1`
    FOREIGN KEY (`order_detail_id`)
    REFERENCES `mydb`.`order_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_details_has_ingredients_ingredients1`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `mydb`.`ingredients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`orders_have_order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`orders_have_order_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `order_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_has_order_details_order_details1_idx` (`order_detail_id` ASC),
  INDEX `fk_orders_has_order_details_orders1_idx` (`order_id` ASC),
  CONSTRAINT `fk_orders_has_order_details_orders1`
    FOREIGN KEY (`order_id`)
    REFERENCES `mydb`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_has_order_details_order_details1`
    FOREIGN KEY (`order_detail_id`)
    REFERENCES `mydb`.`order_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
