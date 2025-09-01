-- Generado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   en:        2025-08-31 22:04:03 CLT
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE Cliente 
    (
     ID_CLIENTE INTEGER NOT NULL , 
     Nombre VARCHAR (50) , 
     Rut VARCHAR (12) NOT NULL , 
     Segmento VARCHAR (30) , 
     Ciudad VARCHAR (50) , 
     Región VARCHAR (50) 
    )
GO

ALTER TABLE Cliente ADD CONSTRAINT Cliente_PK PRIMARY KEY CLUSTERED (ID_CLIENTE)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Empleado 
    (
     ID_EMPLEADO INTEGER NOT NULL , 
     Nombre VARCHAR (100) , 
     Cargo VARCHAR (50) , 
     Ärea VARCHAR (50) , 
     Fecha_Ingreso DATE 
    )
GO

ALTER TABLE Empleado ADD CONSTRAINT Empleado_PK PRIMARY KEY CLUSTERED (ID_EMPLEADO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Producto 
    (
     ID_PRODUCTO INTEGER NOT NULL , 
     Nombre VARCHAR (100) , 
     Categoria VARCHAR (50) , 
     Subcategoria VARCHAR (50) , 
     Precio_unitario DECIMAL (10,2) , 
     Proveedor VARCHAR (100) 
    )
GO

ALTER TABLE Producto ADD CONSTRAINT Producto_PK PRIMARY KEY CLUSTERED (ID_PRODUCTO)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Sucursal 
    (
     ID_SUCURSAL INTEGER NOT NULL , 
     Nombre VARCHAR (100) , 
     Ciudad VARCHAR (50) , 
     Region VARCHAR (50) , 
     Gerente VARCHAR (100) 
    )
GO

ALTER TABLE Sucursal ADD CONSTRAINT Sucursal_PK PRIMARY KEY CLUSTERED (ID_SUCURSAL)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Tiempo 
    (
     ID_tiempo INTEGER NOT NULL , 
     FECHA DATE , 
     DIAS INTEGER , 
     MES INTEGER , 
     TRIMESTRE INTEGER , 
     AÑO INTEGER 
    )
GO

ALTER TABLE Tiempo ADD CONSTRAINT Tiempo_PK PRIMARY KEY CLUSTERED (ID_tiempo)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Ventas 
    (
     ID_VENTA INTEGER NOT NULL , 
     Cantidad_Vendida INTEGER , 
     Precio_Unitario DECIMAL (10,2) , 
     Total_Venta DECIMAL (12,2) , 
     Descuento DECIMAL (10,2) , 
     Costo_Unitario DECIMAL (10,2) , 
     Tiempo_ID_tiempo INTEGER NOT NULL , 
     Cliente_ID_CLIENTE INTEGER NOT NULL , 
     Producto_ID_PRODUCTO INTEGER NOT NULL , 
     Sucursal_ID_SUCURSAL INTEGER NOT NULL , 
     Empleado_ID_EMPLEADO INTEGER NOT NULL 
    )
GO

ALTER TABLE Ventas ADD CONSTRAINT Ventas_PK PRIMARY KEY CLUSTERED (ID_VENTA)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE Ventas 
    ADD CONSTRAINT Ventas_Cliente_FK FOREIGN KEY 
    ( 
     Cliente_ID_CLIENTE
    ) 
    REFERENCES Cliente 
    ( 
     ID_CLIENTE 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Ventas 
    ADD CONSTRAINT Ventas_Empleado_FK FOREIGN KEY 
    ( 
     Empleado_ID_EMPLEADO
    ) 
    REFERENCES Empleado 
    ( 
     ID_EMPLEADO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Ventas 
    ADD CONSTRAINT Ventas_Producto_FK FOREIGN KEY 
    ( 
     Producto_ID_PRODUCTO
    ) 
    REFERENCES Producto 
    ( 
     ID_PRODUCTO 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Ventas 
    ADD CONSTRAINT Ventas_Sucursal_FK FOREIGN KEY 
    ( 
     Sucursal_ID_SUCURSAL
    ) 
    REFERENCES Sucursal 
    ( 
     ID_SUCURSAL 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Ventas 
    ADD CONSTRAINT Ventas_Tiempo_FK FOREIGN KEY 
    ( 
     Tiempo_ID_tiempo
    ) 
    REFERENCES Tiempo 
    ( 
     ID_tiempo 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
