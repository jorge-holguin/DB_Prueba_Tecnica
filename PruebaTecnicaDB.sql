CREATE DATABASE `pruebaDB`;

USE `pruebaDB`;

DROP TABLE IF EXISTS `or_city`;
CREATE TABLE `or_city`  (
  `ID_CITY` INT(4) NULL DEFAULT NULL,
  `CITY_NAME` VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CITY_ABBREVIATION` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `CITY_ALIAS` VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ID_STATE` INT(5) NULL DEFAULT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `or_city` VALUES (6, 'Maravatio de Ocampo', 'MRVT', 'Maravatio-Maravatio de Ocampo', 3474);
INSERT INTO `or_city` VALUES (16, 'Apaseo el Alto', 'APS', 'CT Apaseo el Alto', 3469);
INSERT INTO `or_city` VALUES (17, 'Celaya', 'CYA', 'CT Celaya', 3469);
INSERT INTO `or_city` VALUES (18, 'Durango', 'DURA', 'CT Durango', 3453);
INSERT INTO `or_city` VALUES (20, 'Matehuala', 'MAT', 'CT Matehuala', 3461);
INSERT INTO `or_city` VALUES (21, 'Monterrey', 'MTYU', 'CT Monterrey Universidad', 3452);
INSERT INTO `or_city` VALUES (22, 'Morelia', 'MOR', 'CT Morelia', 3474);
INSERT INTO `or_city` VALUES (23, 'Nuevo Laredo', 'LAR', 'CT Nuevo Laredo', 3463);
INSERT INTO `or_city` VALUES (25, 'Querétaro', 'QTO', 'CT Queretaro', 3455);
INSERT INTO `or_city` VALUES (27, 'Salvatierra', 'SLVA', 'CT Salvatierra', 3469);
INSERT INTO `or_city` VALUES (28, 'San Luis Potosi', 'SLP', 'CT San Luis Potosi', 3461);
INSERT INTO `or_city` VALUES (29, 'Torreón', 'TORR', 'CT Torreón', 3471);
INSERT INTO `or_city` VALUES (40, 'Mount Veron', 'MVER', 'El Rancherito Mount Veron', 1425);
INSERT INTO `or_city` VALUES (50, 'Gomez Palacio', 'GPD', 'Gomez Palacio', 3453);
INSERT INTO `or_city` VALUES (51, 'Guadalupe Victoria', 'GPEV', 'Guadalupe Victoria', 3453);
INSERT INTO `or_city` VALUES (63, 'Marion', 'MRIO', 'Marathon Gas Station-Marion', 1425);
INSERT INTO `or_city` VALUES (67, 'Moroleon', 'MRL', 'Moroleon', 3469);
INSERT INTO `or_city` VALUES (71, 'Arcola', 'ARC', 'Phillips Gas Station-Arcola', 1425);
INSERT INTO `or_city` VALUES (76, 'San Marcos', 'SMC', 'Restaurant Mazatlan', 1407);
INSERT INTO `or_city` VALUES (79, 'Champaign', 'CHA', 'Road Ranger Truck Stop', 1425);
INSERT INTO `or_city` VALUES (81, 'Anna', 'ANN', 'Anna - Gasolinera Shell', 1425);
INSERT INTO `or_city` VALUES (83, 'Little Rock', 'LIT', 'Little Rock, AR(Shell Gas Station)', 1444);
INSERT INTO `or_city` VALUES (85, 'Texarkana', 'TEX', 'Texarkana- Shell Gas Station', 1407);
INSERT INTO `or_city` VALUES (91, 'Kankakee', 'KAN', 'Taco Del Norte-Kankakee', 1425);
INSERT INTO `or_city` VALUES (95, 'Austin', 'AUS', 'TBC Austin', 1407);
INSERT INTO `or_city` VALUES (96, 'Chicago, IL', 'CHGO', 'TBC Chicago', 1425);
INSERT INTO `or_city` VALUES (99, 'Dallas Jefferson', 'JEF', 'TBC Jefferson', 1407);
INSERT INTO `or_city` VALUES (100, 'Laredo', 'LAX', 'TBC Laredo', 1407);
INSERT INTO `or_city` VALUES (103, 'San Antonio', 'SAT', 'TBC San Antonio', 1407);
INSERT INTO `or_city` VALUES (104, 'Waco', 'WAC', 'TBC Waco', 1407);
INSERT INTO `or_city` VALUES (106, 'West Memphis', 'WMEM', 'TBC West Memphis', 1444);
INSERT INTO `or_city` VALUES (110, 'Monterrey', 'MTYT', 'Monterrey, N.L. (Transpais Monterrey)', 3452);
INSERT INTO `or_city` VALUES (118, 'Rantoul', 'RANT', 'Walmart-Rantoul', 1425);
INSERT INTO `or_city` VALUES (123, 'Yuriria', 'YUR', 'Yuriria', 3469);
INSERT INTO `or_city` VALUES (165, 'Michigan City', 'MICH', 'Haro\'s Supermarket Tienda Mexicana', 1440);
INSERT INTO `or_city` VALUES (168, 'La Moncada', 'LMON', 'La Moncada', 3469);
INSERT INTO `or_city` VALUES (189, 'Kansas City, KS', 'KSC', 'TBC Kansas City', 1406);
INSERT INTO `or_city` VALUES (325, 'Casacuarán', 'CSR', 'Casacuaran', 3469);
INSERT INTO `or_city` VALUES (339, 'Santiago Maravatío', 'SMRV', 'Santiago Maravatio, Gto', 3469);
INSERT INTO `or_city` VALUES (454, 'San Luis de la Paz', 'SAN', 'San Luis de la Paz, Gto (Gorditas Esther)', 3469);
INSERT INTO `or_city` VALUES (524, 'Grand Rapids', 'GNR', 'Grand Rapids, MI USA', 1426);
INSERT INTO `or_city` VALUES (534, 'Dallas I-30', 'DLL', 'TBC Dallas I-30', 1407);
INSERT INTO `or_city` VALUES (569, 'Cuitzeo', 'CUI', 'Cuitzeo', 3474);
INSERT INTO `or_city` VALUES (716, 'Zamora', 'ZAM', 'CT Zamora', 3474);
INSERT INTO `or_city` VALUES (945, 'Tarimoro', 'TARM', 'Tarimoro, Gto', 3469);
INSERT INTO `or_city` VALUES (1249, 'Holland', 'HOLL', 'Supermercado Santa Fe ', 1426);
INSERT INTO `or_city` VALUES (1271, 'San Miguel de Allende', 'SMA', 'San Miguel De Allende', 3469);
INSERT INTO `or_city` VALUES (1397, 'Tulsa', 'TSA', 'Tulsa ,OK. (El Mercadito)', 1421);
INSERT INTO `or_city` VALUES (1400, 'Benton Harbor', 'BENH', 'La Perla Produce Inc', 1426);
INSERT INTO `or_city` VALUES (1431, 'San Luis de la Paz', 'SLDP', 'CT San Luis de la Paz', 3469);
INSERT INTO `or_city` VALUES (1433, 'Monterrey', 'MTYF', 'CT Monterrey Fundidora', 3452);
INSERT INTO `or_city` VALUES (1435, 'Oklahoma City', 'OKL', 'Plaza Latina-Oklahoma City', 1421);
INSERT INTO `or_city` VALUES (1457, 'Francisco I Madero', 'FIM', 'Francisco I. Madero', 3453);
INSERT INTO `or_city` VALUES (1462, 'Effingham', 'EFF', 'Lupita\'s Grocery-Effingham', 1425);
INSERT INTO `or_city` VALUES (1463, 'Saltillo', 'SALT', 'Saltillo', 3471);
INSERT INTO `or_city` VALUES (1856, 'Parras de la Fuente', 'Parras', 'Restaurant Paila', 3471);

DROP TABLE IF EXISTS `or_listdetail`;
CREATE TABLE `or_listdetail`  (
  `ID_LISTDET` INT(11) NULL DEFAULT NULL,
  `LIDET_NAME` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `or_listdetail` VALUES (473, 'Abordaje y Desabordaje');
INSERT INTO `or_listdetail` VALUES (474, 'Abordaje');
INSERT INTO `or_listdetail` VALUES (475, 'Desabordaje');
INSERT INTO `or_listdetail` VALUES (653, 'N/A');

DROP TABLE IF EXISTS `or_route`;
CREATE TABLE `or_route`  (
  `ID_ROUTE` INT(5) NULL DEFAULT NULL,
  `ROUTE_ALIAS` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `or_route` VALUES (36, '117A');
INSERT INTO `or_route` VALUES (37, '161A');
INSERT INTO `or_route` VALUES (126, '67B1');
INSERT INTO `or_route` VALUES (568, '110A3');
INSERT INTO `or_route` VALUES (39, '218D(n)');

DROP TABLE IF EXISTS `or_routestop`;
CREATE TABLE `or_routestop`  (
  `ID_ROUTESTOP` INT(6) NULL DEFAULT NULL,
  `ID_ROUTE` INT(5) NULL DEFAULT NULL,
  `ROUTSTP_CITYINI` INT(4) NULL DEFAULT NULL,
  `ROUTSTP_CITYEND` INT(4) NULL DEFAULT NULL,
  `ROUTSTP_TRAVELTIME` INT(7) NULL DEFAULT NULL,
  `ROUTSTP_WAITTIME` INT(4) NULL DEFAULT NULL,
  `ROUTSTP_ORDER` INT(3) NULL DEFAULT NULL,
  `ROUTSTP_TYPE` INT(6) NULL DEFAULT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `or_routestop` VALUES (420, 36, 534, 99, 1200, 0, 1, 473);
INSERT INTO `or_routestop` VALUES (421, 36, 99, 104, 5400, 600, 2, 473);
INSERT INTO `or_routestop` VALUES (422, 36, 104, 95, 5400, 0, 3, 473);
INSERT INTO `or_routestop` VALUES (423, 36, 95, 76, 1800, 0, 4, 473);
INSERT INTO `or_routestop` VALUES (424, 36, 76, 103, 3600, 0, 5, 473);
INSERT INTO `or_routestop` VALUES (425, 36, 103, 100, 7200, 1800, 6, 473);
INSERT INTO `or_routestop` VALUES (426, 36, 100, 23, 900, 1800, 7, 473);
INSERT INTO `or_routestop` VALUES (427, 36, 23, 20, 21600, 1800, 8, 473);
INSERT INTO `or_routestop` VALUES (428, 36, 20, 28, 7200, 1800, 9, 473);
INSERT INTO `or_routestop` VALUES (429, 36, 28, 1431, 6000, 0, 10, 473);
INSERT INTO `or_routestop` VALUES (430, 36, 1431, 25, 4800, 0, 11, 473);
INSERT INTO `or_routestop` VALUES (431, 36, 25, 1271, 3900, 0, 12, 473);
INSERT INTO `or_routestop` VALUES (433, 36, 1271, 17, 1200, 0, 14, 473);
INSERT INTO `or_routestop` VALUES (434, 36, 17, 945, 1800, 0, 15, 473);
INSERT INTO `or_routestop` VALUES (435, 36, 945, 168, 600, 0, 16, 473);
INSERT INTO `or_routestop` VALUES (436, 36, 168, 27, 1500, 0, 17, 473);
INSERT INTO `or_routestop` VALUES (437, 36, 27, 339, 1500, 0, 18, 473);
INSERT INTO `or_routestop` VALUES (438, 36, 339, 325, 900, 0, 19, 473);
INSERT INTO `or_routestop` VALUES (439, 36, 325, 123, 1500, 0, 20, 473);
INSERT INTO `or_routestop` VALUES (440, 36, 123, 67, 1500, 0, 21, 473);
INSERT INTO `or_routestop` VALUES (441, 36, 67, 569, 1800, 0, 22, 473);
INSERT INTO `or_routestop` VALUES (442, 36, 569, 22, 1500, 0, 23, 473);
INSERT INTO `or_routestop` VALUES (443, 37, 534, 99, 1200, 0, 1, 473);
INSERT INTO `or_routestop` VALUES (444, 37, 99, 104, 5400, 600, 2, 473);
INSERT INTO `or_routestop` VALUES (445, 37, 104, 95, 5400, 0, 3, 473);
INSERT INTO `or_routestop` VALUES (446, 37, 95, 76, 1800, 0, 4, 473);
INSERT INTO `or_routestop` VALUES (447, 37, 76, 103, 3600, 0, 5, 473);
INSERT INTO `or_routestop` VALUES (448, 37, 103, 100, 7200, 1800, 6, 473);
INSERT INTO `or_routestop` VALUES (449, 37, 100, 23, 7200, 1800, 7, 473);
INSERT INTO `or_routestop` VALUES (450, 37, 1856, 110, 5100, 2100, 12, 474);
INSERT INTO `or_routestop` VALUES (451, 37, 110, 29, 0, 0, 13, 475);
INSERT INTO `or_routestop` VALUES (452, 37, 29, 50, 1800, 300, 14, 473);
INSERT INTO `or_routestop` VALUES (453, 37, 50, 51, 7200, 0, 15, 473);
INSERT INTO `or_routestop` VALUES (454, 37, 51, 1457, 1200, 0, 16, 473);
INSERT INTO `or_routestop` VALUES (455, 37, 1457, 18, 3000, 0, 17, 473);
INSERT INTO `or_routestop` VALUES (2649, 37, 1463, 21, 5400, 0, 9, 474);
INSERT INTO `or_routestop` VALUES (7408, 37, 1433, 1856, 0, 0, 11, 475);
INSERT INTO `or_routestop` VALUES (7410, 37, 21, 1433, 0, 0, 10, 653);
INSERT INTO `or_routestop` VALUES (7799, 37, 23, 1463, 12600, 2100, 8, 473);
INSERT INTO `or_routestop` VALUES (1585, 126, 189, 1397, 16200, 0, 1, 473);
INSERT INTO `or_routestop` VALUES (1586, 126, 1397, 1435, 10800, 0, 2, 473);
INSERT INTO `or_routestop` VALUES (1587, 126, 1435, 534, 23400, 0, 3, 473);
INSERT INTO `or_routestop` VALUES (1588, 126, 534, 100, 1800, 0, 4, 473);
INSERT INTO `or_routestop` VALUES (1589, 126, 100, 23, 21600, 0, 5, 473);
INSERT INTO `or_routestop` VALUES (1590, 126, 23, 20, 7200, 0, 6, 473);
INSERT INTO `or_routestop` VALUES (1591, 126, 20, 28, 6000, 0, 7, 473);
INSERT INTO `or_routestop` VALUES (1597, 126, 28, 454, 4800, 0, 8, 473);
INSERT INTO `or_routestop` VALUES (1598, 126, 454, 25, 1800, 0, 9, 473);
INSERT INTO `or_routestop` VALUES (1600, 126, 25, 16, 1800, 0, 10, 473);
INSERT INTO `or_routestop` VALUES (1602, 126, 16, 17, 1800, 0, 11, 473);
INSERT INTO `or_routestop` VALUES (1604, 126, 17, 168, 600, 0, 12, 473);
INSERT INTO `or_routestop` VALUES (1605, 126, 168, 27, 1800, 0, 13, 473);
INSERT INTO `or_routestop` VALUES (1606, 126, 27, 6, 900, 0, 14, 473);
INSERT INTO `or_routestop` VALUES (1608, 126, 6, 325, 1200, 0, 15, 473);
INSERT INTO `or_routestop` VALUES (1610, 126, 325, 123, 1200, 0, 16, 473);
INSERT INTO `or_routestop` VALUES (1612, 126, 123, 67, 1800, 0, 17, 473);
INSERT INTO `or_routestop` VALUES (1613, 126, 67, 569, 1800, 0, 18, 473);
INSERT INTO `or_routestop` VALUES (1614, 126, 569, 22, 7200, 0, 19, 473);
INSERT INTO `or_routestop` VALUES (1615, 126, 22, 716, 0, 0, 20, 473);
INSERT INTO `or_routestop` VALUES (6824, 568, 534, 99, 1800, 0, 1, 473);
INSERT INTO `or_routestop` VALUES (6826, 568, 99, 104, 5400, 0, 2, 473);
INSERT INTO `or_routestop` VALUES (6828, 568, 104, 95, 5400, 0, 3, 473);
INSERT INTO `or_routestop` VALUES (6830, 568, 95, 76, 1200, 0, 4, 473);
INSERT INTO `or_routestop` VALUES (6832, 568, 76, 103, 3600, 0, 5, 473);
INSERT INTO `or_routestop` VALUES (6834, 568, 103, 100, 8100, 0, 6, 473);
INSERT INTO `or_routestop` VALUES (6836, 568, 100, 23, 960, 0, 7, 473);
INSERT INTO `or_routestop` VALUES (6838, 568, 23, 20, 21540, 0, 8, 473);
INSERT INTO `or_routestop` VALUES (6840, 568, 20, 28, 7680, 0, 9, 473);
INSERT INTO `or_routestop` VALUES (6842, 568, 28, 1431, 6000, 0, 10, 473);
INSERT INTO `or_routestop` VALUES (6844, 568, 1431, 25, 4980, 0, 11, 473);
INSERT INTO `or_routestop` VALUES (6846, 568, 25, 1271, 4200, 0, 12, 474);
INSERT INTO `or_routestop` VALUES (6848, 568, 1271, 16, 3780, 0, 13, 475);
INSERT INTO `or_routestop` VALUES (463, 39, 524, 1249, 1800, 0, 1, 473);
INSERT INTO `or_routestop` VALUES (464, 39, 1249, 1400, 3600, 0, 2, 473);
INSERT INTO `or_routestop` VALUES (465, 39, 1400, 165, 1800, 0, 3, 473);
INSERT INTO `or_routestop` VALUES (466, 39, 165, 96, 4500, 0, 4, 473);
INSERT INTO `or_routestop` VALUES (467, 39, 96, 91, 3300, 9000, 5, 473);
INSERT INTO `or_routestop` VALUES (468, 39, 91, 118, 3300, 300, 6, 473);
INSERT INTO `or_routestop` VALUES (469, 39, 118, 79, 600, 300, 7, 473);
INSERT INTO `or_routestop` VALUES (470, 39, 79, 71, 1800, 300, 8, 473);
INSERT INTO `or_routestop` VALUES (504, 39, 71, 1462, 2100, 300, 9, 473);
INSERT INTO `or_routestop` VALUES (505, 39, 1462, 40, 3300, 300, 10, 473);
INSERT INTO `or_routestop` VALUES (506, 39, 40, 63, 2100, 300, 11, 473);
INSERT INTO `or_routestop` VALUES (507, 39, 63, 81, 900, 300, 12, 473);
INSERT INTO `or_routestop` VALUES (508, 39, 81, 106, 13200, 300, 13, 473);
INSERT INTO `or_routestop` VALUES (509, 39, 106, 83, 6900, 300, 14, 473);
INSERT INTO `or_routestop` VALUES (510, 39, 83, 85, 6900, 300, 15, 473);
INSERT INTO `or_routestop` VALUES (511, 39, 85, 534, 9900, 300, 16, 473);
INSERT INTO `or_routestop` VALUES (512, 39, 534, 99, 900, 2700, 17, 473);
INSERT INTO `or_routestop` VALUES (513, 39, 99, 104, 5400, 300, 18, 473);
INSERT INTO `or_routestop` VALUES (514, 39, 104, 95, 5400, 300, 19, 474);
INSERT INTO `or_routestop` VALUES (515, 39, 95, 103, 7200, 300, 20, 474);
INSERT INTO `or_routestop` VALUES (516, 39, 103, 100, 9000, 1800, 21, 474);
INSERT INTO `or_routestop` VALUES (517, 39, 100, 23, 1200, 0, 22, 474);
INSERT INTO `or_routestop` VALUES (518, 39, 23, 20, 19800, 1800, 23, 473);
INSERT INTO `or_routestop` VALUES (519, 39, 20, 28, 7500, 1800, 24, 473);
INSERT INTO `or_routestop` VALUES (520, 39, 28, 1431, 6000, 0, 25, 473);
INSERT INTO `or_routestop` VALUES (521, 39, 1431, 25, 4800, 0, 26, 473);
INSERT INTO `or_routestop` VALUES (522, 39, 25, 16, 1800, 0, 27, 473);
INSERT INTO `or_routestop` VALUES (523, 39, 16, 17, 1800, 0, 28, 473);
INSERT INTO `or_routestop` VALUES (524, 39, 17, 168, 1500, 0, 29, 473);
INSERT INTO `or_routestop` VALUES (525, 39, 168, 27, 600, 0, 30, 473);
INSERT INTO `or_routestop` VALUES (526, 39, 27, 123, 2400, 0, 31, 473);
INSERT INTO `or_routestop` VALUES (527, 39, 123, 67, 900, 0, 32, 473);
INSERT INTO `or_routestop` VALUES (528, 39, 67, 569, 1800, 0, 33, 473);
INSERT INTO `or_routestop` VALUES (529, 39, 569, 22, 1800, 0, 34, 473);

DROP TABLE IF EXISTS `or_state`;
CREATE TABLE `or_state`  (
  `ID_STATE` INT(5) NULL DEFAULT NULL,
  `ST_NAME` VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ST_ABBREVIATION` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ST_CODE` VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ZONE` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `or_state` VALUES (1406, 'Kansas', 'KS', 'KS', 'America/Chicago');
INSERT INTO `or_state` VALUES (1407, 'Texas', 'TX', 'TX', 'America/Chicago');
INSERT INTO `or_state` VALUES (1421, 'Oklahoma', 'OK', 'OK', 'America/Chicago');
INSERT INTO `or_state` VALUES (1425, 'Illinois', 'IL', 'IL', 'America/Chicago');
INSERT INTO `or_state` VALUES (1426, 'Michigan', 'MI', 'MI', 'America/Detroit');
INSERT INTO `or_state` VALUES (1440, 'Indiana', 'IN', 'IN', 'America/New_York');
INSERT INTO `or_state` VALUES (1444, 'Arkansas', 'AR', 'AR', 'America/Chicago');
INSERT INTO `or_state` VALUES (3452, 'Nuevo León', 'NL', 'NL', 'America/Monterrey');
INSERT INTO `or_state` VALUES (3453, 'Durango', 'DGO', 'DGO', 'America/Monterrey');
INSERT INTO `or_state` VALUES (3455, 'Querétaro', 'QRO', 'QRO', 'America/Monterrey');
INSERT INTO `or_state` VALUES (3461, 'San Luis Potosí', 'SLP', 'SLP', 'America/Mexico_City');
INSERT INTO `or_state` VALUES (3463, 'Tamaulipas', 'TAM', 'TAM', 'America/Chicago');
INSERT INTO `or_state` VALUES (3469, 'Guanajuato', 'GTO', 'GTO', 'America/Monterrey');
INSERT INTO `or_state` VALUES (3471, 'Coahuila de Zaragoza', 'COAH', 'COAH', 'America/Monterrey');
INSERT INTO `or_state` VALUES (3474, 'Michoacán de Ocampo', 'MICH', 'MICH', 'America/Monterrey');