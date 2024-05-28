CREATE TABLE IF NOT EXISTS or_city (
    ID_CITY INT(4) PRIMARY KEY,
    CITY_NAME VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    CITY_ABBREVIATION VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    CITY_ALIAS VARCHAR(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    ID_STATE INT(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS or_route (
    ID_ROUTE INT(5) PRIMARY KEY,
    ROUTE_ALIAS VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
);

CREATE TABLE IF NOT EXISTS or_routestop (
    ID_ROUTESTOP INT(6) PRIMARY KEY,
    ID_ROUTE INT(5) NOT NULL,
    ROUTSTP_CITYINI INT(4) NOT NULL,
    ROUTSTP_CITYEND INT(4) NOT NULL,
    ROUTSTP_TRAVELTIME INT(7) NOT NULL,
    ROUTSTP_WAITTIME INT(4) NOT NULL,
    ROUTSTP_ORDER INT(3) NOT NULL,
    ROUTSTP_TYPE INT(6) NOT NULL,
    FOREIGN KEY (ID_ROUTE) REFERENCES or_route(ID_ROUTE),
    FOREIGN KEY (ROUTSTP_CITYINI) REFERENCES or_city(ID_CITY),
    FOREIGN KEY (ROUTSTP_CITYEND) REFERENCES or_city(ID_CITY)
);

CREATE TABLE IF NOT EXISTS or_transfer (
    ID_TRANSFER INT AUTO_INCREMENT PRIMARY KEY,
    ID_ROUTE_FROM INT NOT NULL,
    ID_ROUTE_TO INT NOT NULL,
    TRANSFER_POINT INT NOT NULL,
    FOREIGN KEY (ID_ROUTE_FROM) REFERENCES or_route(ID_ROUTE),
    FOREIGN KEY (ID_ROUTE_TO) REFERENCES or_route(ID_ROUTE),
    FOREIGN KEY (TRANSFER_POINT) REFERENCES or_city(ID_CITY)
);
