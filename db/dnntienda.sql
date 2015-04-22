﻿# Host: localhost  (Version: 5.6.16)
# Date: 2015-03-29 23:40:25
# Generator: MySQL-Front 5.3  (Build 4.121)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tcatalogoestados"
#

DROP TABLE IF EXISTS `tcatalogoestados`;
CREATE TABLE `tcatalogoestados` (
  `claveEstado` int(11) NOT NULL DEFAULT '1' COMMENT 'identificador del estado',
  `estado` varchar(50) NOT NULL DEFAULT '-' COMMENT 'estado para el producto',
  `detalle` text NOT NULL COMMENT 'Detalle del estado',
  PRIMARY KEY (`claveEstado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Catalogo de estados de los productos';

#
# Data for table "tcatalogoestados"
#

/*!40000 ALTER TABLE `tcatalogoestados` DISABLE KEYS */;
INSERT INTO `tcatalogoestados` VALUES (0,'AGOTADO','PRODUCTO SIN STOCK EN LA TIENDA'),(1,'ACTIVO','PRODUCTO ACTIVO, LISTO PARA VENTA'),(2,'PRUEBA','PRODUCTO EN PRUEBA DE VENTAS'),(3,'NUEVO','ARTICULO DE RECIENTE ADQUISICION, LISTO PARA VENTA'),(4,'INACTIVO','PRODUCTO NO LISTO PARA VENTA'),(5,'MUERTO','PRODUCTO NO DISPONIBLE PARA VENTA Y QUE NO SE VOLVERA A RESURTIR');
/*!40000 ALTER TABLE `tcatalogoestados` ENABLE KEYS */;

#
# Structure for table "tcatalogotipos"
#

DROP TABLE IF EXISTS `tcatalogotipos`;
CREATE TABLE `tcatalogotipos` (
  `claveTipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL DEFAULT '-' COMMENT 'tipo del articulo',
  `detalle` text COMMENT 'detalle o caracteristicas del tipo',
  `activo` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`claveTipo`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='tabla de catalogo de tipos';

#
# Data for table "tcatalogotipos"
#

/*!40000 ALTER TABLE `tcatalogotipos` DISABLE KEYS */;
INSERT INTO `tcatalogotipos` VALUES (1,'LACTEOS','TIPO DE PRODUCTOS LACTEOS, COMO QUESO, LECHE, YOGURT',1),(2,'CARNES FRIAS','PRODUCTOS COMO SALCHICHAS, JAMON, QUESO DE PUERCO',1),(3,'AGUAS','ARTICULOS COMO AGUA SIMPLE, AGUA DE SABOR, AGUA GASIFICADA, AGUA MINERA',1),(4,'REFRESCOS','PRODUCTOS COMO REFRESCOS DE COLA, REFRESCOS DE SABORES.',1),(5,'DULCES','PRODUCTOS COMO DULCES CONFITADOS, DULCES DE CARAMELO, BOMBONES',1),(6,'CHOCOLATE','PRODUCTOS CON O A BASE DE CHOCOLATE',1);
/*!40000 ALTER TABLE `tcatalogotipos` ENABLE KEYS */;

#
# Structure for table "tcatalogounidades"
#

DROP TABLE IF EXISTS `tcatalogounidades`;
CREATE TABLE `tcatalogounidades` (
  `claveUnidad` int(11) NOT NULL DEFAULT '0' COMMENT 'Clave de la unidad',
  `unidad` varchar(50) NOT NULL DEFAULT '-' COMMENT 'nombre de la unidad',
  `abrevia` varchar(5) NOT NULL DEFAULT '-' COMMENT 'abreviatura de la unidad',
  `detalle` text COMMENT 'detalle de la unidad',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estado de la unidad',
  PRIMARY KEY (`claveUnidad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tcatalogounidades"
#

/*!40000 ALTER TABLE `tcatalogounidades` DISABLE KEYS */;
INSERT INTO `tcatalogounidades` VALUES (1,'PIEZA','PZA','PIEZA BASICA DE UN ARTICULO\t',1),(2,'GRAMOS','GR','PESO EN GRAMOS\t',1),(3,'MILITROS','ML','CAPACIDAD EN MILILITROS',1),(4,'PAQUETE','PQT','PAQUETE O GRUPO DE ARTICULOS',1),(5,'KILOGRAMO','KG','KILOGRAMO DE ALGUNA COSA',1),(6,'LITRO','LT','LITRO DE ALGUN LIQUIDO',1);
/*!40000 ALTER TABLE `tcatalogounidades` ENABLE KEYS */;

#
# Structure for table "tcatperfiles"
#

DROP TABLE IF EXISTS `tcatperfiles`;
CREATE TABLE `tcatperfiles` (
  `clavePerfil` int(3) NOT NULL DEFAULT '0' COMMENT 'identificador del perfil',
  `perfil` varchar(50) NOT NULL DEFAULT '-' COMMENT 'nombre del perfil',
  `detalle` text COMMENT 'detalle del perfil',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estatus del perfil',
  PRIMARY KEY (`clavePerfil`),
  KEY `ix_tcatperfiles_01` (`perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CATALOGO DE PERFILES DE USUARIOS';

#
# Data for table "tcatperfiles"
#

/*!40000 ALTER TABLE `tcatperfiles` DISABLE KEYS */;
INSERT INTO `tcatperfiles` VALUES (1,'ADMINISTRADOR','PERFIL DE ADMINISTRADOR DEL SISTEMA',1),(2,'GERENTE','GERENTE DEL NEGOCIO\t',1),(3,'VENDEDOR','VENDEDOR DEL NEGOCIO',1),(4,'ALMACEN','USUARIO DE ALMACEN',1);
/*!40000 ALTER TABLE `tcatperfiles` ENABLE KEYS */;

#
# Structure for table "tcompras"
#

DROP TABLE IF EXISTS `tcompras`;
CREATE TABLE `tcompras` (
  `folioCompra` bigint(18) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la compra',
  `claveProveedor` int(11) NOT NULL DEFAULT '0' COMMENT 'Clave del proveedor de compra',
  `fechaCompra` date DEFAULT '1900-01-01' COMMENT 'fecha de la compra',
  `totalProductos` int(11) NOT NULL DEFAULT '0' COMMENT 'total de productos comprados',
  `costo` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'costo de la compra sin impuesto',
  `iva` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor de iva de la compra',
  `ieps` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor del ieps del producto',
  `estadoCompra` int(3) NOT NULL DEFAULT '1' COMMENT 'Estado de la compra',
  `detalle` text COMMENT 'Detalle de la compra',
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de registro de la compra',
  PRIMARY KEY (`folioCompra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tcompras"
#

/*!40000 ALTER TABLE `tcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcompras` ENABLE KEYS */;

#
# Structure for table "tinventario"
#

DROP TABLE IF EXISTS `tinventario`;
CREATE TABLE `tinventario` (
  `idinventario` bigint(2) NOT NULL AUTO_INCREMENT COMMENT 'identificador para el inventario',
  PRIMARY KEY (`idinventario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para guardar el inventario de la tienda';

#
# Data for table "tinventario"
#

/*!40000 ALTER TABLE `tinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinventario` ENABLE KEYS */;

#
# Structure for table "tlogacceso"
#

DROP TABLE IF EXISTS `tlogacceso`;
CREATE TABLE `tlogacceso` (
  `idlog` bigint(18) NOT NULL AUTO_INCREMENT COMMENT 'identificador unico del log',
  `login` varchar(100) NOT NULL DEFAULT '-' COMMENT 'usuario',
  `fechaAcceso` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora de acceso',
  `accesoCorrecto` int(3) NOT NULL DEFAULT '1' COMMENT 'bandera para indicar si el acceso fue correcto',
  `comentario` text COMMENT 'detalle del acceso a la aplicacion',
  PRIMARY KEY (`idlog`),
  KEY `ix_tlogacceso_01` (`login`),
  KEY `ix_tlogacceso_02` (`fechaAcceso`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='TABLA PARA REALIZAR LOG DE ACCESOS PARA LA APLICACION';

#
# Data for table "tlogacceso"
#

/*!40000 ALTER TABLE `tlogacceso` DISABLE KEYS */;
INSERT INTO `tlogacceso` VALUES (1,'daniel','2015-02-24 23:50:48',1,'CONTRASEÑA INCORRECTA'),(2,'daniel','2015-02-24 23:51:16',2,'CONTRASEÑA INCORRECTA'),(3,'danielO','2015-02-24 23:53:10',3,'USUARIO NO EXISTE'),(4,'danielO','2015-03-23 22:32:07',3,'USUARIO NO EXISTE'),(5,'danielO','2015-03-23 22:32:18',3,'USUARIO NO EXISTE'),(6,'danielO','2015-03-23 22:34:12',3,'USUARIO NO EXISTE'),(7,'danielO','2015-03-23 22:34:14',3,'USUARIO NO EXISTE'),(8,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(9,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(10,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(11,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(12,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(13,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE'),(14,'danielO','2015-03-23 22:34:16',3,'USUARIO NO EXISTE'),(15,'danielO','2015-03-23 22:34:16',3,'USUARIO NO EXISTE'),(16,'daniel','2015-03-23 22:34:24',1,'INICIO DE SESION CORRECTO'),(17,'daniel','2015-03-23 22:34:30',1,'INICIO DE SESION CORRECTO'),(18,'daniel','2015-03-29 14:50:20',1,'INICIO DE SESION CORRECTO');
/*!40000 ALTER TABLE `tlogacceso` ENABLE KEYS */;

#
# Structure for table "tmovimientoinventario"
#

DROP TABLE IF EXISTS `tmovimientoinventario`;
CREATE TABLE `tmovimientoinventario` (
  `idmovimiento` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del movimiento',
  `movimiento` varchar(5) NOT NULL DEFAULT '-' COMMENT 'movimiento de inventario',
  `detalle` text COMMENT 'detalle del movimiento',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estatus del movimiento del almacen',
  PRIMARY KEY (`idmovimiento`),
  KEY `ix_tmovimientoinventario` (`movimiento`) COMMENT 'busqueda por movimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tmovimientoinventario"
#

/*!40000 ALTER TABLE `tmovimientoinventario` DISABLE KEYS */;
INSERT INTO `tmovimientoinventario` VALUES (1,'EP','ENTRADA DE ARTICULOS',1),(2,'VP','VENTA DE PRODUCTOS',1),(3,'AP','AJUSTE DE PRODUCTOS',1);
/*!40000 ALTER TABLE `tmovimientoinventario` ENABLE KEYS */;

#
# Structure for table "tproductos"
#

DROP TABLE IF EXISTS `tproductos`;
CREATE TABLE `tproductos` (
  `claveProducto` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador unico del producto',
  `claveProveedor` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del proveedor',
  `producto` varchar(255) NOT NULL DEFAULT '-' COMMENT 'nombre del producto',
  `descripcion` text NOT NULL COMMENT 'descripcion del articulo',
  `claveTipo` int(11) NOT NULL DEFAULT '1' COMMENT 'clave del tipo del articulo',
  `claveEstado` int(11) NOT NULL DEFAULT '1' COMMENT 'clave del estado del producto',
  `costo` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor del costo del producto',
  `venta` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor de venta del producto sin impuesto',
  `iva` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor de iva del producto',
  `ieps` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor del ieps del producto',
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de registro del producto',
  `fechaUltimaModif` timestamp NULL DEFAULT NULL COMMENT 'fecha de ultima modificacion',
  `fechaUltimaCompra` date DEFAULT NULL COMMENT 'Fecha de ultima compra del producto',
  `cantidadUltimaCompra` int(11) NOT NULL DEFAULT '0' COMMENT 'cantidad ultima compra',
  `claveUnidad` int(11) NOT NULL DEFAULT '1' COMMENT 'Identificador de unidad de medida',
  `cantidadUnidad` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cantidad de la unidad',
  `codigoBarras` varchar(50) NOT NULL DEFAULT '-' COMMENT 'Codigo de barras del articulo',
  PRIMARY KEY (`claveProducto`),
  KEY `ix_productos_01` (`producto`),
  KEY `ix_productos_02` (`claveProveedor`),
  KEY `ix_producto_03` (`claveTipo`,`claveEstado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='catalogo de productos';

#
# Data for table "tproductos"
#

/*!40000 ALTER TABLE `tproductos` DISABLE KEYS */;
INSERT INTO `tproductos` VALUES (1,1,'producto1','producto1',1,1,10.0000,15.0000,1.6000,1.1000,'2015-03-29 21:21:11',NULL,NULL,0,1,1.0000,'70908987656589');
/*!40000 ALTER TABLE `tproductos` ENABLE KEYS */;

#
# Structure for table "tproveedores"
#

DROP TABLE IF EXISTS `tproveedores`;
CREATE TABLE `tproveedores` (
  `claveProveedor` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(255) NOT NULL DEFAULT '-' COMMENT 'nombre del proveedor',
  `razonSocial` varchar(255) NOT NULL DEFAULT '-' COMMENT 'razon social o nombre legal del proveedor',
  `email` varchar(255) NOT NULL DEFAULT '-' COMMENT 'email para contacto',
  `telefonos` text COMMENT 'telefonos para contacto',
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de registro del proveedor',
  `activo` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'Estado del proveedor',
  PRIMARY KEY (`claveProveedor`),
  KEY `ix_tproveedores_01` (`activo`),
  KEY `ix_tproveedores_02` (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='catalogo de proveedores';

#
# Data for table "tproveedores"
#

/*!40000 ALTER TABLE `tproveedores` DISABLE KEYS */;
INSERT INTO `tproveedores` VALUES (1,'PROVEEDOR1','RAZONPROV1','danielnakata@gmail.com','5552980196','2015-03-29 15:35:35',1),(2,'PROVEEDOR2','RAZONPROV2','danielnakata@gmail.com','5552980196','2015-03-29 15:38:25',1);
/*!40000 ALTER TABLE `tproveedores` ENABLE KEYS */;

#
# Structure for table "ttickets"
#

DROP TABLE IF EXISTS `ttickets`;
CREATE TABLE `ttickets` (
  `ticket` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del ticket',
  `fecha` date NOT NULL DEFAULT '1900-01-01' COMMENT 'fecha de inicio del ticket',
  `activo` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'estado de la serie del ticket',
  PRIMARY KEY (`ticket`,`fecha`),
  KEY `ix_tticket_01` (`fecha`) COMMENT 'indice para la busqueda de los tickets'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para el conteo de tickets';

#
# Data for table "ttickets"
#

/*!40000 ALTER TABLE `ttickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttickets` ENABLE KEYS */;

#
# Structure for table "tusuarios"
#

DROP TABLE IF EXISTS `tusuarios`;
CREATE TABLE `tusuarios` (
  `login` varchar(100) NOT NULL DEFAULT '' COMMENT 'login unico del usuario',
  `contrasena` varchar(200) NOT NULL DEFAULT '-' COMMENT 'contrasena en md5 del usuario',
  `nombre` varchar(100) NOT NULL DEFAULT '-' COMMENT 'nombre del usuario',
  `apellidos` varchar(100) NOT NULL DEFAULT '-' COMMENT 'apellidos del usuario',
  `activo` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'estado del usuario',
  `fecharegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora del registro del usuario',
  `fechaultimologin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'fecha y hora del ultimo login',
  `clavePerfil` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'perfil del usuario',
  PRIMARY KEY (`login`),
  KEY `ix_tusuarios_01` (`nombre`),
  KEY `ix_tusuarios_02` (`clavePerfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para los usuarios';

#
# Data for table "tusuarios"
#

/*!40000 ALTER TABLE `tusuarios` DISABLE KEYS */;
INSERT INTO `tusuarios` VALUES ('daniel','f6fdffe48c908deb0f4c3bd36c032e72','daniel','ortega',1,'2015-02-24 23:27:01','2015-03-29 14:50:20',1);
/*!40000 ALTER TABLE `tusuarios` ENABLE KEYS */;

#
# Structure for table "tventas"
#

DROP TABLE IF EXISTS `tventas`;
CREATE TABLE `tventas` (
  `idventa` bigint(2) NOT NULL AUTO_INCREMENT COMMENT 'campo de identificador de la venta',
  `fechaventa` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de la venta',
  `ticket` int(11) NOT NULL DEFAULT '0' COMMENT 'numero de ticket de la venta',
  `totalarticulos` int(11) NOT NULL DEFAULT '0' COMMENT 'total de articulos vendidos',
  `totalventa` double(10,4) DEFAULT '0.0000' COMMENT 'total de la venta con impuesto',
  `totalventasinimpuesto` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'total de la venta sin impuesto',
  `totalimpuesto` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'total del impuesto de la venta',
  `totalarticulosimp` int(11) NOT NULL DEFAULT '0' COMMENT 'total de articulos con impuesto',
  `totalarticulosexcentos` int(11) NOT NULL DEFAULT '0' COMMENT 'total de articulos excentos de impuestos',
  `activo` tinyint(3) DEFAULT '1' COMMENT 'estado de la venta',
  `detalle` text NOT NULL COMMENT 'detalles de la venta',
  `usuario` int(11) NOT NULL DEFAULT '0' COMMENT 'usuario que genera la venta',
  PRIMARY KEY (`idventa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para el registro de ventas';

#
# Data for table "tventas"
#

/*!40000 ALTER TABLE `tventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tventas` ENABLE KEYS */;

#
# Structure for table "tventasdetalle"
#

DROP TABLE IF EXISTS `tventasdetalle`;
CREATE TABLE `tventasdetalle` (
  `idventadetalle` bigint(18) NOT NULL AUTO_INCREMENT COMMENT 'Tabla para el detalle de la venta',
  `idventa` bigint(18) NOT NULL DEFAULT '0' COMMENT 'identificador de la venta',
  `ticket` int(11) NOT NULL DEFAULT '0' COMMENT 'numero del ticket de la venta',
  `fechaventa` date NOT NULL DEFAULT '1900-01-01' COMMENT 'Fecha de la venta',
  `claveArticulo` int(10) NOT NULL DEFAULT '0' COMMENT 'identificador del articulo vendido',
  `costo` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'costo del articulo',
  `venta` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor de venta del producto sin impuesto',
  `impuesto` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor del impuesto del articulo',
  `activo` int(3) DEFAULT '1' COMMENT 'estado del articulo de venta',
  `descuento` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'descuento del articulo',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora del registro',
  PRIMARY KEY (`idventadetalle`),
  KEY `ix_tventadetalle_01` (`idventa`) COMMENT 'identificador de venta',
  KEY `ix_tventadetalle_02` (`ticket`,`fechaventa`) COMMENT 'busqueda por ticket y fecha',
  KEY `ix_tventadetalle_03` (`claveArticulo`) COMMENT 'busqueda por clave del articulo'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla de detalle de ventas';

#
# Data for table "tventasdetalle"
#

/*!40000 ALTER TABLE `tventasdetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tventasdetalle` ENABLE KEYS */;

#
# Procedure "SP_AGREGA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_PRODUCTO`;
CREATE PROCEDURE SP_AGREGA_PRODUCTO(
	paclaveProveedor int
	,paproducto varchar(255)
	,padescripcion text
	,paclaveTipo int
	,pacosto double
	,paventa double
	,paiva double
	,paieps double
	,paclaveunidad int
	,pacantidadunidad double
	,pacodigoBarras varchar(50)
)
BEGIN
	DECLARE vlExisteProveedor INT;
	DECLARE vlExisteProducto INT;
	DECLARE vlMaxClaveProducto INT;
	DECLARE res int;
	declare msg varchar(100);
	set vlMaxClaveProducto = 0;
	
	set res = 0;
	set msg = '';
	
	select ifnull(
	(select claveProveedor
	  from tproveedores
	 where claveProveedor = paclaveProveedor),0)
	 into vlExisteProveedor;
	 
	select ifnull(
  	(SELECT MAX(claveProducto)
  	  FROM tproductos),0)
    INTO vlMaxClaveProducto; 
	 
	 
	if vlExisteProveedor > 0
	then
		set vlMaxClaveProducto = vlMaxClaveProducto + 1;
		insert into tproductos (claveProducto, claveProveedor, producto, descripcion, claveTipo
		,claveEstado, costo, venta, iva, ieps, fechaRegistro, claveUnidad, cantidadUnidad, codigoBarras)
		value(vlMaxClaveProducto, paclaveProveedor, paproducto, padescripcion, paclaveTipo,
		1, pacosto, paventa, paiva, paieps, current_timestamp(), paclaveunidad, pacantidadunidad,
		pacodigoBarras);
		select 1 as res, 'PRODUCTO AGREGADO' as msg;
	else
		select 0 as res, 'EL PROVEEDOR NO EXISTE' as msg;
	end if;
END;

#
# Procedure "SP_AGREGA_PROVEEDOR"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_PROVEEDOR`;
CREATE PROCEDURE `SP_AGREGA_PROVEEDOR`(
       in panombre varchar(100)
       ,in parazonsocial varchar(100)
       ,in paemail varchar(255)
       ,in patelefonos varchar(255)
)
BEGIN
	DECLARE vlMaxClaveProveedor int;
	DECLARE vlExisteProveedor int;
	set vlMaxClaveProveedor = 0;
	set vlExisteProveedor = 0;
	
   select ifnull(
  	(SELECT MAX(claveProveedor)
  	  FROM tproveedores),0)
    INTO vlMaxClaveProveedor;
	  
	SELECT COUNT(*)
	  INTO vlExisteProveedor
	  FROM tproveedores
	 WHERE razonSocial = parazonsocial;
	 
	 
	if vlExisteProveedor = 0 
	then
		set vlMaxClaveProveedor = vlMaxClaveProveedor + 1;
		insert into tproveedores (claveProveedor, nombre, razonSocial, email, telefonos, fechaRegistro, activo)
		values (vlMaxClaveProveedor, panombre, parazonsocial, paemail, patelefonos, current_timestamp(), 1);
		select 1 as res, 'PROVEEDOR AGREGADO' as msg;
	else
		UPDATE tproveedores set email = paemail, telefonos = patelefonos
		WHERE razonSocial = parazonsocial;
		select 1 as res, 'PROVEEDOR MODIFICADO' as msg;
	end if;
     
END;

#
# Procedure "SP_CONSULTA_DATOS_USUARIO"
#

DROP PROCEDURE IF EXISTS `SP_CONSULTA_DATOS_USUARIO`;
CREATE PROCEDURE `SP_CONSULTA_DATOS_USUARIO`(`paTipoBsq` int(3), `paFiltro` varchar(100))
BEGIN
     declare vlTipoBsqLogin int(3);
     declare vlTipoBsqNombre int(3);
     declare vlTipoBsqApellido int(3);
     declare vlTipoBsqEstado int(3);
     declare vlTipoBsqPerfil int(3);
     
     set vlTipoBsqLogin = 1;
     set vlTipoBsqNombre = 2;
     set vlTipoBsqApellido = 3;
     set vlTipoBsqEstado = 4;
     set vlTipoBsqPerfil = 5;
     
     case paTipoBsq 
          when vlTipoBsqLogin then 
               SELECT a.login as login
                 ,a.contrasena as contrasena
                 ,upper(a.nombre) as nombre
                 ,upper(a.apellidos) as apellidos
                 ,a.activo as idactivo
                 ,a.fecharegistro as fechareg
                 ,a.fechaultimologin as ultimologin
                 ,a.clavePerfil as idperfil
                 ,b.perfil as perfil
            FROM tusuarios a
           INNER JOIN tcatperfiles b ON b.clavePerfil = a.clavePerfil
           WHERE a.login = paFiltro;
           
           when vlTipoBsqNombre then 
               SELECT a.login as login
                 ,a.contrasena as contrasena
                 ,upper(a.nombre) as nombre
                 ,upper(a.apellidos) as apellidos
                 ,a.activo as idactivo
                 ,a.fecharegistro as fechareg
                 ,a.fechaultimologin as ultimologin
                 ,a.clavePerfil as idperfil
                 ,b.perfil as perfil
            FROM tusuarios a
           INNER JOIN tcatperfiles b ON b.clavePerfil = a.clavePerfil
           WHERE a.nombre like concat(paFiltro,'%');

           when vlTipoBsqApellido then 
               SELECT a.login as login
                 ,a.contrasena as contrasena
                 ,upper(a.nombre) as nombre
                 ,upper(a.apellidos) as apellidos
                 ,a.activo as idactivo
                 ,a.fecharegistro as fechareg
                 ,a.fechaultimologin as ultimologin
                 ,a.clavePerfil as idperfil
                 ,b.perfil as perfil
            FROM tusuarios a
           INNER JOIN tcatperfiles b ON b.clavePerfil = a.clavePerfil
           WHERE a.apellidos like concat(paFiltro,'%');
           
           when vlTipoBsqEstado then 
               SELECT a.login as login
                 ,a.contrasena as contrasena
                 ,upper(a.nombre) as nombre
                 ,upper(a.apellidos) as apellidos
                 ,a.activo as idactivo
                 ,a.fecharegistro as fechareg
                 ,a.fechaultimologin as ultimologin
                 ,a.clavePerfil as idperfil
                 ,b.perfil as perfil
            FROM tusuarios a
           INNER JOIN tcatperfiles b ON b.clavePerfil = a.clavePerfil
           WHERE a.activo = paFiltro;
           
           when vlTipoBsqPerfil then 
               SELECT a.login as login
                 ,a.contrasena as contrasena
                 ,upper(a.nombre) as nombre
                 ,upper(a.apellidos) as apellidos
                 ,a.activo as idactivo
                 ,a.fecharegistro as fechareg
                 ,a.fechaultimologin as ultimologin
                 ,a.clavePerfil as idperfil
                 ,b.perfil as perfil
            FROM tusuarios a
           INNER JOIN tcatperfiles b ON b.clavePerfil = a.clavePerfil
           WHERE a.clavePerfil = paFiltro;
                 
           else
               begin
                    select 0 as res, 'OPCION INVALIDA' as msg;
               end;
           
           end case;
END;

#
# Procedure "SP_CONSULTA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_CONSULTA_PRODUCTO`;
CREATE PROCEDURE SP_CONSULTA_PRODUCTO(
paTipoBsq int(11)
,paFiltro text
)
BEGIN
	declare vlBsqxClaveProd int;
	declare vlBsqxClaveProv int;
	declare vlBsqxBarCod int;
	declare vlBsqxNombre int;
	declare vlBsqxEstado int;
	declare vlBsqxTipo int;
	
	set vlBsqxClaveProd = 1;
	set vlBsqxClaveProv = 2;
	set vlBsqxBarCod = 3;
	set vlBsqxNombre = 4;
	set vlBsqxEstado = 5;
	set vlBsqxTipo = 6;
	
	case paTipoBsq
		when vlBsqxClaveProd then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.claveProducto = paFiltro;
		when vlBsqxClaveProv then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.claveProveedor = paFiltro;
		when vlBsqxBarCod then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.codigoBarras = paFiltro;
		when vlBsqxNombre then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.producto like concat(paFiltro,'%');
		when vlBsqxEstado then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.claveEstado = paFiltro;
		when vlBsqxTipo then
			SELECT a.claveProducto
				   ,a.claveProveedor
				   ,upper(b.nombre) as proveedor
				   ,upper(a.producto) as producto
				   ,a.claveTipo
				   ,a.claveEstado
				   ,a.costo
				   ,a.venta
				   ,a.iva
				   ,a.ieps
				   ,a.fechaRegistro
				   ,a.fechaUltimaModif
				   ,a.fechaUltimaCompra
				   ,a.cantidadUltimaCompra
				   ,a.claveUnidad
				   ,a.cantidadUnidad
				   ,a.codigoBarras
				   ,upper(c.estado) as estado
				   ,upper(d.tipo) as tipo
				   ,upper(e.unidad) as unidad
				   ,upper(e.abrevia) as abrevia
			  FROM tproductos a 
			 INNER JOIN tproveedores b on b.claveProveedor = a.claveProveedor
			 INNER JOIN tcatalogoestados c on c.claveEstado = a.claveEstado
			 INNER JOIN tcatalogotipos d on d.claveTipo = a.claveTipo
			 INNER JOIN tcatalogounidades e on e.claveUnidad = a.claveUnidad
			 WHERE a.claveTipo = paFiltro;
		else
			begin
				select 0 as res, 'TIPO DE BUSQUEDA NO VALIDA' as msg;
			end;
	end case;
		
END;

#
# Procedure "SP_CONSULTA_PROVEDOR"
#

DROP PROCEDURE IF EXISTS `SP_CONSULTA_PROVEDOR`;
CREATE PROCEDURE `SP_CONSULTA_PROVEDOR`(`paTipoBsq` int(11))
BEGIN
END;

#
# Procedure "SP_INICIO_SESION"
#

DROP PROCEDURE IF EXISTS `SP_INICIO_SESION`;
CREATE PROCEDURE `SP_INICIO_SESION`(palogin varchar(100), pacontrasena varchar(200))
BEGIN
     declare vlExisteUsuario int(11);
     declare vlUsuarioCompara varchar(100);
     declare vlContrasenaCompara varchar(200);
     select ifnull((select 1 from tusuarios where login = palogin),0) into vlExisteUsuario;
     
     if vlExisteUsuario = 1 then
        select login, contrasena 
          into vlUsuarioCompara, vlContrasenaCompara 
          from tusuarios 
         where login = palogin;
         
        if vlContrasenaCompara = pacontrasena then
           UPDATE tusuarios set fechaultimologin = now() where login = palogin;
           insert into tlogacceso(login, accesoCorrecto, comentario) values (palogin, 1, 'INICIO DE SESION CORRECTO');
            select 1 AS RES, 'INICIO DE SESION CORRECTO' AS MSG;
        else
            insert into tlogacceso(login, accesoCorrecto, comentario) values (palogin, 2, 'CONTRASEÑA INCORRECTA');
            select 0 AS RES, 'CONTRASEÑA INCORRECTA' AS MSG;
        end if;
     else
         insert into tlogacceso(login, accesoCorrecto, comentario) values (palogin, 3, 'USUARIO NO EXISTE');
         select 0 AS RES, 'NO EXISTE EL USUARIO' AS MSG;
     end if;
END;