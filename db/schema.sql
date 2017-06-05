-- -----------------------------------------------------
-- Table `salvamaria`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`users` (
  `login` INT NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `nivel` ENUM('PM', 'AP', 'USER') NOT NULL,
  `createdAt` DATE NOT NULL,
  `updatedAt` DATE NOT NULL,
  `pm_responsavel` VARCHAR(45) NULL,
  PRIMARY KEY (`login`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `salvamaria`.`certidoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`certidoes` (
  `id` INT NOT NULL,
  `tipo` ENUM('FISCALIZACAO', 'RECUSA', 'RETORNO', 'TERMINO', 'NEGATIVA_ENDERECO') NOT NULL,
  `data` DATETIME NOT NULL,
  `testemunha` VARCHAR(100) NOT NULL,
  `depoimento_usuaria` MEDIUMTEXT NOT NULL,
  `depoimento_agressor` MEDIUMTEXT NULL,
  `users_login` INT NOT NULL,
  `createdAt` DATE NULL,
  `updatedAt` DATE NULL,
  PRIMARY KEY (`id`, `users_login`),
  INDEX `fk_certidoes_users1_idx` (`users_login` ASC),
  CONSTRAINT `fk_certidoes_users1`
    FOREIGN KEY (`users_login`)
    REFERENCES `salvamaria`.`users` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `salvamaria`.`dailies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`dailies` (
  `id` INT NOT NULL,
  `data` DATETIME NOT NULL,
  `descricao` MEDIUMTEXT NULL,
  `users_login` INT NOT NULL,
  PRIMARY KEY (`id`, `users_login`),
  INDEX `fk_dailies_users1_idx` (`users_login` ASC),
  CONSTRAINT `fk_dailies_users1`
    FOREIGN KEY (`users_login`)
    REFERENCES `salvamaria`.`users` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `salvamaria`.`contacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`contacts` (
  `id` INT NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `tipo` ENUM('F', 'R', 'O') NOT NULL,
  `createdAt` DATE NOT NULL,
  `updatedAt` DATE NOT NULL,
  `users_login` INT NOT NULL,
  PRIMARY KEY (`id`, `users_login`),
  INDEX `fk_contacts_users1_idx` (`users_login` ASC),
  CONSTRAINT `fk_contacts_users1`
    FOREIGN KEY (`users_login`)
    REFERENCES `salvamaria`.`users` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `salvamaria`.`socioforms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`socioforms` (
  `id` INT NOT NULL,
  `estado_civil` VARCHAR(45) NOT NULL,
  `filhos` VARCHAR(45) NOT NULL,
  `filhos_com_agressor` VARCHAR(45) NULL,
  `escolaridade` VARCHAR(45) NOT NULL,
  `etnia` VARCHAR(45) NOT NULL,
  `idade` INT NULL,
  `religiao` VARCHAR(45) NULL,
  `profissao` VARCHAR(45) NULL,
  `trabalha` VARCHAR(45) NOT NULL,
  `ultimo_emprego` VARCHAR(45) NULL,
  `local_trabalho` VARCHAR(45) NULL,
  `renda` VARCHAR(45) NOT NULL,
  `responsavel_sustento` VARCHAR(45) NULL,
  `createdAt` DATE NULL,
  `updatedAt` DATE NULL,
  `users_login` INT NOT NULL,
  PRIMARY KEY (`id`, `users_login`),
  INDEX `fk_socioforms_users1_idx` (`users_login` ASC),
  CONSTRAINT `fk_socioforms_users1`
    FOREIGN KEY (`users_login`)
    REFERENCES `salvamaria`.`users` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `salvamaria`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `salvamaria`.`addresses` (
  `id` INT NOT NULL,
  `numero` INT NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `complemento` VARCHAR(127) NULL,
  `ponto_referencia` VARCHAR(255) NULL,
  `cep` VARCHAR(10) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `createdAt` DATE NULL,
  `updatedAt` DATE NULL,
  `users_login` INT NOT NULL,
  PRIMARY KEY (`id`, `users_login`),
  INDEX `fk_addresses_users_idx` (`users_login` ASC),
  CONSTRAINT `fk_addresses_users`
    FOREIGN KEY (`users_login`)
    REFERENCES `salvamaria`.`users` (`login`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `salvamaria` ;

