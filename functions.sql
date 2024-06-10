USE pruebaDB_nueva;

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
                   'travelTime', (
                       SELECT SUM(rs.ROUTSTP_TRAVELTIME)
                       FROM or_routestop rs
                       WHERE rs.ID_ROUTE = r.ID_ROUTE
                         AND rs.ROUTSTP_ORDER >= rs1.ROUTSTP_ORDER -- Considerar solo paradas desde la parada inicial
                         AND rs.ROUTSTP_ORDER <= rs2.ROUTSTP_ORDER -- Hasta la parada final
                   ),
                   'travelEndTime', (
                       SELECT SUM(rs.ROUTSTP_TRAVELTIME + rs.ROUTSTP_WAITTIME)
                       FROM or_routestop rs
                       WHERE rs.ID_ROUTE = r.ID_ROUTE
                         AND rs.ROUTSTP_ORDER >= rs1.ROUTSTP_ORDER -- Considerar solo paradas desde la parada inicial
                         AND rs.ROUTSTP_ORDER <= rs2.ROUTSTP_ORDER -- Hasta la parada final
                   ),
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
    AND rs2.ROUTSTP_CITYEND = ciudad_fin;

    RETURN resultado;
END //

DELIMITER //

CREATE FUNCTION BuscarTransbordos(ciudad_inicio INT, ciudad_fin INT)
RETURNS JSON
DETERMINISTIC
BEGIN
    DECLARE resultado JSON;
    SET resultado = JSON_ARRAY();

    SELECT JSON_ARRAYAGG(
               JSON_OBJECT(
                   'idTransbordo', t.ID_TRANSFER,
                   'nombreTransbordo', c.CITY_NAME,
                   'cityRoute', JSON_ARRAY(
                       JSON_OBJECT(
                           'id_route', r1.ID_ROUTE,
                           'alias_route', r1.ROUTE_ALIAS,
                           'cityIni', rs1.ROUTSTP_CITYINI,
                           'cityEnd', t.TRANSFER_POINT,
                           'travelTime', (
                               SELECT SUM(rs.ROUTSTP_TRAVELTIME)
                               FROM or_routestop rs
                               WHERE rs.ID_ROUTE = r1.ID_ROUTE
                                 AND rs.ROUTSTP_ORDER >= rs1.ROUTSTP_ORDER
                                 AND rs.ROUTSTP_ORDER <= (
                                     SELECT rs_int.ROUTSTP_ORDER
                                     FROM or_routestop rs_int
                                     WHERE rs_int.ID_ROUTE = r1.ID_ROUTE
                                       AND rs_int.ROUTSTP_CITYEND = t.TRANSFER_POINT
                                 )
                           ),
                           'travelEndTime', (
                               SELECT SUM(rs.ROUTSTP_TRAVELTIME + rs.ROUTSTP_WAITTIME)
                               FROM or_routestop rs
                               WHERE rs.ID_ROUTE = r1.ID_ROUTE
                                 AND rs.ROUTSTP_ORDER >= rs1.ROUTSTP_ORDER
                                 AND rs.ROUTSTP_ORDER <= (
                                     SELECT rs_int.ROUTSTP_ORDER
                                     FROM or_routestop rs_int
                                     WHERE rs_int.ID_ROUTE = r1.ID_ROUTE
                                       AND rs_int.ROUTSTP_CITYEND = t.TRANSFER_POINT
                                 )
                           ),
                           'iniRouteStp', rs1.ROUTSTP_ORDER,
                           'endRouteStp', (
                               SELECT rs_int.ROUTSTP_ORDER
                               FROM or_routestop rs_int
                               WHERE rs_int.ID_ROUTE = r1.ID_ROUTE
                                 AND rs_int.ROUTSTP_CITYEND = t.TRANSFER_POINT
                           ),
                           'typeRouteIni', rs1.ROUTSTP_TYPE,
                           'typeRouteEnd', (
                               SELECT rs_int.ROUTSTP_TYPE
                               FROM or_routestop rs_int
                               WHERE rs_int.ID_ROUTE = r1.ID_ROUTE
                                 AND rs_int.ROUTSTP_CITYEND = t.TRANSFER_POINT
                           )
                       ),
                       JSON_OBJECT(
                           'id_route', r2.ID_ROUTE,
                           'alias_route', r2.ROUTE_ALIAS,
                           'cityIni', t.TRANSFER_POINT,
                           'cityEnd', rs2.ROUTSTP_CITYEND,
                           'travelTime', (
                               SELECT SUM(rs.ROUTSTP_TRAVELTIME)
                               FROM or_routestop rs
                               WHERE rs.ID_ROUTE = r2.ID_ROUTE
                                 AND rs.ROUTSTP_ORDER >= (
                                     SELECT rs_int.ROUTSTP_ORDER
                                     FROM or_routestop rs_int
                                     WHERE rs_int.ID_ROUTE = r2.ID_ROUTE
                                       AND rs_int.ROUTSTP_CITYINI = t.TRANSFER_POINT
                                 )
                                 AND rs.ROUTSTP_ORDER <= rs2.ROUTSTP_ORDER
                           ),
                           'travelEndTime', (
                               SELECT SUM(rs.ROUTSTP_TRAVELTIME + rs.ROUTSTP_WAITTIME)
                               FROM or_routestop rs
                               WHERE rs.ID_ROUTE = r2.ID_ROUTE
                                 AND rs.ROUTSTP_ORDER >= (
                                     SELECT rs_int.ROUTSTP_ORDER
                                     FROM or_routestop rs_int
                                     WHERE rs_int.ID_ROUTE = r2.ID_ROUTE
                                       AND rs_int.ROUTSTP_CITYINI = t.TRANSFER_POINT
                                 )
                                 AND rs.ROUTSTP_ORDER <= rs2.ROUTSTP_ORDER
                           ),
                           'iniRouteStp', (
                               SELECT rs_int.ROUTSTP_ORDER
                               FROM or_routestop rs_int
                               WHERE rs_int.ID_ROUTE = r2.ID_ROUTE
                                 AND rs_int.ROUTSTP_CITYINI = t.TRANSFER_POINT
                           ),
                           'endRouteStp', rs2.ROUTSTP_ORDER,
                           'typeRouteIni', (
                               SELECT rs_int.ROUTSTP_TYPE
                               FROM or_routestop rs_int
                               WHERE rs_int.ID_ROUTE = r2.ID_ROUTE
                                 AND rs_int.ROUTSTP_CITYINI = t.TRANSFER_POINT
                           ),
                           'typeRouteEnd', rs2.ROUTSTP_TYPE
                       )
                   )
               )
           )
    INTO resultado
    FROM or_transfer t
    JOIN or_city c ON t.TRANSFER_POINT = c.ID_CITY
    JOIN or_route r1 ON t.ID_ROUTE_FROM = r1.ID_ROUTE
    JOIN or_routestop rs1 ON r1.ID_ROUTE = rs1.ID_ROUTE AND rs1.ROUTSTP_CITYINI = ciudad_inicio
    JOIN or_route r2 ON t.ID_ROUTE_TO = r2.ID_ROUTE
    JOIN or_routestop rs2 ON r2.ID_ROUTE = rs2.ID_ROUTE AND rs2.ROUTSTP_CITYEND = ciudad_fin
    WHERE rs1.ROUTSTP_CITYINI = ciudad_inicio
      AND rs2.ROUTSTP_CITYEND = ciudad_fin
      AND (SELECT SUM(rs.ROUTSTP_TRAVELTIME)
           FROM or_routestop rs
           WHERE rs.ID_ROUTE = r1.ID_ROUTE
             AND rs.ROUTSTP_ORDER >= rs1.ROUTSTP_ORDER
             AND rs.ROUTSTP_ORDER <= (
                 SELECT rs_int.ROUTSTP_ORDER
                 FROM or_routestop rs_int
                 WHERE rs_int.ID_ROUTE = r1.ID_ROUTE
                   AND rs_int.ROUTSTP_CITYEND = t.TRANSFER_POINT
             )) IS NOT NULL
      AND (SELECT SUM(rs.ROUTSTP_TRAVELTIME)
           FROM or_routestop rs
           WHERE rs.ID_ROUTE = r2.ID_ROUTE
             AND rs.ROUTSTP_ORDER >= (
                 SELECT rs_int.ROUTSTP_ORDER
                 FROM or_routestop rs_int
                 WHERE rs_int.ID_ROUTE = r2.ID_ROUTE
                   AND rs_int.ROUTSTP_CITYINI = t.TRANSFER_POINT
             )
             AND rs.ROUTSTP_ORDER <= rs2.ROUTSTP_ORDER) IS NOT NULL
      AND rs1.ROUTSTP_CITYINI != rs1.ROUTSTP_CITYEND
      AND rs2.ROUTSTP_CITYINI != rs2.ROUTSTP_CITYEND;

    RETURN resultado;
END //

DELIMITER ;