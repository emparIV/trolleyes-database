-- MySQL Script generated by MySQL Workbench
-- jue 02 nov 2017 14:05:40 CET
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
-- Table `mydb`.`tipousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipousuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dni` VARCHAR(255) NULL,
  `nombre` VARCHAR(255) NULL,
  `primer_apellido` VARCHAR(255) NULL,
  `segundo_apellido` VARCHAR(255) NULL,
  `login` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `fecha_nacimiento` DATE NULL,
  `id_tipousuario` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_usuario_tipousuario_idx` (`id_tipousuario` ASC),
  CONSTRAINT `fk_usuario_tipousuario`
    FOREIGN KEY (`id_tipousuario`)
    REFERENCES `mydb`.`tipousuario` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(255) NULL,
  `descripcion` VARCHAR(255) NULL,
  `existencias` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NULL,
  `iva` INT NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pedido_usuario1_idx` (`id_usuario` ASC),
  CONSTRAINT `fk_pedido_usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`usuario` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`linea_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`linea_pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cantidad` VARCHAR(45) NULL,
  `id_pedido` INT NOT NULL,
  `id_producto` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_linea_pedido_pedido1_idx` (`id_pedido` ASC),
  INDEX `fk_linea_pedido_producto1_idx` (`id_producto` ASC),
  CONSTRAINT `fk_linea_pedido_pedido1`
    FOREIGN KEY (`id_pedido`)
    REFERENCES `mydb`.`pedido` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_linea_pedido_producto1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `mydb`.`producto` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
