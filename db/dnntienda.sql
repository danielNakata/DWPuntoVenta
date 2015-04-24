-- MySQL dump 10.13  Distrib 5.6.16, for Win32 (x86)
--
-- Host: localhost    Database: dnntienda
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tcatalogoestados`
--

DROP TABLE IF EXISTS `tcatalogoestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcatalogoestados` (
  `claveEstado` int(11) NOT NULL DEFAULT '1' COMMENT 'identificador del estado',
  `estado` varchar(50) NOT NULL DEFAULT '-' COMMENT 'estado para el producto',
  `detalle` text NOT NULL COMMENT 'Detalle del estado',
  PRIMARY KEY (`claveEstado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Catalogo de estados de los productos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcatalogoestados`
--

LOCK TABLES `tcatalogoestados` WRITE;
/*!40000 ALTER TABLE `tcatalogoestados` DISABLE KEYS */;
INSERT INTO `tcatalogoestados` VALUES (1,'ACTIVO','PRODUCTO ACTIVO, LISTO PARA VENTA'),(2,'PRUEBA','PRODUCTO EN PRUEBA DE VENTAS'),(3,'NUEVO','ARTICULO DE RECIENTE ADQUISICION, LISTO PARA VENTA'),(4,'INACTIVO','PRODUCTO NO LISTO PARA VENTA'),(0,'AGOTADO','PRODUCTO SIN STOCK EN LA TIENDA'),(5,'MUERTO','PRODUCTO NO DISPONIBLE PARA VENTA Y QUE NO SE VOLVERA A RESURTIR');
/*!40000 ALTER TABLE `tcatalogoestados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcatalogotipos`
--

DROP TABLE IF EXISTS `tcatalogotipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcatalogotipos` (
  `claveTipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL DEFAULT '-' COMMENT 'tipo del articulo',
  `detalle` text COMMENT 'detalle o caracteristicas del tipo',
  `activo` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`claveTipo`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='tabla de catalogo de tipos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcatalogotipos`
--

