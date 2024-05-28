# Prueba Técnica DB

Este repositorio contiene scripts SQL y funciones para una prueba técnica que incluye:

Crear una función de búsqueda de rutas.
Crear un esquema para transbordos.
Crear una función de búsqueda de transbordos.

## Requisitos

- MariaDB: https://mariadb.org/download/?t=mariadb
- Acceso a la línea de comandos o terminal.

## Archivos del Proyecto

- `PruebaTecnicaDB.sql`: Base de datos SQL que se utilizará para hacer las consultas.
- `transfer_scheme.sql`: Script SQL para crear las tablas necesarias para el esquema de transbordos.
- `functions.sql`: Script SQL para crear las funciones `BuscarRutas` y `BuscarTransbordos`.

## Pasos para Ejecutar el Proyecto

### Paso 1: Crear la base de datos y las tablas

1. Clonar el repositorio:
   ```sh
   git clone https://github.com/jorge-holguin/DB_Prueba_Tecnica.git
   cd tu-repositorio
    ```

### Paso 2. Crear y Poblar la Base de Datos

1. Abre una terminal o línea de comandos.
2. Navega al directorio donde se encuentra el proyecto
3. Ejecuta el siguiente comando para crear y poblar la base de datos:

   ```bash
   Get-Content PruebaTecnicaDB.sql | mysql -u root -p
   ```
### Paso 3. Crear las Tablas para Transbordos
1. Asegúrate de estar en el mismo directorio que el archivo transfer_scheme.sql.

2. Ejecuta el siguiente comando para crear las tablas necesarias para el esquema de transbordos:

   ```bash
    Get-Content transfer_scheme.sql | mysql -u root -p pruebaDB
   ```

### Paso 4. Ejecutar las funciones

1. Asegúrate de estar en el mismo directorio que el archivo functions.sql.

2. Ejecuta el siguiente comando para crear las funciones BuscarRutas y BuscarTransbordos:

    ```bash
    Get-Content functions.sql | mysql -u root -p pruebaDB
    ```

3. Conéctate a la base de datos pruebaDB usando el siguiente comando:

    ```bash
    mysql -u root -p
    ```

4. Selecciona la base de datos pruebaDB:

    ```bash
    USE pruebaDB;
    ```
5. Ejecutar las funciones 

    ```bash
    SELECT BuscarRutas(534, 100);
    ```

     ```bash
    SELECT BuscarTransbordos(534, 100);
    ```

## Licencia
Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.
