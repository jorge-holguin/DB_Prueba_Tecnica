-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS `pruebaDB`;

-- Seleccionar la base de datos
USE `pruebaDB`;

-- Eliminar la tabla or_city si ya existe
DROP TABLE IF EXISTS `or_city`;

-- Crear la tabla or_city
CREATE TABLE `or_city` (
  `ID_CITY` INT(4) PRIMARY KEY,
  `CITY_NAME` VARCHAR(300),
  `CITY_ABBREVIATION` VARCHAR(30),
  `CITY_ALIAS` VARCHAR(300),
  `ID_STATE` INT(5)
);

-- Eliminar la tabla or_route si ya existe
DROP TABLE IF EXISTS `or_route`;

-- Crear la tabla or_route
CREATE TABLE `or_route` (
  `ID_ROUTE` INT(5) PRIMARY KEY,
  `ROUTE_ALIAS` VARCHAR(150)
);

-- Eliminar la tabla or_routestop si ya existe
DROP TABLE IF EXISTS `or_routestop`;

-- Crear la tabla or_routestop
CREATE TABLE `or_routestop` (
  `ID_ROUTESTOP` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `ID_ROUTE` INT(5),
  `ROUTSTP_CITYINI` INT(4),
  `ROUTSTP_CITYEND` INT(4),
  `ROUTSTP_TRAVELTIME` INT(7),
  `ROUTSTP_WAITTIME` INT(4),
  `ROUTSTP_ORDER` INT(3),
  `ROUTSTP_TYPE` INT(6),
  FOREIGN KEY (`ID_ROUTE`) REFERENCES `or_route`(`ID_ROUTE`),
  FOREIGN KEY (`ROUTSTP_CITYINI`) REFERENCES `or_city`(`ID_CITY`),
  FOREIGN KEY (`ROUTSTP_CITYEND`) REFERENCES `or_city`(`ID_CITY`)
);

-- Insertar datos de ejemplo en la tabla or_city
INSERT INTO `or_city` VALUES (534, 'City1', 'C1', 'Alias1', 1), (100, 'City2', 'C2', 'Alias2', 2);

-- Insertar datos de ejemplo en la tabla or_route
INSERT INTO `or_route` VALUES (36, 'Route36'), (37, 'Route37'), (39, 'Route39');

-- Insertar datos de ejemplo en la tabla or_routestop
INSERT INTO `or_routestop` (ID_ROUTE, ROUTSTP_CITYINI, ROUTSTP_CITYEND, ROUTSTP_TRAVELTIME, ROUTSTP_WAITTIME, ROUTSTP_ORDER, ROUTSTP_TYPE)
VALUES 
(36, 534, 100, 27000, 1000, 1, 473), 
(37, 534, 100, 54000, 2000, 2, 473), 
(39, 534, 100, 77400, 3000, 1, 474);
