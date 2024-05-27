# Prueba Técnica DB

Este repositorio contiene scripts SQL y funciones para una prueba técnica que incluye:

1. Crear una función de búsqueda de rutas.
2. Crear un esquema para transbordos.
3. Crear una función de búsqueda de transbordos.

## Requisitos

- MariaDB: https://mariadb.org/download/?t=mariadb

## Instrucciones

### Paso 1: Crear la base de datos y las tablas

1. Clonar el repositorio:
   ```sh
   git clone https://github.com/jorge-holguin/DB_Prueba_Tecnica.git
   cd tu-repositorio
    ```

2. Ejecutar el archivo PruebaTecnicaDB.sql:

    ```sh
    SOURCE path/to/PruebaTecnicaDB.sql;
    ```

3. Ejecutar el archivo database_setup.sql:

    ```sh
    SOURCE path/to/database_setup.sql:
    ```
### Paso 2: Crear las funciones

1. Ejecutar el archivo functions.sql:
    ```sh
    SOURCE path/to/functions.sql;
    ```

### Paso 3: Probar las funciones

1. Probar la función searchRoutes:

    ```sh
    SELECT searchRoutes(534, 100);
    ```

2. Probar la función searchTransfers:
    ```sh
    SELECT searchTransfers(534, 100);
    ```

## Detalles de las Funciones

### Función searchRoutes
Esta función permite a los usuarios encontrar todas las posibles rutas entre dos ciudades, considerando las zonas horarias y los diferentes tipos de paradas.

### Función searchTransfers
Esta función permite a los usuarios encontrar todas las posibles combinaciones de ruta para armar el transbordo entre dos ciudades, considerando las zonas horarias y los diferentes tipos de paradas.


