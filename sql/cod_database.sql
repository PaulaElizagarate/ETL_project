-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema polluted_countries
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema polluted_countries
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `polluted_countries` DEFAULT CHARACTER SET utf8 ;
USE `polluted_countries` ;

-- -----------------------------------------------------
-- Table `polluted_countries`.`polluted_countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polluted_countries`.`polluted_countries` (
  `idpolluted_countries` INT NOT NULL,
  `Country/Region` VARCHAR(200) NOT NULL,
  `2021` DECIMAL(20) NULL,
  `2020` DECIMAL(20) NULL,
  `2019` DECIMAL(20) NULL,
  `2018` DECIMAL(20) NULL,
  `Population` INT NULL,
  PRIMARY KEY (`idpolluted_countries`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polluted_countries`.`polluted_cities`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polluted_countries`.`polluted_cities` (
  `idpolluted_cities` INT NOT NULL,
  `City` VARCHAR(200) NULL,
  `2021` DECIMAL(20) NULL,
  `JAN(2021)` DECIMAL(20) NULL,
  `FEB(2021)` DECIMAL(20) NULL,
  `MAR(2021)` DECIMAL(20) NULL,
  `APR(2021)` DECIMAL(20) NULL,
  `MAY(2021)` DECIMAL(20) NULL,
  `JUN(2021)` DECIMAL(20) NULL,
  `JUL(2021)` DECIMAL(20) NULL,
  `AUG(2021)` DECIMAL(20) NULL,
  `SEP(2021)` DECIMAL(20) NULL,
  `OCT(2021)` DECIMAL(20) NULL,
  `NOV(2021)` DECIMAL(20) NULL,
  `DEC(2021)` DECIMAL(20) NULL,
  `2020` DECIMAL(20) NULL,
  `2019` DECIMAL(20) NULL,
  `2018` DECIMAL(20) NULL,
  `2017` DECIMAL(20) NULL,
  `country` VARCHAR(200) NULL,
  `polluted_countries_idpolluted_countries` INT NOT NULL,
  PRIMARY KEY (`idpolluted_cities`),
  INDEX `fk_polluted_cities_polluted_countries_idx` (`polluted_countries_idpolluted_countries` ASC) VISIBLE,
  CONSTRAINT `fk_polluted_cities_polluted_countries`
    FOREIGN KEY (`polluted_countries_idpolluted_countries`)
    REFERENCES `polluted_countries`.`polluted_countries` (`idpolluted_countries`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polluted_countries`.`cost_living`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polluted_countries`.`cost_living` (
  `idcost_living` INT NOT NULL,
  `countries` VARCHAR(200) NULL,
  `cost_living_inde` DECIMAL(20) NULL,
  `year` INT NULL,
  `polluted_countries_idpolluted_countries` INT NOT NULL,
  PRIMARY KEY (`idcost_living`),
  INDEX `fk_cost_living_polluted_countries1_idx` (`polluted_countries_idpolluted_countries` ASC) VISIBLE,
  CONSTRAINT `fk_cost_living_polluted_countries1`
    FOREIGN KEY (`polluted_countries_idpolluted_countries`)
    REFERENCES `polluted_countries`.`polluted_countries` (`idpolluted_countries`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polluted_countries`.`birth_rate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polluted_countries`.`birth_rate` (
  `idbirth_rate` INT NOT NULL,
  `country` VARCHAR(200) NULL,
  `year` INT NULL,
  `born` DECIMAL(20) NULL,
  `male_born` DECIMAL(20) NULL,
  `female_born` DECIMAL(20) NULL,
  `birth_rate` DECIMAL(20) NULL,
  `fertility_rate` DECIMAL(20) NULL,
  `variation` DECIMAL(20) NULL,
  `polluted_countries_idpolluted_countries` INT NOT NULL,
  PRIMARY KEY (`idbirth_rate`),
  INDEX `fk_birth_rate_polluted_countries1_idx` (`polluted_countries_idpolluted_countries` ASC) VISIBLE,
  CONSTRAINT `fk_birth_rate_polluted_countries1`
    FOREIGN KEY (`polluted_countries_idpolluted_countries`)
    REFERENCES `polluted_countries`.`polluted_countries` (`idpolluted_countries`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
