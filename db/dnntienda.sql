# Host: localhost  (Version: 5.6.16)
# Date: 2015-07-06 22:31:46
# Generator: MySQL-Front 5.3  (Build 4.121)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tcatalogoestadocompras"
#

DROP TABLE IF EXISTS `tcatalogoestadocompras`;
CREATE TABLE `tcatalogoestadocompras` (
  `idestadocompra` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `estatus` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idestadocompra`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Data for table "tcatalogoestadocompras"
#

/*!40000 ALTER TABLE `tcatalogoestadocompras` DISABLE KEYS */;
INSERT INTO `tcatalogoestadocompras` VALUES (1,'CAPTURADA',1),(2,'RECIBIDA',1),(3,'RECHAZADA',1),(4,'CANCELADA',1),(5,'EN CURSO',1),(6,'CANCELADA PROVEEDOR',1),(7,'RECHAZADA PROVEEDOR',1),(8,'INCOMPLETA',1);
/*!40000 ALTER TABLE `tcatalogoestadocompras` ENABLE KEYS */;

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
# Structure for table "tcatalogolog"
#

DROP TABLE IF EXISTS `tcatalogolog`;
CREATE TABLE `tcatalogolog` (
  `idtipolog` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del tipo de movimiento',
  `descripcion` varchar(50) NOT NULL DEFAULT '-' COMMENT 'descripcion del movimiento del log',
  `estatus` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipolog`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

#
# Data for table "tcatalogolog"
#

/*!40000 ALTER TABLE `tcatalogolog` DISABLE KEYS */;
INSERT INTO `tcatalogolog` VALUES (1,'agrega producto',1),(2,'agrega proveedor',1),(3,'consulta datos usuarios',1),(4,'consulta producto',1),(5,'consulta proveedor',1),(6,'registro compra',1),(7,'movimiento inventario',1),(8,'inserta detalle compra',1),(9,'agrega usuario',1),(10,'modifica estatus proveedor',1),(11,'modifica estatus producto',1),(12,'modifica datos producto',1),(13,'modifica datos proveedor',1),(14,'agrega tipo de producto',1),(15,'realiza cambio de precio',1);
/*!40000 ALTER TABLE `tcatalogolog` ENABLE KEYS */;

#
# Structure for table "tcatalogotipos"
#

DROP TABLE IF EXISTS `tcatalogotipos`;
CREATE TABLE `tcatalogotipos` (
  `claveTipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL DEFAULT '-' COMMENT 'tipo del articulo',
  `detalle` text COMMENT 'detalle o caracteristicas del tipo',
  `activo` tinyint(3) NOT NULL DEFAULT '1',
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`claveTipo`,`idtienda`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='tabla de catalogo de tipos';

#
# Data for table "tcatalogotipos"
#

/*!40000 ALTER TABLE `tcatalogotipos` DISABLE KEYS */;
INSERT INTO `tcatalogotipos` VALUES (1,'LACTEOS','TIPO DE PRODUCTOS LACTEOS, COMO QUESO, LECHE, YOGURT',1,0),(2,'CARNES FRIAS','PRODUCTOS COMO SALCHICHAS, JAMON, QUESO DE PUERCO',1,0),(3,'AGUAS','ARTICULOS COMO AGUA SIMPLE, AGUA DE SABOR, AGUA GASIFICADA, AGUA MINERA',1,0),(4,'REFRESCOS','PRODUCTOS COMO REFRESCOS DE COLA, REFRESCOS DE SABORES.',1,0),(5,'DULCES','PRODUCTOS COMO DULCES CONFITADOS, DULCES DE CARAMELO, BOMBONES',1,0),(6,'CHOCOLATE','PRODUCTOS CON O A BASE DE CHOCOLATE',1,0);
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
  `folioCompra` bigint(18) NOT NULL DEFAULT '0' COMMENT 'identificador de la compra',
  `claveProveedor` int(11) NOT NULL DEFAULT '0' COMMENT 'Clave del proveedor de compra',
  `fechaCompra` date DEFAULT '1900-01-01' COMMENT 'fecha de la compra',
  `totalProductos` int(11) NOT NULL DEFAULT '0' COMMENT 'total de productos comprados',
  `costo` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'costo de la compra sin impuesto',
  `iva` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor de iva de la compra',
  `ieps` double(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'valor del ieps del producto',
  `estadoCompra` int(3) NOT NULL DEFAULT '1' COMMENT 'Estado de la compra',
  `detalle` text COMMENT 'Detalle de la compra',
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de registro de la compra',
  `idtienda` int(11) NOT NULL DEFAULT '0',
  `factura` varchar(255) DEFAULT '-' COMMENT 'factura de la compra',
  `usuarioreg` varchar(255) NOT NULL DEFAULT '-' COMMENT 'usuario que registra la compra',
  `fechamod` timestamp NULL DEFAULT NULL COMMENT 'fecha de modificacion de la compra',
  `usuariomod` varchar(255) DEFAULT '-',
  PRIMARY KEY (`folioCompra`,`idtienda`),
  KEY `ix_tcompras_01` (`factura`,`idtienda`),
  KEY `ix_tcompras_02` (`claveProveedor`,`idtienda`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "tcompras"
#

/*!40000 ALTER TABLE `tcompras` DISABLE KEYS */;
INSERT INTO `tcompras` VALUES (1,1,'2015-06-26',150,150000.0000,24000.0000,16500.0000,1,'PRIMERA COMPRA DEL PROVEEDOR','2015-06-26 22:36:17',0,'FAC-0000001','daniel',NULL,'-'),(2,1,'2015-06-26',150,180000.0000,28800.0000,19800.0000,1,'SEGUNDA COMPRA DEL PROVEEDOR','2015-06-26 22:36:52',0,'FAC-0000002','daniel',NULL,'-');
/*!40000 ALTER TABLE `tcompras` ENABLE KEYS */;

#
# Structure for table "tcomprasdetalle"
#

DROP TABLE IF EXISTS `tcomprasdetalle`;
CREATE TABLE `tcomprasdetalle` (
  `idcompradetalle` bigint(18) NOT NULL AUTO_INCREMENT,
  `idfoliocompra` bigint(18) NOT NULL DEFAULT '0',
  `claveProducto` bigint(18) NOT NULL DEFAULT '0',
  `cantidad` double(10,4) NOT NULL DEFAULT '0.0000',
  `costoUnitario` double(10,4) NOT NULL DEFAULT '0.0000',
  `valorVenta` double(10,4) NOT NULL DEFAULT '0.0000',
  `iva` double(10,4) NOT NULL DEFAULT '0.0000',
  `ieps` double(10,4) NOT NULL DEFAULT '0.0000',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idtienda` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador de la tienda que realiza la accion',
  PRIMARY KEY (`idcompradetalle`,`idfoliocompra`,`idtienda`),
  KEY `ix_tcompradetalle_01` (`idfoliocompra`),
  KEY `ix_tcompradetalle_02` (`claveProducto`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='tabla que almacenara los detalles de la compra realizada';

#
# Data for table "tcomprasdetalle"
#

/*!40000 ALTER TABLE `tcomprasdetalle` DISABLE KEYS */;
INSERT INTO `tcomprasdetalle` VALUES (1,1,1,50.0000,1.0000,1.5500,0.2480,0.1705,'2015-06-26 23:08:25',0),(2,1,1,50.0000,1.1000,1.6500,0.2496,0.1815,'2015-06-26 23:09:03',0);
/*!40000 ALTER TABLE `tcomprasdetalle` ENABLE KEYS */;

#
# Structure for table "tinventario"
#

DROP TABLE IF EXISTS `tinventario`;
CREATE TABLE `tinventario` (
  `idinventario` bigint(18) NOT NULL AUTO_INCREMENT COMMENT 'identificador para el inventario',
  `claveProducto` bigint(18) NOT NULL DEFAULT '0' COMMENT 'identificador del producto',
  `claveProveedor` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del proveedor',
  `idmovimiento` int(11) NOT NULL DEFAULT '0' COMMENT 'Tipo de movimiento del inventario',
  `fecha` date DEFAULT NULL COMMENT 'fecha del movimiento',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `factura` varchar(255) DEFAULT '-' COMMENT 'factura o referencia del movimiento',
  `idtienda` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador de la tienda',
  `cantidad` double(10,4) NOT NULL DEFAULT '0.0000',
  `costo` double(10,4) NOT NULL DEFAULT '0.0000',
  `usuario` varchar(255) NOT NULL DEFAULT '-' COMMENT 'usuario que realiza la accion',
  PRIMARY KEY (`idinventario`,`idtienda`),
  KEY `ix_tinventario_01` (`claveProducto`,`idtienda`) COMMENT 'indice para busqueda por identificador de producto y tienda',
  KEY `ix_tinventario_03` (`claveProveedor`,`idmovimiento`,`idtienda`),
  KEY `ix_tinventario_02` (`claveProducto`,`idmovimiento`,`fecha`,`idtienda`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='tabla para guardar el inventario de la tienda';

#
# Data for table "tinventario"
#

/*!40000 ALTER TABLE `tinventario` DISABLE KEYS */;
INSERT INTO `tinventario` VALUES (1,1,1,1,'2015-01-01','2015-06-26 21:56:57','-',0,100.0000,1000.0000,'-'),(2,1,1,3,'2015-01-01','2015-06-26 21:57:21','-',0,10.0000,100.0000,'-'),(3,1,1,3,'2015-01-01','2015-06-26 22:03:43','-',0,7.0000,100.0000,'-'),(4,1,1,2,'2015-01-01','2015-06-26 22:06:30','-',0,-7.0000,80.0000,'-');
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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idlog`,`idtienda`),
  KEY `ix_tlogacceso_01` (`login`),
  KEY `ix_tlogacceso_02` (`fechaAcceso`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='TABLA PARA REALIZAR LOG DE ACCESOS PARA LA APLICACION';

#
# Data for table "tlogacceso"
#

/*!40000 ALTER TABLE `tlogacceso` DISABLE KEYS */;
INSERT INTO `tlogacceso` VALUES (1,'daniel','2015-02-24 23:50:48',1,'CONTRASEÑA INCORRECTA',0),(2,'daniel','2015-02-24 23:51:16',2,'CONTRASEÑA INCORRECTA',0),(3,'danielO','2015-02-24 23:53:10',3,'USUARIO NO EXISTE',0),(4,'danielO','2015-03-23 22:32:07',3,'USUARIO NO EXISTE',0),(5,'danielO','2015-03-23 22:32:18',3,'USUARIO NO EXISTE',0),(6,'danielO','2015-03-23 22:34:12',3,'USUARIO NO EXISTE',0),(7,'danielO','2015-03-23 22:34:14',3,'USUARIO NO EXISTE',0),(8,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(9,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(10,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(11,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(12,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(13,'danielO','2015-03-23 22:34:15',3,'USUARIO NO EXISTE',0),(14,'danielO','2015-03-23 22:34:16',3,'USUARIO NO EXISTE',0),(15,'danielO','2015-03-23 22:34:16',3,'USUARIO NO EXISTE',0),(16,'daniel','2015-03-23 22:34:24',1,'INICIO DE SESION CORRECTO',0),(17,'daniel','2015-03-23 22:34:30',1,'INICIO DE SESION CORRECTO',0),(18,'daniel','2015-03-29 14:50:20',1,'INICIO DE SESION CORRECTO',0),(19,'daniel','2015-06-23 22:29:36',1,'INICIO DE SESION CORRECTO',0);
/*!40000 ALTER TABLE `tlogacceso` ENABLE KEYS */;

#
# Structure for table "tlogacciones"
#

DROP TABLE IF EXISTS `tlogacciones`;
CREATE TABLE `tlogacciones` (
  `idlog` bigint(18) NOT NULL AUTO_INCREMENT,
  `idtienda` int(11) NOT NULL DEFAULT '0',
  `usuario` varchar(255) NOT NULL DEFAULT '-' COMMENT 'usuario que realiza la accion',
  `idtipolog` int(11) NOT NULL DEFAULT '0' COMMENT 'tipo de movimiento',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sentenciasp` text,
  `aplicado` int(11) NOT NULL DEFAULT '0' COMMENT 'bandera de aplicado o no en el servidor remoto',
  `fechaaplicado` timestamp NULL DEFAULT NULL COMMENT 'fecha y hora cuando se aplico el cambio  en el servidor remoto',
  PRIMARY KEY (`idlog`,`idtienda`),
  KEY `ix_tlogacciones_01` (`idtienda`,`usuario`,`fechareg`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

#
# Data for table "tlogacciones"
#

/*!40000 ALTER TABLE `tlogacciones` DISABLE KEYS */;
INSERT INTO `tlogacciones` VALUES (1,0,'daniel',1,'2015-06-23 22:51:50','SP_AGREGA_PRODUCTO(3,producto3,producto3,1,10,15,1.1,1,1,70908987656599,0,daniel)',0,NULL),(2,0,'daniel',2,'2015-06-23 23:07:18','SP_AGREGA_PROVEEDOR(PROVEEDOR3,RAZONPROV3,danielnakata@gmail.com,5552980196,0,daniel)',0,NULL),(3,0,'daniel',7,'2015-06-26 22:03:43','SP_INVENTARIO_MOV(1,1,3,2015-01-01,-,0,7,100)',0,NULL),(4,0,'daniel',7,'2015-06-26 22:06:30','SP_INVENTARIO_MOV(1,1,2,2015-01-01,-,0,7,80)',0,NULL),(5,0,'daniel',6,'2015-06-26 22:36:17','SP_REGISTRA_COMPRA1,2015-06-26,150,150000,24000,16500,PRIMERA COMPRA DEL PROVEEDOR,0,daniel,FAC-0000001)',0,NULL),(6,0,'daniel',6,'2015-06-26 22:36:52','SP_REGISTRA_COMPRA1,2015-06-26,150,180000,28800,19800,SEGUNDA COMPRA DEL PROVEEDOR,0,daniel,FAC-0000002)',0,NULL),(7,0,'daniel',8,'2015-06-26 23:08:25','SP_AGREGA_DETALLE_COMPRA(1,1,50,1,1.55,0.248,0.1705,0,daniel)',0,NULL),(8,0,'daniel',8,'2015-06-26 23:09:03','SP_AGREGA_DETALLE_COMPRA(1,1,50,1.1,1.65,0.2496,0.1815,0,daniel)',0,NULL),(9,0,'daniel',9,'2015-06-26 23:35:15','SP_AGREGA_USUARIO(danielo1,123456,daniel,ortega,1,0)',0,NULL),(10,0,'daniel',10,'2015-06-26 23:53:19','SP_MODIFICA_ESTATUS_PROVEEDOR(2,0,2,daniel)',0,NULL),(11,0,'daniel',10,'2015-06-26 23:57:00','SP_MODIFICA_ESTATUS_PROVEEDOR(2,0,0,daniel)',0,NULL),(14,0,'daniel',11,'2015-06-27 00:18:10','SP_MODIFICA_ESTATUS_PRODUCTO(3,0,3,daniel)',0,NULL);
/*!40000 ALTER TABLE `tlogacciones` ENABLE KEYS */;

#
# Structure for table "tlogcambioprecios"
#

DROP TABLE IF EXISTS `tlogcambioprecios`;
CREATE TABLE `tlogcambioprecios` (
  `idlogcambio` bigint(18) NOT NULL AUTO_INCREMENT,
  `claveProducto` bigint(18) NOT NULL DEFAULT '0',
  `costoAnt` double(10,4) NOT NULL DEFAULT '0.0000',
  `ventaAnt` double(10,4) NOT NULL DEFAULT '0.0000',
  `idtienda` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(255) NOT NULL DEFAULT '-',
  `costoNvo` double(10,4) NOT NULL DEFAULT '0.0000',
  `ventaNvo` double(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`idlogcambio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tlogcambioprecios"
#

/*!40000 ALTER TABLE `tlogcambioprecios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tlogcambioprecios` ENABLE KEYS */;

#
# Structure for table "tmovimientoinventario"
#

DROP TABLE IF EXISTS `tmovimientoinventario`;
CREATE TABLE `tmovimientoinventario` (
  `idmovimiento` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del movimiento',
  `movimiento` varchar(5) NOT NULL DEFAULT '-' COMMENT 'movimiento de inventario',
  `detalle` text COMMENT 'detalle del movimiento',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estatus del movimiento del almacen',
  `factor` int(11) DEFAULT '1' COMMENT 'negativo resta, positivosuma',
  PRIMARY KEY (`idmovimiento`),
  KEY `ix_tmovimientoinventario` (`movimiento`) COMMENT 'busqueda por movimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tmovimientoinventario"
#

/*!40000 ALTER TABLE `tmovimientoinventario` DISABLE KEYS */;
INSERT INTO `tmovimientoinventario` VALUES (1,'EP','ENTRADA DE ARTICULOS',1,1),(2,'VP','VENTA DE PRODUCTOS',1,-1),(3,'AP','AJUSTE DE PRODUCTOS',1,1),(4,'SP','SALIDA DE PRODUCTOS',1,-1),(5,'DP','DEVOLUCION DE PRODUCTOS',1,1),(6,'CP','CANCELACION DE PRODUCTO\t',1,1),(7,'ME',NULL,1,-1),(8,'ANP','AJUSTE NEGATIVO DE PRODUCTO',1,-1);
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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`claveProducto`,`idtienda`),
  KEY `ix_tproductos_03` (`claveTipo`,`claveEstado`,`idtienda`),
  KEY `ix_tproductos_02` (`claveProveedor`,`idtienda`),
  KEY `ix_tproductos_01` (`producto`,`idtienda`),
  KEY `ix_tproductos_04` (`codigoBarras`,`idtienda`) COMMENT 'indice para la busqueda de producto por codigo de barras y tienda'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='catalogo de productos';

#
# Data for table "tproductos"
#

/*!40000 ALTER TABLE `tproductos` DISABLE KEYS */;
INSERT INTO `tproductos` VALUES (1,1,'producto1','producto1',1,1,10.0000,15.0000,1.6000,1.1000,'2015-03-29 21:21:11',NULL,NULL,0,1,1.0000,'70908987656589',0),(2,2,'producto2','producto2',1,1,10.0000,15.0000,1.6000,1.1000,'2015-05-03 21:55:18',NULL,NULL,0,1,1.0000,'70908987656589',0),(3,3,'producto3','producto3',1,3,10.0000,15.0000,1.6000,1.1000,'2015-06-23 22:31:57',NULL,NULL,0,1,1.0000,'70908987656599',0),(4,3,'producto3','producto3',1,1,10.0000,15.0000,1.6000,1.1000,'2015-06-23 22:51:50',NULL,NULL,0,1,1.0000,'70908987656599',0);
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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`claveProveedor`,`idtienda`),
  KEY `ix_tproveedores_01` (`activo`,`idtienda`),
  KEY `ix_tproveedores_02` (`nombre`,`idtienda`),
  KEY `ix_tproveedores_03` (`claveProveedor`,`idtienda`),
  KEY `ix_tproveedores_04` (`razonSocial`,`idtienda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='catalogo de proveedores';

#
# Data for table "tproveedores"
#

/*!40000 ALTER TABLE `tproveedores` DISABLE KEYS */;
INSERT INTO `tproveedores` VALUES (1,'PROVEEDOR1','RAZONPROV1','danielnakata@gmail.com','5552980196','2015-03-29 15:35:35',1,0),(2,'PROVEEDOR2','RAZONPROV2','danielnakata@gmail.com','5552980196','2015-03-29 15:38:25',0,0),(3,'PROVEEDOR3','RAZONPROV3','danielnakata@gmail.com','5552980196','2015-06-23 22:31:06',1,0);
/*!40000 ALTER TABLE `tproveedores` ENABLE KEYS */;

#
# Structure for table "ttickets"
#

DROP TABLE IF EXISTS `ttickets`;
CREATE TABLE `ttickets` (
  `idticket` bigint(18) NOT NULL AUTO_INCREMENT,
  `idtienda` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `totalArticulos` int(11) NOT NULL DEFAULT '0',
  `idventa` bigint(18) NOT NULL DEFAULT '0',
  `numeroTicket` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idticket`,`idtienda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`,`idtienda`),
  KEY `ix_tusuarios_01` (`nombre`,`idtienda`),
  KEY `ix_tusuarios_02` (`clavePerfil`,`idtienda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para los usuarios';

#
# Data for table "tusuarios"
#

/*!40000 ALTER TABLE `tusuarios` DISABLE KEYS */;
INSERT INTO `tusuarios` VALUES ('daniel','f6fdffe48c908deb0f4c3bd36c032e72','daniel','ortega',1,'2015-02-24 23:27:01','2015-06-23 22:29:36',1,0),('danielo','123456','daniel','ortega',1,'2015-06-26 23:33:44','0000-00-00 00:00:00',1,0),('danielo1','123456','daniel','ortega',1,'2015-06-26 23:35:15','0000-00-00 00:00:00',1,0);
/*!40000 ALTER TABLE `tusuarios` ENABLE KEYS */;

#
# Structure for table "tventas"
#

DROP TABLE IF EXISTS `tventas`;
CREATE TABLE `tventas` (
  `idventa` bigint(18) NOT NULL AUTO_INCREMENT COMMENT 'campo de identificador de la venta',
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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idventa`,`idtienda`)
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
  `idtienda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idventadetalle`,`idventa`,`idtienda`),
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
# Procedure "SP_AGREGA_DETALLE_COMPRA"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_DETALLE_COMPRA`;
CREATE PROCEDURE `SP_AGREGA_DETALLE_COMPRA`(`paFolioCompra` bigint(11)
       ,paClaveProducto bigint
       ,paCantidad double
       ,paCostoUni double
       ,paValorVenta double
       ,paIva double
       ,paIeps double
       ,paidtienda int
       ,pausuario varchar(255)
)
BEGIN
     declare vlExisteFolioCompra int;
     declare vlExito int;
     declare vlVacio int;
     declare res int;
     declare msg varchar(255);
     declare vltipolog int;
     declare vlejecutasp text;
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 8;
     set vlejecutasp = concat('SP_AGREGA_DETALLE_COMPRA(',paFolioCompra,',',paClaveProducto,',',paCantidad,',',paCostoUni,',',paValorVenta,',',paIva,',',paIeps,',',paidtienda,',',pausuario,')');
     set res = 0;
     set msg = 'EL FOLIO DE COMPRA INDICADO NO EXISTE';
     
     select ifnull((select vlExito from tcompras where folioCompra = paFolioCompra and idtienda = paidtienda),vlvacio) into vlExisteFolioCompra;
     
     if vlExisteFolioCompra > vlVacio then
        insert into tcomprasdetalle(idfoliocompra,claveproducto, cantidad, costounitario, valorVenta, iva, ieps, fechareg, idtienda)
        values(paFolioCompra, paClaveProducto, paCantidad, paCostoUni, paValorVenta, paIva, paIeps, current_timestamp, paidtienda);
        
        call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
        
        set res = 1;
        set msg = 'DETALLE DE COMPRA AGREGADO';        

     end if;

     select res as res, msg as msg;
END;

#
# Procedure "SP_AGREGA_LOG"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_LOG`;
CREATE PROCEDURE `SP_AGREGA_LOG`(paidtienda int(11), pausuario varchar(255), paidtipolog int(11), pasentenciasp text)
BEGIN
     INSERT INTO tlogacciones(idtienda, usuario, idtipolog, sentenciasp) values(paidtienda, pausuario, paidtipolog, pasentenciasp);
END;

#
# Procedure "SP_AGREGA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_PRODUCTO`;
CREATE PROCEDURE `SP_AGREGA_PRODUCTO`(
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
  ,paIdTienda int
  ,pausuario varchar(255)
)
BEGIN
	DECLARE vlExisteProveedor INT;
	DECLARE vlExisteProducto INT;
	DECLARE vlMaxClaveProducto INT;
	DECLARE res int;
	declare msg varchar(100);
  declare vltipolog int;
  declare vlejecutasp text;
	set vlMaxClaveProducto = 0;
	
	set res = 0;
	set msg = '';
  set vltipolog = 1;
  set vlejecutasp = concat('SP_AGREGA_PRODUCTO(',paClaveProveedor,',',paproducto,',',padescripcion,',',paclavetipo,',',pacosto,',',paventa,',',paieps,',',paclaveunidad,',',pacantidadunidad,',',pacodigobarras,',',paidtienda,',',pausuario,')');
	
	select ifnull(
	(select claveProveedor
	  from tproveedores
	 where claveProveedor = paclaveProveedor and idtienda = paidtienda),0)
	 into vlExisteProveedor;
	 
	select ifnull(
  	(SELECT MAX(claveProducto)
  	  FROM tproductos where idtienda = paidtienda),0)
    INTO vlMaxClaveProducto; 
	 
	 
	if vlExisteProveedor > 0
	then
		set vlMaxClaveProducto = vlMaxClaveProducto + 1;
		insert into tproductos (claveProducto, claveProveedor, producto, descripcion, claveTipo
		,claveEstado, costo, venta, iva, ieps, fechaRegistro, claveUnidad, cantidadUnidad, codigoBarras, idtienda)
		value(vlMaxClaveProducto, paclaveProveedor, paproducto, padescripcion, paclaveTipo,
		1, pacosto, paventa, paiva, paieps, current_timestamp(), paclaveunidad, pacantidadunidad,
		pacodigoBarras, paIdTienda);
   
    call SP_REGISTRA_CAMBIO_PRECIO(vlMaxClaveProducto, 0, 0, pacosto, paventa, paidtienda, pausuario);
   
    call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
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
       ,in paIdTienda int
       ,in pausuario varchar(255)
)
BEGIN
	DECLARE vlMaxClaveProveedor int;
	DECLARE vlExisteProveedor int;
  declare vlejecutasp text;
  declare vltipolog int;
  set vltipolog = 2;
  set vlejecutasp = concat('SP_AGREGA_PROVEEDOR(',panombre,',',parazonsocial,',',paemail,',',patelefonos,',',paidtienda,',',pausuario,')');
	set vlMaxClaveProveedor = 0;
	set vlExisteProveedor = 0;
	
   select ifnull(
  	(SELECT MAX(claveProveedor)
  	  FROM tproveedores where idtienda = paidtienda),0)
    INTO vlMaxClaveProveedor;
	  
	SELECT COUNT(*)
	  INTO vlExisteProveedor
	  FROM tproveedores
	 WHERE razonSocial = parazonsocial and idtienda = paidtienda;
	 
	 
	if vlExisteProveedor = 0 
	then
		set vlMaxClaveProveedor = vlMaxClaveProveedor + 1;
		insert into tproveedores (claveProveedor, nombre, razonSocial, email, telefonos, fechaRegistro, activo, idtienda)
		values (vlMaxClaveProveedor, panombre, parazonsocial, paemail, patelefonos, current_timestamp(), 1, paidtienda);
    call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
		select 1 as res, 'PROVEEDOR AGREGADO' as msg;
	else
		UPDATE tproveedores set email = paemail, telefonos = patelefonos
		WHERE razonSocial = parazonsocial;
    call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
		select 1 as res, 'PROVEEDOR MODIFICADO' as msg;
	end if;
     
END;

#
# Procedure "SP_AGREGA_TIPO_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_TIPO_PRODUCTO`;
CREATE PROCEDURE `SP_AGREGA_TIPO_PRODUCTO`(patipo int(11)
, padetalle text, paidtienda int(11), pausuario varchar(255))
BEGIN
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare res int;
     declare msg varchar(255);
     declare vlmaxClaveTipo int(11);
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 14;
     set vlejecutasp = concat('SP_AGREGA_TIPO_PRODUCTO(',patipo,',',padetalle,',',paidtienda,',',pausuario,')');
     set res = 0;
     set msg = 'NO SE PUDO AGREGAR EL TIPO DE PRODUCTO CORRECTAMENTE';
     
     set vlmaxClaveTipo = 0;
     
     select max(clavetipo) into vlmaxclavetipo from tcatalogotipos where idtienda = paidtienda;
     
     set vlmaxClaveTipo = vlmaxclavetipo + 1;
     
     insert into tcatalogotipos(clavetipo, tipo, detalle, activo, idtienda) values(vlmaxclavetipo, patipo, padetalle, 1, paidtienda);
     
     call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
     select 1 as res, 'TIPO DE PRODUCTO AGREGADO' as msg;
     
END;

#
# Procedure "SP_AGREGA_USUARIO"
#

DROP PROCEDURE IF EXISTS `SP_AGREGA_USUARIO`;
CREATE PROCEDURE `SP_AGREGA_USUARIO`(palogin varchar(255)
       ,paContrasena varchar(255)
       ,panombre varchar(50)
       ,paapellidos varchar(50)
       ,paClavePerfil int
       ,paidtienda int
       ,pausuario varchar(255)
)
BEGIN
     declare vlExito int;
     declare vlVacio int;
     declare vlExisteUsuario int;
     declare res int;
     declare msg varchar(255);
     declare vltipolog int;
     declare vlejecutasp text;
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 9;
     set vlejecutasp = concat('SP_AGREGA_USUARIO(',palogin,',',paContrasena,',',panombre,',',paapellidos,',',paClavePerfil,',',paidtienda,')');
     
     select ifnull((select count(*) from tusuarios where login = palogin and idtienda = paidtienda),vlVacio) into vlExisteUsuario;
     
     set res = 0;
     set msg = 'EL LOGIN INDICADO SE ENCUENTRA EN USO';
     if vlExisteUsuario = vlVacio then
        insert into tusuarios(login, contrasena, nombre, apellidos, activo, fecharegistro, clavePerfil, idtienda)
        values(palogin, paContrasena, panombre, paapellidos, vlExito, current_timestamp, paClavePerfil, paidtienda);
    
        call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
        
        set res = vlExito;
        set msg = 'USUARIO AGREGADO CORRECTAMENTE';
     end  if;
     
     select res as res, msg as msg;
END;

#
# Procedure "SP_CONSULTA_CATALOGO_MOVIMIENTOS"
#

DROP PROCEDURE IF EXISTS `SP_CONSULTA_CATALOGO_MOVIMIENTOS`;
CREATE PROCEDURE `SP_CONSULTA_CATALOGO_MOVIMIENTOS`(paSoloActivos int(11))
BEGIN
     if paSoloActivos = 0 then
     
        select idmovimiento as idcat 
               ,movimiento as catalogo
               ,detalle as detalle
               ,activo as activo
               ,factor as extra1
          from tmovimientoinventario 
         order by idmovimiento asc;
     else
         select idmovimiento as idcat 
               ,movimiento as catalogo
               ,detalle as detalle
               ,activo as activo
               ,factor as extra1
          from tmovimientoinventario 
         where activo = 1
         order by idmovimiento asc;
     end if;
END;

#
# Procedure "SP_CONSULTA_DATOS_USUARIO"
#

DROP PROCEDURE IF EXISTS `SP_CONSULTA_DATOS_USUARIO`;
CREATE PROCEDURE `SP_CONSULTA_DATOS_USUARIO`(`paTipoBsq` int(3), `paFiltro` varchar(100), paidtienda int)
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
           WHERE a.login = paFiltro
             and a.idtienda = paidtienda;
           
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
           WHERE a.nombre like concat(paFiltro,'%')
             and a.idtienda = paidtienda;

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
           WHERE a.apellidos like concat(paFiltro,'%')
             and a.idtienda = paidtienda;
           
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
           WHERE a.activo = paFiltro
             and a.idtienda = paidtienda;
           
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
           WHERE a.clavePerfil = paFiltro
             and a.idtienda = paidtienda;
                 
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
CREATE PROCEDURE `SP_CONSULTA_PRODUCTO`(
paTipoBsq int(11)
,paFiltro text
,paIdTienda int(11)
)
BEGIN
	declare vlBsqxClaveProd int;
	declare vlBsqxClaveProv int;
	declare vlBsqxBarCod int;
	declare vlBsqxNombre int;
	declare vlBsqxEstado int;
	declare vlBsqxTipo int;
  declare vlBsqTodos int;
	
	set vlBsqxClaveProd = 1;
	set vlBsqxClaveProv = 2;
	set vlBsqxBarCod = 3;
	set vlBsqxNombre = 4;
	set vlBsqxEstado = 5;
	set vlBsqxTipo = 6;
  set vlBsqTodos = 7;
	
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
			 WHERE a.claveProducto = paFiltro and a.idtienda = paIdTienda;
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
			 WHERE a.claveProveedor = paFiltro and a.idtienda = paIdTienda;
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
			 WHERE a.codigoBarras = paFiltro and a.idtienda = paIdTienda;
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
			 WHERE a.producto like concat(paFiltro,'%') and a.idtienda = paIdTienda;
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
			 WHERE a.claveEstado = paFiltro and a.idtienda = paIdTienda;
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
			 WHERE a.claveTipo = paFiltro and a.idtienda = paIdTienda;
    when vlBsqTodos then
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
			 WHERE a.idtienda = paIdTienda;
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
CREATE PROCEDURE `SP_CONSULTA_PROVEDOR`(`paTipoBsq` int(11), paFiltro text, paidtienda int(11))
BEGIN
     declare vlconsultaporclave int;
     declare vlconsultapornombre int;
     declare vlconsultaporrazon int;
     declare vlconsultatodos int;
     
     set vlconsultaporclave = 1;
     set vlconsultapornombre = 2;
     set vlconsultaporrazon = 3;
     set vlconsultatodos = 5;
     
     if paTipoBsq = 1 then
        select a.claveProveedor
             ,a.nombre
             ,a.razonSocial
             ,a.email
             ,a.telefonos
             ,a.fechaRegistro
             ,a.activo
             ,case when a.activo = 1 then 'ACTIVO' when a.activo = 0 then 'INACTIVO' end as sactivo
        from tproveedores a 
       where a.idtienda = paidtienda
         and a.claveProveedor = paFiltro
       order by a.claveProveedor asc;
     end if;
     
     if paTipoBsq = 2 then
        select a.claveProveedor
             ,a.nombre
             ,a.razonSocial
             ,a.email
             ,a.telefonos
             ,a.fechaRegistro
             ,a.activo
             ,case when a.activo = 1 then 'ACTIVO' when a.activo = 0 then 'INACTIVO' end as sactivo
        from tproveedores a 
       where a.idtienda = paidtienda
         and a.nombre = paFiltro
       order by a.claveProveedor asc;
     end if;
     
     if paTipoBsq = 3 then
        select a.claveProveedor
             ,a.nombre
             ,a.razonSocial
             ,a.email
             ,a.telefonos
             ,a.fechaRegistro
             ,a.activo
             ,case when a.activo = 1 then 'ACTIVO' when a.activo = 0 then 'INACTIVO' end as sactivo
        from tproveedores a 
       where a.idtienda = paidtienda
         and a.razonSocial = paFiltro
       order by a.claveProveedor asc;
     end if;
     
     if paTipoBsq = 4 then
        select a.claveProveedor
             ,a.nombre
             ,a.razonSocial
             ,a.email
             ,a.telefonos
             ,a.fechaRegistro
             ,a.activo
             ,case when a.activo = 1 then 'ACTIVO' when a.activo = 0 then 'INACTIVO' end as sactivo
        from tproveedores a 
       where a.idtienda = paidtienda
       order by a.claveProveedor asc;
     end if;
END;

#
# Procedure "SP_INICIO_SESION"
#

DROP PROCEDURE IF EXISTS `SP_INICIO_SESION`;
CREATE PROCEDURE `SP_INICIO_SESION`(palogin varchar(100), pacontrasena varchar(200), paidtienda int(11))
BEGIN
     declare vlExisteUsuario int(11);
     declare vlUsuarioCompara varchar(100);
     declare vlContrasenaCompara varchar(200);
     select ifnull((select 1 from tusuarios where login = palogin and idtienda = paidtienda),0) into vlExisteUsuario;
     
     if vlExisteUsuario = 1 then
        select login, contrasena 
          into vlUsuarioCompara, vlContrasenaCompara 
          from tusuarios 
         where login = palogin;
         
        if vlContrasenaCompara = pacontrasena then
           UPDATE tusuarios set fechaultimologin = now() where login = palogin and idtienda = paidtienda;
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

#
# Procedure "SP_INVENTARIO_MOV"
#

DROP PROCEDURE IF EXISTS `SP_INVENTARIO_MOV`;
CREATE PROCEDURE `SP_INVENTARIO_MOV`(
       paclaveproducto bigint(18)
       ,paclaveproveedor int(11)
       ,paidmovimiento int(11)
       ,pafecha varchar(10)
       ,pafactura varchar(255)
       ,paidtienda int(11)
       ,pacantidad double
       ,pacosto double
       ,pausuario varchar(255)
)
BEGIN
     DECLARE vlfactor integer;
     declare vlExito integer;
     declare vlVacio integer;
     declare res integer;
     declare msg varchar(255);
     declare vltipolog int;
     declare vlejecutasp text;
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 7;
     set vlejecutasp = CONCAT('SP_INVENTARIO_MOV(',paclaveproducto,',',paclaveproveedor,',',paidmovimiento,',',pafecha,',',pafactura,',',paidtienda,',',pacantidad,',',pacosto,')');
     
     set res = 0;
     set msg = 'TIPO DE MOVIMIENTO NO VALIDO';
     select ifnull((select factor from dnntienda.tmovimientoinventario where idmovimiento = paidmovimiento),0) into vlfactor; 
     
     if vlfactor <> vlVacio then
        INSERT INTO tinventario(claveProducto, claveProveedor, idmovimiento, fecha, fechareg, factura, idtienda, cantidad, costo, usuario)
        values(paclaveproducto, paclaveproveedor, paidmovimiento, paFecha, current_timestamp, pafactura, paidtienda, (pacantidad*vlfactor), pacosto, pausuario);
        
        set res = 1;
        set msg = 'REGISTRO DE INVENTARIO AGREGADO';
        
        call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
        
     end if;
     
     SELECT res as res, msg as msg;
END;

#
# Procedure "SP_MODIFICA_ESTATUS_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_MODIFICA_ESTATUS_PRODUCTO`;
CREATE PROCEDURE `SP_MODIFICA_ESTATUS_PRODUCTO`(`paidproducto` bigint(11)
       ,paidtienda int
       ,paestatusnuevo int
       ,pausuario varchar(255)
)
BEGIN
     declare res int;
     declare msg varchar(255);
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare vlexisteproducto int;
     declare vlexisteestatus int;
     
     set res = 0;
     set msg = 'EL PRODUCTO INDICADO NO EXISTE';
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 11;
     set vlejecutasp = CONCAT('SP_MODIFICA_ESTATUS_PRODUCTO(',paidproducto,',',paidtienda,',',paestatusnuevo,',',pausuario,')');

     select ifnull((select count(*) from tproductos where claveProducto = paIdProducto and idtienda = paidtienda),vlVacio) into vlexisteproducto;
     
     if vlexisteproducto > vlVacio then
        set msg = 'EL ESTATUS INDICADO NO EXISTE';
        
        select ifnull((select 1 from tcatalogoestados where claveEstado = paestatusnuevo),vlVacio) into vlexisteestatus;
        
        if vlexisteestatus > vlVacio then
           update tproductos set claveEstado = paestatusnuevo where claveProducto = paIdProducto and idtienda = paidtienda;

           call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);           
           
           set res = vlExito;
           set msg = 'ESTATUS DEL PRODUCTO ACTUALIZADO CORRECTAMENTE';
        end if;
        
     end if;
     
     select res as res, msg as msg;     
     
END;

#
# Procedure "SP_MODIFICA_ESTATUS_PROVEEDOR"
#

DROP PROCEDURE IF EXISTS `SP_MODIFICA_ESTATUS_PROVEEDOR`;
CREATE PROCEDURE `SP_MODIFICA_ESTATUS_PROVEEDOR`(`paidproveedor` int(11)
       ,paidtienda int
       ,paestatusnuevo int
       ,pausuario varchar(255)
)
BEGIN
     declare res int;
     declare msg varchar(255);
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare vlexisteproveedor int;
     
     set res = 0;
     set msg = 'EL PROVEEDOR INDICADO NO EXISTE';
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 10;
     set vlejecutasp = concat('SP_MODIFICA_ESTATUS_PROVEEDOR(',paIdProveedor,',',paidtienda,',',paestatusnuevo,',',pausuario,')');
     set vlexisteproveedor = 0;
     
     select ifnull((select count(*) from tproveedores where claveProveedor = paidproveedor and idtienda = paidtienda),vlVacio) into vlexisteproveedor;
     
     if vlexisteproveedor > vlVacio then
        set msg = 'EL ESTATUS INDICADO NO ES VALIDO';
        if paestatusnuevo <= vlExito then
          update tproveedores set activo = paestatusnuevo where claveProveedor = paidproveedor and idtienda = paidtienda;
       
          call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
          
          set res = vlExito;
          set msg = 'EL PROVEEDOR CAMBIO DE ESTATUS CORRECTAMENTE';
          
        end if;
     
     end if;
     
     select res as res, msg as msg;
END;

#
# Procedure "SP_MODIFICA_PRODUCTO"
#

DROP PROCEDURE IF EXISTS `SP_MODIFICA_PRODUCTO`;
CREATE PROCEDURE `SP_MODIFICA_PRODUCTO`(`paclaveProducto` bigint(18)
       ,paclaveproveedor int(11)
       ,paproducto varchar(255)
       ,padescripcion text
       ,paclaveTipo int(11)
       ,pacosto double
       ,paventa double
       ,paiva double
       ,paieps double
       ,paclaveUnidad int(11)
       ,pacantidadUnidad double
       ,paidtienda int
       ,pausuario varchar(255)
)
BEGIN
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare vlexisteproducto int;
     declare res int;
     declare msg varchar(255);
     declare vlcostoant double;
     declare vlventaant double;
     
     set res = 0;
     set msg = 'EL PRODUCTO INDICADO NO EXISTE';
     set vlExito = 1;
     set vlVacio = 0;
     set vlTipoLog = 12;
     set vlejecutasp = concat('SP_MODIFICA_PRODUCTO(',paclaveProducto,',',paproducto,',',padescripcion,',',paclavetipo,',',pacosto,',',paventa,',',paiva,',',paieps,',',paclaveunidad,',',pacantidadunidad,',',paidtienda,',',pausuario,')');
     
     select ifnull((select vlexito from tproductos where claveProducto = paclaveproducto and claveproveedor = paclaveproveedor and idtienda = paidtienda),vlvacio) into vlexisteproducto;
     
     if vlexisteproducto = vlexito then 
     
        select costo, venta into vlcostoant, vlventaant 
          from tproducto 
         where claveProducto = paclaveProducto 
           and claveProveedor = paclaveproveedor 
           and idtienda = paidtienda;
                         
        UPDATE tproducto set producto = paproducto, descripcion = padescripcion, clavetipo = paclavetipo,costo = pacosto, venta = paventa
               ,iva = paiva, ieps = paieps, claveUnidad = paclaveUnidad, cantidadUnidad = paCantidadUnidad
        where claveProducto = paClaveProducto and claveProveedor = paClaveProveedor and idtienda = paIdtienda;
        
        set res = vlExisto;
        set msg = 'DATOS DEL PRODUCTO MODIFICADOS CORRECTAMENTE';
        
        call SP_REGISTRA_CAMBIO_PRECIO(paclaveproducto, vlcostoant, vlventaant, pacosto, paventa, paidtienda, pausuario);        
        
        call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
     
     end if; 
     
     SELECT res as res, msg as msg;
END;

#
# Procedure "SP_MODIFICA_PROVEEDOR"
#

DROP PROCEDURE IF EXISTS `SP_MODIFICA_PROVEEDOR`;
CREATE PROCEDURE `SP_MODIFICA_PROVEEDOR`(`paClaveProveedor` int(11)
       ,paNombre varchar(255)
       ,paRazonSocial varchar(255)
       ,paEmail varchar(255)
       ,paTelefono text
       ,paIdTienda int
       ,paUsuario varchar(255)
)
BEGIN
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare res int;
     declare msg varchar(255);
     declare vlexisteproveedor int;
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 13;
     set vlejecutasp = concat('SP_MODIFICA_PROVEEDOR(',',',paclaveproveedor,',',panombre,',',parazonsocial,',',paemail,',',patelefono,',',paidtienda,',',pausuario,')');
     
     set res = 0;
     set msg = 'EL PROVEEDOR INDICADO NO EXISTE';
     
     select ifnull((select vlexito from tproveedores where claveProveedor = paClaveProveedor and idtienda = paidtienda),vlvacio) into vlexisteproveedor;
     
     if vlexisteproveedor = vlexito then 
     
        update tproveedores set nombre = panombre, razonSocial = paRazonSocial, email = paEmail, telefonos = paTelefono
        where claveProveedor = paClaveProveedor and idtienda = paidtienda;
        
        set res = vlExito;
        set msg = 'PROVEEDOR MODIFICADO CORRECTAMENTE';
        
        call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
     
     end if;
     
     select res as res, msg as msg;
          
END;

#
# Procedure "SP_REGISTRA_CAMBIO_PRECIO"
#

DROP PROCEDURE IF EXISTS `SP_REGISTRA_CAMBIO_PRECIO`;
CREATE PROCEDURE `SP_REGISTRA_CAMBIO_PRECIO`(`paclaveProducto` bigint(18)
       ,pacostoAnt double
       ,paventaAnt double
       ,pacostoNvo double
       ,paventaNvo double
       ,paidtienda int
       ,pausuario varchar(255)
)
BEGIN
     declare vlExito int;
     declare vlVacio int;
     declare vltipolog int;
     declare vlejecutasp text;
     declare res int;
     declare msg varchar(255);
     
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 15;
     set vlejecutasp = concat('SP_REGISTRA_CAMBIO_PRECIO(',paclaveProducto,',',pacostoAnt,',',paventaAnt,',',paCostoNvo,',',paVentaNvo,',',paidtienda,',',pausuario,')');
     set res = 0;
     set msg = 'NO SE PUDO REGISTRAR EL CAMBIO DE PRECIO';
     
     insert into tlogcambioprecios(claveProducto, costoant, ventaant, costonvo, ventanvo, idtienda,usuario)
     values(paclaveProducto, pacostoant, paventaant, pacostonvo, paventanvo, paidtienda, pausuario);
     
     call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);     
     
     set res = 1;
     set msg = 'TIPO DE ARTICULO AGREGADO';
END;

#
# Procedure "SP_REGISTRA_COMPRA"
#

DROP PROCEDURE IF EXISTS `SP_REGISTRA_COMPRA`;
CREATE PROCEDURE `SP_REGISTRA_COMPRA`(`paidproveedor` int(11)
       ,pafechacompra varchar(10)
       ,paTotalProd double
       ,paCosto double
       ,paiva double
       ,paieps double
       ,padetalle text
       ,paidtienda int(11)
       ,pausuario varchar(255)
       ,pafactura varchar(255)
)
BEGIN
     declare vlmaxCompra bigint;
     declare vltipolog int;
     declare vlejecutasp text;
     declare vlExito int;
     declare vlVacio int;
     declare res int;
     declare msg varchar(255);
     declare vlestado int;
     
     set vlestado = 1;
     set vlExito = 1;
     set vlVacio = 0;
     set vltipolog = 6;
     set vlejecutasp = concat('SP_REGISTRA_COMPRA',paidproveedor,',',pafechacompra,',',patotalprod,',',pacosto,',',paiva,',',paieps,',',padetalle,',',paidtienda,',',pausuario,',',pafactura,')');
 
     select ifnull((select max(folioCompra) from tcompras),0) into vlmaxcompra;
     
     set vlmaxcompra = vlmaxcompra + 1;
     
     insert into tcompras(folioCompra, claveProveedor, fechaCompra, totalproductos, costo, iva, ieps, estadoCompra, detalle, fechaRegistro,
     idtienda, factura, usuarioreg) values(vlmaxcompra, paidproveedor, pafechacompra, patotalprod, pacosto, paiva, paieps, vlEstado, padetalle, current_timestamp,
     paidtienda, pafactura, pausuario);
     
     set res = vlExito;
     set msg = 'COMPRA REGISTRADA CORRECTAMENTE!';

     call sp_agrega_log(paidtienda, pausuario, vltipolog, vlejecutasp);
          
     select res as res, msg as msg, vlmaxcompra as folioCompra;     
         
      
END;
