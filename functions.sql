USE pruebaDB;

DROP FUNCTION IF EXISTS BuscarRutas;
DROP FUNCTION IF EXISTS BuscarTransbordos;

DELIMITER //

CREATE FUNCTION BuscarRutas(ciudad_inicio INT, ciudad_fin INT)
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE resultado JSON;

    SET resultado = JSON_ARRAY();

    SELECT JSON_ARRAYAGG(
               JSON_OBJECT(
                   'id_route', r.ID_ROUTE,
                   'alias_route', r.ROUTE_ALIAS,
                   'cityIni', rs1.ROUTSTP_CITYINI,
                   'cityEnd', rs2.ROUTSTP_CITYEND,
                   'travelTime', rs1.ROUTSTP_TRAVELTIME,
                   'travelEndTime', rs1.ROUTSTP_TRAVELTIME + rs1.ROUTSTP_WAITTIME,
                   'iniRouteStp', rs1.ROUTSTP_ORDER,
                   'endRouteStp', rs2.ROUTSTP_ORDER,
                   'typeRouteIni', rs1.ROUTSTP_TYPE,
                   'typeRouteEnd', rs2.ROUTSTP_TYPE
               )
           )
    INTO resultado
    FROM or_route r
    JOIN or_routestop rs1 ON r.ID_ROUTE = rs1.ID_ROUTE
    JOIN or_routestop rs2 ON r.ID_ROUTE = rs2.ID_ROUTE
    WHERE rs1.ROUTSTP_CITYINI = ciudad_inicio 
    AND rs2.ROUTSTP_CITYEND = ciudad_fin
    AND rs1.ROUTSTP_ORDER < rs2.ROUTSTP_ORDER;

    RETURN resultado;
END //

CREATE FUNCTION BuscarTransbordos(ciudad_inicio INT, ciudad_fin INT)
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE resultado JSON;

    SET resultado = JSON_ARRAY();

    SELECT JSON_ARRAYAGG(
               JSON_OBJECT(
                   'idTransbordo', t.id_transfer,
                   'nombreTransbordo', c.CITY_NAME,
                   'cityRoute', JSON_ARRAY(
                       JSON_OBJECT(
                           'id_route', r1.ID_ROUTE,
                           'alias_route', r1.ROUTE_ALIAS,
                           'cityIni', rs1.ROUTSTP_CITYINI,
                           'cityEnd', rs1.ROUTSTP_CITYEND,
                           'travelTime', rs1.ROUTSTP_TRAVELTIME,
                           'travelEndTime', rs1.ROUTSTP_TRAVELTIME + rs1.ROUTSTP_WAITTIME,
                           'iniRouteStp', rs1.ROUTSTP_ORDER,
                           'endRouteStp', rs1.ROUTSTP_ORDER,
                           'typeRouteIni', rs1.ROUTSTP_TYPE,
                           'typeRouteEnd', rs1.ROUTSTP_TYPE
                       ),
                       JSON_OBJECT(
                           'id_route', r2.ID_ROUTE,
                           'alias_route', r2.ROUTE_ALIAS,
                           'cityIni', rs2.ROUTSTP_CITYINI,
                           'cityEnd', rs2.ROUTSTP_CITYEND,
                           'travelTime', rs2.ROUTSTP_TRAVELTIME,
                           'travelEndTime', rs2.ROUTSTP_TRAVELTIME + rs2.ROUTSTP_WAITTIME,
                           'iniRouteStp', rs2.ROUTSTP_ORDER,
                           'endRouteStp', rs2.ROUTSTP_ORDER,
                           'typeRouteIni', rs2.ROUTSTP_TYPE,
                           'typeRouteEnd', rs2.ROUTSTP_TYPE
                       )
                   )
               )
           )
    INTO resultado
    FROM or_transfer t
    JOIN or_city c ON t.transfer_point = c.ID_CITY
    JOIN or_route r1 ON t.id_route_from = r1.ID_ROUTE
    JOIN or_routestop rs1 ON r1.ID_ROUTE = rs1.ID_ROUTE
    JOIN or_route r2 ON t.id_route_to = r2.ID_ROUTE
    JOIN or_routestop rs2 ON r2.ID_ROUTE = rs2.ID_ROUTE
    WHERE rs1.ROUTSTP_CITYINI = ciudad_inicio 
    AND rs2.ROUTSTP_CITYEND = ciudad_fin
    AND rs1.ROUTSTP_CITYEND = t.transfer_point
    AND rs1.ROUTSTP_ORDER < rs2.ROUTSTP_ORDER;

    RETURN resultado;
END //

DELIMITER ;
