-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: perbankan
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cabang_bank`
--

DROP TABLE IF EXISTS `cabang_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cabang_bank` (
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(45) NOT NULL,
  `alamat_cabang` varchar(255) NOT NULL,
  PRIMARY KEY (`kode_cabang`),
  UNIQUE KEY `nama_cabang` (`nama_cabang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabang_bank`
--

LOCK TABLES `cabang_bank` WRITE;
/*!40000 ALTER TABLE `cabang_bank` DISABLE KEYS */;
INSERT INTO `cabang_bank` VALUES ('BRI','Bank Rakyat Indonesia','Jl. Soekarno Hatta 7'),('BRUB','Bank Rut Unit Boyolali','Jl.Ahmad Yani 45'),('BRUK','Bank Rut Unit Klaten','Jl. Suparman 23'),('BRUS','Bank Rut Unit Surakarta','Jl. Slamet Riyadi 18'),('BRUW','Bank Rut Unit Wonogiri','Jalan A.Yani No.23'),('BRUY','Bank Rut Unit Yogyakarta','Jl. Anggrek 21');
/*!40000 ALTER TABLE `cabang_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nasabah`
--

DROP TABLE IF EXISTS `nasabah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nasabah` (
  `id_nasabah` int(11) NOT NULL,
  `nama_nasabah` varchar(45) NOT NULL,
  `alamat_nasabah` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nasabah`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nasabah`
--

LOCK TABLES `nasabah` WRITE;
/*!40000 ALTER TABLE `nasabah` DISABLE KEYS */;
INSERT INTO `nasabah` VALUES (0,'Bank Rut Unit Surakarta','Jl. Slamet Riyadi 18'),(1,'Sutopo','Jl. Kenanga'),(2,'Maryati','Jl. MT.Haryono 31'),(3,'Suparman','Jl. Hasanudin 81'),(4,'Kartika Padmasari','Jl.Manggis 15'),(5,'Budi Eko Prayogo','Jl. Kantil 30'),(6,'Satria Eka Jaya','Jl. Slamet Riyadi 45'),(8,'Sari Murti','Jl. Pangandaran 11'),(9,'Canka Lokanata','Jl.Tidar 86'),(10,'Budi Murtono','Jl. Merak 22'),(31,'Susilo','Sukoharjo'),(88,'Vita','Jl. Diponegoro 17');
/*!40000 ALTER TABLE `nasabah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nasabah_has_rekening`
--

DROP TABLE IF EXISTS `nasabah_has_rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nasabah_has_rekening` (
  `id_nasabahFK` int(11) NOT NULL,
  `no_rekeningFK` int(11) NOT NULL,
  PRIMARY KEY (`id_nasabahFK`,`no_rekeningFK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nasabah_has_rekening`
--

LOCK TABLES `nasabah_has_rekening` WRITE;
/*!40000 ALTER TABLE `nasabah_has_rekening` DISABLE KEYS */;
INSERT INTO `nasabah_has_rekening` VALUES (1,104),(2,103),(3,105),(3,106),(4,101),(4,107),(5,102),(5,107),(6,109),(7,109),(8,111),(8,112),(9,110),(10,108),(10,113);
/*!40000 ALTER TABLE `nasabah_has_rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekening`
--

DROP TABLE IF EXISTS `rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekening` (
  `no_rekening` int(11) NOT NULL,
  `kode_cabangFK` varchar(20) DEFAULT NULL,
  `pin` varchar(20) NOT NULL DEFAULT '1234',
  `saldo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekening`
--

LOCK TABLES `rekening` WRITE;
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` VALUES (101,'BRUS','1111',500000),(102,'BRUS','2222',350000),(103,'BRUS','3333',750000),(104,'BRUM','4444',900000),(105,'BRUM','5555',2000000),(106,'BRUS','6666',3000000),(107,'BRUS','7777',1000000),(108,'BRUB','0',5000000),(109,'BRUB','9999',0),(110,'BRUY','1234',550000),(111,'BRUK','4321',150000),(112,'BRUK','123',300000),(113,'BRUY','8888',255000);
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `no_transaksi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_nasabahFK` int(11) DEFAULT NULL,
  `no_rekeningFK` int(11) DEFAULT NULL,
  `jenis_transaksi` varchar(20) NOT NULL DEFAULT 'debit',
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `jumlah` int(11) NOT NULL CHECK (`jumlah` >= 20000),
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,3,105,'debit','2009-11-10 00:00:00',50000),(2,2,103,'debit','2009-11-10 00:00:00',40000),(3,4,101,'kredit','2009-11-10 00:00:00',20000),(4,3,106,'debit','2009-11-12 00:00:00',50000),(5,5,107,'kredit','2009-11-13 00:00:00',30000),(6,1,104,'kredit','2009-11-13 00:00:00',200000),(7,9,110,'kredit','2009-11-15 00:00:00',150000),(8,5,102,'debit','2009-11-16 00:00:00',20000),(9,3,105,'kredit','2009-11-18 00:00:00',50000),(10,4,107,'debit','2009-11-19 00:00:00',100000),(11,2,103,'debit','2009-11-19 00:00:00',100000),(12,1,104,'debit','2009-11-19 00:00:00',50000),(13,4,107,'kredit','2009-11-20 00:00:00',200000),(14,3,105,'debit','2009-11-21 00:00:00',40000),(15,1,104,'kredit','2009-11-22 00:00:00',100000),(16,4,101,'kredit','2009-11-22 00:00:00',20000),(17,2,103,'debit','2009-11-22 00:00:00',50000),(18,5,102,'debit','2009-11-25 00:00:00',50000),(19,10,108,'debit','2009-11-26 00:00:00',100000),(20,3,106,'kredit','2009-11-27 00:00:00',50000),(21,2,103,'kredit','2009-11-28 00:00:00',200000),(22,3,105,'kredit','2009-11-28 00:00:00',100000),(23,5,102,'debit','2009-11-30 00:00:00',20000),(24,1,104,'debit','2009-12-01 00:00:00',50000),(25,2,103,'debit','2009-12-02 00:00:00',40000),(26,4,101,'debit','0000-00-00 00:00:00',50000),(27,2,103,'kredit','0000-00-00 00:00:00',100000),(28,5,102,'kredit','0000-00-00 00:00:00',200000),(29,7,109,'debit','0000-00-00 00:00:00',100000),(30,9,110,'debit','0000-00-00 00:00:00',20000);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 21:52:25