LOCK TABLES `tcatalogotipos` WRITE;
/*!40000 ALTER TABLE `tcatalogotipos` DISABLE KEYS */;
INSERT INTO `tcatalogotipos` VALUES (1,'LACTEOS','TIPO DE PRODUCTOS LACTEOS, COMO QUESO, LECHE, YOGURT',1),(2,'CARNES FRIAS','PRODUCTOS COMO SALCHICHAS, JAMON, QUESO DE PUERCO',1),(3,'AGUAS','ARTICULOS COMO AGUA SIMPLE, AGUA DE SABOR, AGUA GASIFICADA, AGUA MINERA',1),(4,'REFRESCOS','PRODUCTOS COMO REFRESCOS DE COLA, REFRESCOS DE SABORES.',1),(5,'DULCES','PRODUCTOS COMO DULCES CONFITADOS, DULCES DE CARAMELO, BOMBONES',1),(6,'CHOCOLATE','PRODUCTOS CON O A BASE DE CHOCOLATE',1);
/*!40000 ALTER TABLE `tcatalogotipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcatalogounidades`
--

DROP TABLE IF EXISTS `tcatalogounidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcatalogounidades` (
  `claveUnidad` int(11) NOT NULL DEFAULT '0' COMMENT 'Clave de la unidad',
  `unidad` varchar(50) NOT NULL DEFAULT '-' COMMENT 'nombre de la unidad',
  `abrevia` varchar(5) NOT NULL DEFAULT '-' COMMENT 'abreviatura de la unidad',
  `detalle` text COMMENT 'detalle de la unidad',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estado de la unidad',
  PRIMARY KEY (`claveUnidad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcatalogounidades`
--

LOCK TABLES `tcatalogounidades` WRITE;
/*!40000 ALTER TABLE `tcatalogounidades` DISABLE KEYS */;
INSERT INTO `tcatalogounidades` VALUES (1,'PIEZA','PZA','PIEZA BASICA DE UN ARTICULO	',1),(2,'GRAMOS','GR','PESO EN GRAMOS	',1),(3,'MILITROS','ML','CAPACIDAD EN MILILITROS',1),(4,'PAQUETE','PQT','PAQUETE O GRUPO DE ARTICULOS',1),(5,'KILOGRAMO','KG','KILOGRAMO DE ALGUNA COSA',1),(6,'LITRO','LT','LITRO DE ALGUN LIQUIDO',1);
/*!40000 ALTER TABLE `tcatalogounidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcatperfiles`
--

DROP TABLE IF EXISTS `tcatperfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcatperfiles` (
  `clavePerfil` int(3) NOT NULL DEFAULT '0' COMMENT 'identificador del perfil',
  `perfil` varchar(50) NOT NULL DEFAULT '-' COMMENT 'nombre del perfil',
  `detalle` text COMMENT 'detalle del perfil',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estatus del perfil',
  PRIMARY KEY (`clavePerfil`),
  KEY `ix_tcatperfiles_01` (`perfil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CATALOGO DE PERFILES DE USUARIOS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcatperfiles`
--

LOCK TABLES `tcatperfiles` WRITE;
/*!40000 ALTER TABLE `tcatperfiles` DISABLE KEYS */;
INSERT INTO `tcatperfiles` VALUES (1,'ADMINISTRADOR','PERFIL DE ADMINISTRADOR DEL SISTEMA',1),(2,'GERENTE','GERENTE DEL NEGOCIO	',1),(3,'VENDEDOR','VENDEDOR DEL NEGOCIO',1),(4,'ALMACEN','USUARIO DE ALMACEN',1);
/*!40000 ALTER TABLE `tcatperfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcompras`
--

DROP TABLE IF EXISTS `tcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcompras`
--

LOCK TABLES `tcompras` WRITE;
/*!40000 ALTER TABLE `tcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinventario`
--

DROP TABLE IF EXISTS `tinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tinventario` (
  `idinventario` bigint(2) NOT NULL AUTO_INCREMENT COMMENT 'identificador para el inventario',
  PRIMARY KEY (`idinventario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para guardar el inventario de la tienda';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinventario`
--

LOCK TABLES `tinventario` WRITE;
/*!40000 ALTER TABLE `tinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tlogacceso`
--

DROP TABLE IF EXISTS `tlogacceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlogacceso`
--

LOCK TABLES `tlogacceso` WRITE;
/*!40000 ALTER TABLE `tlogacceso` DISABLE KEYS */;
INSERT INTO `tlogacceso` VALUES (1,'daniel','2015-02-25 05:50:48',1,'CONTRASEÑA INCORRECTA'),(2,'daniel','2015-02-25 05:51:16',2,'CONTRASEÑA INCORRECTA'),(3,'danielO','2015-02-25 05:53:10',3,'USUARIO NO EXISTE'),(4,'danielO','2015-03-24 04:32:07',3,'USUARIO NO EXISTE'),(5,'danielO','2015-03-24 04:32:18',3,'USUARIO NO EXISTE'),(6,'danielO','2015-03-24 04:34:12',3,'USUARIO NO EXISTE'),(7,'danielO','2015-03-24 04:34:14',3,'USUARIO NO EXISTE'),(8,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(9,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(10,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(11,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(12,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(13,'danielO','2015-03-24 04:34:15',3,'USUARIO NO EXISTE'),(14,'danielO','2015-03-24 04:34:16',3,'USUARIO NO EXISTE'),(15,'danielO','2015-03-24 04:34:16',3,'USUARIO NO EXISTE'),(16,'daniel','2015-03-24 04:34:24',1,'INICIO DE SESION CORRECTO'),(17,'daniel','2015-03-24 04:34:30',1,'INICIO DE SESION CORRECTO'),(18,'daniel','2015-03-29 20:50:20',1,'INICIO DE SESION CORRECTO');
/*!40000 ALTER TABLE `tlogacceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmovimientoinventario`
--

DROP TABLE IF EXISTS `tmovimientoinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmovimientoinventario` (
  `idmovimiento` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del movimiento',
  `movimiento` varchar(5) NOT NULL DEFAULT '-' COMMENT 'movimiento de inventario',
  `detalle` text COMMENT 'detalle del movimiento',
  `activo` int(3) NOT NULL DEFAULT '1' COMMENT 'estatus del movimiento del almacen',
  PRIMARY KEY (`idmovimiento`),
  KEY `ix_tmovimientoinventario` (`movimiento`) COMMENT 'busqueda por movimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmovimientoinventario`
--

LOCK TABLES `tmovimientoinventario` WRITE;
/*!40000 ALTER TABLE `tmovimientoinventario` DISABLE KEYS */;
INSERT INTO `tmovimientoinventario` VALUES (1,'EP','ENTRADA DE ARTICULOS',1),(2,'VP','VENTA DE PRODUCTOS',1),(3,'AP','AJUSTE DE PRODUCTOS',1);
/*!40000 ALTER TABLE `tmovimientoinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductos`
--

DROP TABLE IF EXISTS `tproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductos`
--

LOCK TABLES `tproductos` WRITE;
/*!40000 ALTER TABLE `tproductos` DISABLE KEYS */;
INSERT INTO `tproductos` VALUES (1,1,'producto1','producto1',1,1,10.0000,15.0000,1.6000,1.1000,'2015-03-30 03:21:11',NULL,NULL,0,1,1.0000,'70908987656589');
/*!40000 ALTER TABLE `tproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproveedores`
--

DROP TABLE IF EXISTS `tproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproveedores`
--

LOCK TABLES `tproveedores` WRITE;
/*!40000 ALTER TABLE `tproveedores` DISABLE KEYS */;
INSERT INTO `tproveedores` VALUES (1,'PROVEEDOR1','RAZONPROV1','danielnakata@gmail.com','5552980196','2015-03-29 21:35:35',1),(2,'PROVEEDOR2','RAZONPROV2','danielnakata@gmail.com','5552980196','2015-03-29 21:38:25',1);
/*!40000 ALTER TABLE `tproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttickets`
--

DROP TABLE IF EXISTS `ttickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttickets` (
  `ticket` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador del ticket',
  `fecha` date NOT NULL DEFAULT '1900-01-01' COMMENT 'fecha de inicio del ticket',
  `activo` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'estado de la serie del ticket',
  PRIMARY KEY (`ticket`,`fecha`),
  KEY `ix_tticket_01` (`fecha`) COMMENT 'indice para la busqueda de los tickets'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla para el conteo de tickets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttickets`
--

LOCK TABLES `ttickets` WRITE;
/*!40000 ALTER TABLE `ttickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tusuarios`
--

DROP TABLE IF EXISTS `tusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tusuarios`
--

LOCK TABLES `tusuarios` WRITE;
/*!40000 ALTER TABLE `tusuarios` DISABLE KEYS */;
INSERT INTO `tusuarios` VALUES ('daniel','f6fdffe48c908deb0f4c3bd36c032e72','daniel','ortega',1,'2015-02-25 05:27:01','2015-03-29 20:50:20',1);
/*!40000 ALTER TABLE `tusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tventas`
--

DROP TABLE IF EXISTS `tventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tventas`
--

LOCK TABLES `tventas` WRITE;
/*!40000 ALTER TABLE `tventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tventasdetalle`
--

DROP TABLE IF EXISTS `tventasdetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tventasdetalle`
--

LOCK TABLES `tventasdetalle` WRITE;
/*!40000 ALTER TABLE `tventasdetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tventasdetalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-23 22:14:54
