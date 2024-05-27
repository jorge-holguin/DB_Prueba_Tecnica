DELIMITER //

-- Crear la función searchRoutes para encontrar rutas entre dos ciudades
CREATE FUNCTION searchRoutes(cityIni INT, cityEnd INT)
RETURNS JSON
BEGIN
    DECLARE routeInfo JSON;
    
    -- Crear la consulta que construye el JSON con las rutas
    SET routeInfo = (
        SELECT JSON_ARRAYAGG(
            JSON_OBJECT(
                'id_route', r.ID_ROUTE,
                'alias_route', r.ROUTE_ALIAS,
                'cityIni', rs.ROUTSTP_CITYINI,
                'cityEnd', rs.ROUTSTP_CITYEND,
                'travelTime', rs.ROUTSTP_TRAVELTIME,
                'waitTime', rs.ROUTSTP_WAITTIME,
                'order', rs.ROUTSTP_ORDER,
                'type', rs.ROUTSTP_TYPE
            )
        )
        FROM or_route r
        JOIN or_routestop rs ON r.ID_ROUTE = rs.ID_ROUTE
        WHERE rs.ROUTSTP_CITYINI = cityIni AND rs.ROUTSTP_CITYEND = cityEnd
    );

    RETURN routeInfo;
END //

DELIMITER ;

DELIMITER //

-- Crear la función searchTransfers para encontrar transbordos entre dos ciudades
CREATE FUNCTION searchTransfers(cityIni INT, cityEnd INT)
RETURNS JSON
BEGIN
    DECLARE transferInfo JSON;
    
    -- Crear la consulta que construye el JSON con los transbordos
    SET transferInfo = (
        SELECT JSON_ARRAYAGG(
            JSON_OBJECT(
                'idTransfer', t.ID_TRANSFER,
                'transferName', t.TRANSFER_NAME,
                'cityRoute', (
                    SELECT JSON_ARRAYAGG(
                        JSON_OBJECT(
                            'id_route', tr.ID_ROUTE,
                            'alias_route', r.ROUTE_ALIAS,
                            'cityIni', tr.CITY_INI,
                            'cityEnd', tr.CITY_END,
                            'travelTime', tr.TRAVEL_TIME,
                            'travelEndTime', tr.TRAVEL_END_TIME,
                            'iniRouteStp', tr.ROUTE_INI,
                            'endRouteStp', tr.ROUTE_END,
                            'typeRouteIni', rs.ROUTSTP_TYPE,
                            'typeRouteEnd', re.ROUTSTP_TYPE
                        )
                    )
                    FROM or_transfer_routes tr
                    JOIN or_route r ON tr.ID_ROUTE = r.ID_ROUTE
                    JOIN or_routestop rs ON r.ID_ROUTE = rs.ID_ROUTE
                    JOIN or_routestop re ON r.ID_ROUTE = re.ID_ROUTE
                    WHERE tr.ID_TRANSFER = t.ID_TRANSFER
                )
            )
        )
        FROM or_transfer t
        JOIN or_transfer_routes tr ON t.ID_TRANSFER = tr.ID_TRANSFER
        WHERE tr.CITY_INI = cityIni AND tr.CITY_END = cityEnd
    );

    RETURN transferInfo;
END //

DELIMITER ;
