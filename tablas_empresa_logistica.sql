CREATE DATABASE empresa_logistica;
USE empresa_logistica;

CREATE TABLE clientes ( 
    idCliente INT AUTO_INCREMENT, 
    documento VARCHAR(45), 
    nombres VARCHAR(45),
    apellidos VARCHAR(45),
    telefono VARCHAR(45),
    email VARCHAR(45),
    PRIMARY KEY(idCliente) 
);

CREATE TABLE logistica_terrestre ( 
    idCliente INT, 
    tipoproducto VARCHAR(45), 
    cantidadproducto INT,
    fecharegistro DATE,
    fechaentrega DATE,
    bodegaentrega VARCHAR(45),
    precioenvio DOUBLE,
    placavehiculo VARCHAR(45),
    numeroguia VARCHAR(45),
    descuento DOUBLE,
    idLogisticaTer INT AUTO_INCREMENT,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente),
    PRIMARY KEY(idLogisticaTer)
);

CREATE TABLE logistica_maritima ( 
    idCliente INT, 
    tipoproducto VARCHAR(45), 
    cantidadproducto INT,
    fecharegistro DATE,
    fechaentrega DATE,
    puertoentrega VARCHAR(45),
    precioenvio DOUBLE,
    numeroflota VARCHAR(45),
    numeroguia VARCHAR(45),
    descuento DOUBLE,
    idLogisticaMar INT AUTO_INCREMENT,
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente),
    PRIMARY KEY(idLogisticaMar)
);
