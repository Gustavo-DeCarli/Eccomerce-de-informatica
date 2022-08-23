-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ds
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
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idpro` (`id_prod`),
  CONSTRAINT `fk_idpro` FOREIGN KEY (`id_prod`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cat` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Componentes'),(2,'Periféricos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `dataped` date NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,'0000-00-00',1007.24),(2,1,'2022-08-16',1007.24),(4,1,'2022-08-16',1007.24),(5,1,'2022-08-16',883.57);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `valor` float NOT NULL,
  `descricao` varchar(3000) NOT NULL,
  `imagem` varchar(400) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idcat` (`id_categoria`),
  CONSTRAINT `fk_idcat` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'WATER COOLER DEEPCOOL LS520, A-RGB, 240MM, PRETO',729.9,'Marca:	DeepCool\r\nModelo:	R-LS520-BKAMNT-G-1\r\nSoquete:	Intel: LGA2066/2011-v3/2011/1700/1200/1151/1150/1155\r\nAMD: sTRX4/sTR4/AM5/AM4\r\nDimensões do radiador:	282 x 120 x 27 mm\r\nMaterial do radiador:	Alumínio\r\nComprimento do tubo:	410 mm\r\nDimensões da bomba:	86 x 74 x 57 mm\r\nVelocidade da bomba:	3100 RPM ± 10%\r\nRuído da Bomba:	19 dB(A)\r\nConector da Bomba:	3 pinos\r\nTensão nominal da bomba:	12 VCC\r\nCorrente nominal da bomba:	0,47A\r\nConsumo de energia da bomba:	5,64 W\r\nDimensões da ventoinha:	120 x 120 x 25 mm\r\nVelocidade da ventoinha:	500 ~ 2250 RPM ± 10%\r\nFluxo de ar da ventoinha:	85,85 CFM\r\nPressão de ar da ventoinha:	3,27 mmAq\r\nRuído da ventoinha:	≤32,9 dB(A)\r\nConector da ventoinha:	PWM de 4 pinos\r\nTipo de rolamento:	Rolamento fluidodinâmico\r\nTensão nominal da ventoinha:	12 VCC\r\nCorrente nominal da ventoinha:	0,29A\r\nConsumo de energia da ventoinha:	3,48 W\r\nTipo de LED:	RGB endereçável\r\nConector de LED:	3 pinos (+5V-DG)\r\nTensão nominal do LED:	5 VCC\r\nConsumo de energia LED:	2,2 W (Bomba)\r\n3,6 W (2 x Ventoinha)','images/r-ls520-bkamnt-g-1.jpg',116),(3,1,'GABINETE GAMER COOLER MASTER CP 510, ARGB, MID-TOWER, LATERAL DE VIDRO, COM 3 FANS, PRETO',519.99,'Marca:	Cooler Master\r\nModelo:	CP510-KGNN-S02\r\nCor:	Preto\r\nMaterial:	Aço / Plástico / Vidro Temperado\r\nPlaca mãe suportada:	Micro ATX / ATX / Mini-ITX\r\nLED:	ARGB\r\nFiltros de poeira:	Superior e inferior\r\nBaias:	2,5\" / 3,5\" (combo): 2\r\n2,5\": 2\r\nSlots de expansão:	7\r\nEntradas:	1 x USB 3.2 Gen 1 Tipo-A\r\n1 x USB 2.0\r\n1 x Fone de ouvido de 3,5 mm (áudio + microfone)\r\n1 x Controlador ARGB\r\nVentoinhas inclusas:	Frente: 3 x 120 mm ARGB\r\nVentoinhas suportadas:	Superior: 2 x 120mm, 2 x 140mm\r\nFrente: 3 x 120mm, 2 x 140mm\r\nTraseiro: 1 x 120 mm\r\nWater cooler suportado:	Superior: 120 / 240mm (limite de altura da barra de memória 35mm, primeiro monte a memória e depois monte o radiador)\r\nFrente: 120mm, 140mm, 240mm, 280mm\r\nTraseiro: 120 mm\r\nComprimento máximo da GPU:	350 mm (sem ventoinhas frontais e radiador)\r\nAltura máxima do cooler da CPU:	161 mm\r\nComprimento máximo da PSU:	160 mm\r\nRoteamento de cabo:	18,5 mm\r\nSuporte de fonte de alimentação:	Montagem inferior, ATX\r\nDimensões:	445 x 204 x 463 mm (incl. Saliências)\r\n436 x 204 x 448 mm (excl. Salsusões)','images/gabinete.jpg',27),(4,1,'GABINETE GAMER CORSAIR 7000X AIRFLOW, RGB, FULL TOWER, LATERAL DE VIDRO, PRETO',3046.69,'Marca:	Corsair\r\nModelo:	 CC-9011226-WW\r\nMaterial:	Vidro temperado\r\nPlaca mãe suportada:	ATX, Micro-ATX, Mini-ITX e E-ATX\r\nEntradas:	4 x USB 3.0\r\n1 x Entrada/saída de áudio\r\n1 x USB 3.1 Tipo C\r\nVentoinhas inclusas:	Frente: 3 x 120 mm\r\nTraseira: 1 x 120 mm\r\nVentoinhas suportadas:	Frente: 4 x 120 mm, 3 x 140 mm\r\nSuperior: 3 x 120 mm, 3 x 140 mm\r\nParte Interna: 4 x 120 mm\r\nTraseira: 1 x 120 mm, 1 x 140 mm\r\nWater cooler suportado:	Frente: 120 mm / 140 mm / 240 mm / 280 mm / 360 mm / 420 mm /480 mm\r\nParte Interna: 120 mm / 240 mm / 360 mm / 480 mm\r\nSuperior: 120 mm / 140 mm / 240 mm / 280 mm / 360 mm / 420 mm\r\nTraseira: 120mm / 140 mm\r\nBaias:	3 x SSDs de 2,5\"\r\n6 x HDDs de 3,5\"\r\nSlots de expansão (principal):	8 horizontal + 3 vertical\r\nComprimento máximo da PSU:	225 mm\r\nAltura máxima do cooler da CPU:	190 mm\r\nComprimento máximo da VGA:	450 mm\r\nFonte de energia suportada:	ATX (não incluído)\r\nDimensões:	550 x 248 x 600 mm','images/gabinete2.jpg',12),(5,1,'GABINETE COOLER MASTER HAF 500, ARGB, MID-TOWER, LATERAL DE VIDRO, COM 4 FANS, PRETO',899.99,'Marca:	Cooler Master\r\nModelo:	H500-KGNN-S00\r\nFormato:	Mid-Tower\r\nCor:	Preto\r\nMateriais:	Aço, Malha, Plástico\r\nMateriais painel lateral:	Vidro temperado, Aço\r\nSuporte para placa-mãe:	ITX, MICRO ATX, ATX, SSI CEB, E-ATX*, (*até 12\" x 14,1\", pode afetar o gerenciamento de cabos e os recursos do gabinete, remova a tampa do cabo e os recursos do suporte da ventoinha da gpu)\r\nSlots de expansão:	7\r\nBaias:	2.5\" / 3.5\"(combo): 2\r\n2,5\": 2\r\nEntradas:	2 x USB 3.2 gen 1 (anteriormente usb 3.0)\r\n1 x USB 3.2 gen 2 type-c\r\n1 x Conector de áudio único\r\n1 x Botão reset/argb\r\nVentoinhas Inclusas:	Frente: 2 x 200mm\r\nTraseiro: 1 x 120mm ARGB\r\nTop na gaiola do HDD: 1 x 120mm (ventoinha GPU)\r\nVentoinhas Suportadas:	Frente: 3 x 120mm, 2 x 140mm, 2 x 200mm (*200mm espaçamento do furo de montagem 154 x 154 com até 30mm de espessura)\r\nSuperior: 3 x 120mm, 2 x 120mm, 2 x 200mm\r\nTraseiro: 1 x 120mm\r\nParte superior na gaiola do HDD: 1 x 120mm\r\nWater Cooler Suportado:	Frente: 120mm, 140mm, 200mm, 240mm, 280mm, 360mm\r\nSuperior: 120mm, 140mm, 240mm, 280mm, 360mm\r\nTraseiro: 120mm\r\nLiquidação:	Cooler de CPU: 167 mm\r\nPSU: 180 mm\r\nGPU: 410 mm (Sem ventoinhas frontais e water cooler)\r\nRoteamento de cabo:	30 mm\r\nFiltros de pó:	Superior, Inferior\r\nSuporte de fonte de alimentação:	Montagem inferior, ATX\r\nDimensões:	516 x 224 x 510 mm','images/gabinete3.jpg',17),(6,1,'PROCESSADOR INTEL CORE I3-12100, 4-CORE, 8-THREADS, 3.3GHZ (4.3GHZ TURBO), CACHE 12MB, LGA1700',959.99,'Marca:	Intel\r\nModelo:	 BX8071512100\r\nFrequência Base:	3.30 GHz\r\nFrequência Turbo:	4.30 GHz\r\nNúcleos:	4\r\nThreads:	8\r\nLitografia:	Intel 7\r\nCache:	12 MB Intel® Smart Cache\r\nGráficos do processador:	Gráficos Intel® UHD 730\r\nFrequência de base gráfica:	300 MHz\r\nFrequência dinâmica máxima de gráficos:	1,40 GHz\r\nSoquete:	FCLGA1700\r\nPotência Base do Processador:	60 W\r\nPotência Turbo Máxima:	89 W\r\nTecnologias avançadas:	Acelerador Intel® Gaussiano e Neural 3,0\r\nIntel® Deep Learning Boost (Intel® DL Boost)\r\nMemória Intel® Optane™ compatível\r\nTecnologia Intel® Speed ​​Shift\r\nTecnologia Intel® Turbo Boost 2,0\r\nTecnologia Intel® Hyper-Threading\r\nIntel® 64\r\nConjunto de instruções 64 bits\r\nExtensões do conjunto de instruções: Intel® SSE4.1, Intel® SSE4.2, Intel® AVX2\r\nEstados ociosos\r\nTecnologia Intel SpeedStep® aprimorada\r\nTecnologias de monitoramento térmico\r\nDispositivo de gerenciamento de volume Intel® (VMD)','images/i3.jpg',13),(7,1,'PROCESSADOR INTEL PENTIUM GOLD G7400, 2-CORE, 4-THREADS, 3.7GHZ, CACHE 6MB, LGA1700',529.99,'Marca:	Intel\r\nModelo:	BX80715G7400\r\nSoquete:	FCLGA1700\r\nFrequência Base:	3.70 GHz\r\nIntel Smart Cache:	6 MB\r\nNúcleos:	2\r\nThreads:	4\r\nLitografia:	Intel 7\r\nVelocidade de memória:	Até DDR5 4800 MT/s\r\nAté DDR4 3200 MT/s\r\nGráficos:	Intel® UHD 710\r\nFrequência básica de gráficos:	300 MHz\r\nFrequência Dinâmica Máxima dos Gráficos:	1,35 GHz\r\nTecnologias:	Acelerador Intel® Gaussiano e Neural 3,0\r\nIntel® Deep Learning Boost (Intel® DL Boost)\r\nMemória Intel® Optane™ compatível\r\nTecnologia Intel® Speed ​​Shift\r\nTecnologia Intel® Turbo Boost Max 3.0\r\nTecnologia Intel® Turbo Boost\r\nTecnologia Intel® Hyper-Threading\r\nIntel® 64\r\nConjunto de instruções: 64 bits\r\nExtensões do conjunto de instruções: Intel® SSE4.1, Intel® SSE4.2, Intel® AVX2 Estados ociosos Tecnologia Intel SpeedStep® aprimorada Tecnologias de monitoramento térmico Dispositivo de gerenciamento de volume Intel® (VMD)\r\nTDP:	46 W','images/pentium.jpg',13),(8,1,'PROCESSADOR INTEL CORE I9-11900KF, 8-CORE, 16-THREADS, 3.5GHZ (5.3GHZ TURBO), CACHE 16MB, LGA1200',2829,'Marca:	Intel\r\nModelo:	BX8070811900KF\r\nSoquete:	FCLGA1200\r\nFrequência Base:	3.50 GHz\r\nFrequência Core Turbo:	Até 5.30 Ghz\r\nIntel Smart Cache:	16 MB\r\nNúcleos:	8\r\nThreads:	16\r\nLitografia:	14 nm\r\nVelocidade de memória:	DDR4-3200\r\nTecnologias:	Acelerador Intel® Gaussiano e Neural 2.0\r\nIntel® Deep Learning Boost (Intel® DL Boost)\r\nMemória Intel® Optane™ compatível\r\nAumento de velocidade térmica Intel®\r\nTecnologia Intel® Turbo Boost Max 3.0\r\nTecnologia Intel® Turbo Boost 2.0\r\nTecnologia Intel® Hyper-Threading\r\nIntel® 64\r\nConjunto de instruções: 64 bits\r\nExtensões do conjunto de instruções: Intel® SSE4.1, Intel® SSE4.2, Intel® AVX2, Intel® AVX-512\r\nEstados ociosos\r\nTecnologia Intel SpeedStep® aprimorada\r\nTecnologias de monitoramento térmico\r\nTecnologia Intel® Identity Protection\r\nTDP:	95 W','images/i9.jpg',13),(9,1,'PLACA MAE MSI MAG Z590 TOMAHAWK WIFI, DDR4, SOCKET LGA 1200, ATX, CHIPSET INTEL Z590',1899.99,'Marca:	MSI\r\nModelo:	MAG-Z590-TOMAHAWK-WIFI\r\nCPU:	Suporta processadores Intel® Core™ de 10ª geração, Intel® Core ™ de 11ª geração , Pentium® Gold e Celeron®\r\nSoquete do processador LGA1200\r\nChipset:	Intel® Z590\r\nMemória:	4 x Slots de memória DDR4, suporta até 128 GB\r\nSuporta 1R 2133/ 2666/ 2933 MHz para CPU Intel ® de 10ª geração (por JEDEC & POR)\r\nSuporta 1R 2133/ 2666/ 2933/ 3200 MHz para CPU Intel ® de 11ª geração (por JEDEC & POR)\r\nFrequência máxima de overclock:\r\n1DPC 1R Velocidade máxima até 5333 MHz\r\n1DPC 2R Velocidade máxima até 4700+ MHz\r\n2DPC 1R Velocidade máxima até 4400+ MHz\r\n2DPC 2R Velocidade máxima até 4000+ MHz\r\nSuporta o modo Dual-Channel\r\nSuporta memória não ECC e sem buffer\r\nSuporta Intel ® Extreme Memory Profile (XMP)\r\nSlots de expansão:	2 x Slots PCIe x16\r\n1 x Slot PCIe 3.0 x16 (da CPU)\r\nSuporta até PCIe 4.0 para CPU Intel ® de 11ª geração\r\nSuporta até PCIe 3.0 para CPU Intel ® de 10ª geração\r\nPCI_E3 (do chipset Z590)\r\nSuporta até PCIe 3.0 x4\r\n2 x Slots PCIe 3.0 x1 (do chipset Z590)\r\nGráficos:	1 x HDMI 2.0b com porta HDR, suporta uma resolução máxima de 4K 60Hz\r\n1 x Porta DisplayPort 1.4, suporta uma resolução máxima de 4K 60Hz\r\nDisponível apenas em processadores com gráficos integrados.\r\nAs especificações gráficas podem variar dependendo da CPU instalada.\r\nMULTI-GPU:	Suporta tecnologia AMD ® CrossFire ™ de 2 vias\r\nRAID:	Suporta RAID 0, RAID 1, RAID 5 e RAID 10 para dispositivos de armazenamento SATA\r\nSuporta RAID 0 e RAID 1 para dispositivos de armazenamento M.2 PCIe\r\nUSB:	Chipset Intel® Z590\r\n1 x Porta USB3.2 Gen2x2 20 Gbps Tipo-C no painel traseiro\r\n2 x Portas USB 3.2 Gen 2 de 10 Gbps (1 conector interno tipo C e 1 porta tipo A no painel traseiro)\r\n6 x Portas USB 3.2 Gen 1 de 5 Gbps (4 portas Tipo A no painel traseiro, 2 portas através do conector interno)\r\n1 x Porta USB 2.0 Tipo A no painel traseiro\r\nHub-GL850G\r\n5 x Portas USB 2.0 (1 porta Tipo A no painel traseiro, 4 portas Tipo A disponíveis através de conectores internos)\r\nÁudio:	Codec Realtek® ALC4080\r\nÁudio de alta definição de 7.1 canais\r\nSuporta saída S/PDIF\r\nLAN:	1 x Controlador de LAN Intel® I225 -V 2,5 Gbps\r\nSem fio e Bluetooth:	1 x Intel® Wi -Fi 6E AX210\r\n1 x Intel ® O módulo sem fio é pré-instalado no M.2 (slot Key-E)\r\nSuporta MU-MIMO TX/RX, 2.4GHz/6GHz1(160 MHz) até 2,4 Gbps\r\nSuporta 802.11 a/b/g/n/ac/ax\r\nSuporta Bluetooth® 5.22, FIPS, FISMA\r\nO Wi-Fi 6E 6GHz pode depender dos regulamentos de cada país e estará pronto no WIN10 21H1.O Bluetooth 5.2 estará pronto no WIN10 21H1.\r\nConectores de internos:	1 x Conector de alimentação principal ATX de 24 pinos\r\n1 x Conector de alimentação ATX 12V de 8 pinos\r\n1 x Conector de alimentação ATX 12V de 4 pinos\r\n1 x Conector de alimentação PCIE de 6 pinos\r\n6 x Conectores SATA 6Gb/s\r\n3 x Slots M.2 (M-Key)\r\n1 x porta USB 3.2 Gen 2 10 Gbps Tipo C\r\n1 x Conector USB 3.2 Gen 1 5 Gbps (suporta 2 portas USB 3.2 Gen 1 5 Gbps adicionais)\r\n2 x Conectores USB 2.0 Tipo A (suporta 4 portas USB 2.0 adicionais)\r\n1 x Conector de ventoinha da','images/z390.jpg',27),(10,1,'PLACA MAE MSI PRO B660M-A, DDR4, SOCKET LGA 1700, M-ATX, CHIPSET INTEL B660',1099.99,'Marca:	MSI\r\nModelo:	PRO-B660M-A\r\nCPU:	Suporta processadores Intel ® Core™ de 12ª geração\r\nSoquete do processador LGA1700\r\nChipset:	Intel® B660\r\nMemória:	4 x Slots de memória DDR4, suporta até 128 GB\r\nSuporta 1R 2133/2666/3200 MHz (por JEDEC & POR)\r\nFrequência máxima de overclock:\r\n1DPC 1R Velocidade máxima até 4800+ MHz\r\n1DPC 2R Velocidade máxima até 4000+ MHz\r\n2DPC 1R Velocidade máxima até 4000+ MHz\r\n2DPC 2R Velocidade máxima até 3600+ MHz\r\nSuporta o modo Dual-Channel\r\nSuporta memória sem ECC e sem buffer\r\nSuporta Intel ® Extreme Memory Profile (XMP)\r\nSlots de expansão:	2 x Slots PCIe x16\r\nPCI_E1 (da CPU)\r\nSuporte PCIe 4.0 x16\r\nPCI_E3 (do chipset B660)\r\nSuporte PCIe 3.0 x4\r\n1 x Slot PCIe 3.0 x1 (chipset Fom B660)\r\nGráficos:	2 x HDMI 2.1 com portas HDR, suportando uma resolução máxima de 4K 60Hz\r\n2 x Portas DisplayPort 1.4 com HBR3, suportando uma resolução máxima de 4K 60\r\nDisponível apenas em processadores com gráficos integrados.As especificações gráficas podem variar dependendo da CPU instalada.\r\nMulti-GPU:	Suporta a tecnologia AMD® CrossFire ™\r\nÁudio:	Codec Realtek® ALC897\r\nÁudio de alta definição de 7.1 canais\r\nArmazenamento:	4 x Portas SATA 6Gb/s (do chipset B660)\r\n2 x Slots M.2 (Chave M)\r\nSlot M2_1 (da CPU)\r\nSuporta até PCIe 4.0 x4\r\nSuporta dispositivos de armazenamento 2242/ 2260/ 2280\r\nSlot M2_2 (do chipset B660)\r\nSuporta até PCIe 4.0 x4\r\nSuporta até SATA 6Gb/s\r\nSuporta dispositivos de armazenamento 2242/ 2260/ 2280\r\nSuporta memória Intel® Optane™\r\nSuporte Intel ® Smart Response Technology para processadores Intel Core™\r\nSATA8 não estará disponível ao instalar o SSD M.2 SATA no slot M2_2.\r\nRAID:	Suporta RAID 0, RAID 1, RAID 5 e RAID 10 para dispositivos de armazenamento SATA\r\nLAN:	1 x Controlador de LAN Realtek ® RTL8125BG 2,5 Gbps\r\nUSB:	Chipset Intel® B660\r\n2 x Portas USB 3.2 Gen 2 10 Gbps Tipo A no painel traseiro\r\n3 x Portas USB 3.2 Gen 1 de 5 Gbps (2 portas Tipo A no painel traseiro, 1 Tipo C disponível através do conector interno)\r\n6 x Portas USB 2.0 (2 portas Tipo A no painel traseiro, 4 portas Tipo A disponíveis através dos conectores internos)\r\nAsmedia ASM1074\r\n2 x Portas USB 3.2 Gen 1 5 Gbps Tipo A através do conector interno\r\nConectores Internos:	1 x Conector de alimentação principal ATX de 24 pinos\r\n1 x Conector de alimentação ATX 12V de 8 pinos\r\n1 x Conector de alimentação ATX 12V de 4 pinos\r\n4 x Conectores SATA 6Gb/s\r\n2 x Slots M.2 (M-Key)\r\n1 x Porta USB 3.2 Gen 1 5Gbps Tipo-C\r\n1 x Conector USB 3.2 Gen 1 5 Gbps Tipo A (suporta 2 portas USB 3.2 Gen 1 5 Gbps adicionais)\r\n2 x Conectores USB 2.0 (suporta 4 portas USB 2.0 adicionais)\r\n1 x Conector de ventoinha da CPU de 4 pinos\r\n1 x Conector do ventoinha da bomba de água de 4 pinos\r\n2 x Conectores de ventoinha do sistema de 4 pinos\r\n1 x Conector de áudio do painel frontal\r\n2 x Conectores do painel do sistema\r\n1 x Conector de intrusão do chassi\r\n1 x Conector do módulo TPM\r\n1 x Jumper CMOS claro\r\n1 x Conector TBT (suporta RTD3)\r\n1 x Porta serial\r\n1 x Conector do controlador de aju','images/b660m.jpg',16),(11,1,'PLACA DE VIDEO EVGA GEFORCE RTX 3070 TI FTW3 ULTRA, LHR, 8GB, GDDR6X, 256-BIT',5399.99,'Marca:	EVGA\r\nModelo:	08G-P5-3797-KL\r\nGPU:	NVIDIA RTX 3070 Ti\r\nInterface:	PCIe 4.0\r\nNúcleos CUDA:	6144\r\nClock:	Boost: 1860 MHz\r\nTaxa de preenchimento de textura:	357.1GT/s\r\nVelocidade de memória:	19000 (efetivo)\r\nLargura de banda de memória:	608 GB/s\r\nTamanho de memória:	8192 MB\r\nTipo de memória:	GDDR6X\r\nInterface de memória:	256 bit\r\nEntradas:	3 x DisplayPort\r\n1 x HDMI\r\nSuporte HDCP:	2.3\r\nConsumo de energia:	290 W\r\nConectores:	Dois dongles de alimentação PCIe de 8 pinos ou 6+2 pinos\r\nDirectX:	12 Ultimate\r\nOpenGL:	4.6\r\nDimensões:	Altura: 136,75 mm\r\nComprimento: 300 mm\r\nLargura: 2.75 slots','images/3070.jpg',38),(12,1,'FONTE NZXT C750, 750W, FULL MODULAR, 80 PLUS GOLD, PRETA',949.99,'Marca:	NZXT\r\nModelo:	NP-C750M-US\r\nMateriais:	Aço, PCB e plástico\r\nPadrão de conformidade:	ATX12V v2.52 / EPS12V v2.92\r\nClassificação de entrada CA:	100 - 240Vac: 10A-5A 50Hz-60Hz\r\nClassificação de sáida CC:	+3,3V e +5V: 22A (120W)\r\n+12 V: 62,5 A (750 W)\r\n-12V: 0,3A (3,6W)\r\n5Vsb: 3A (15W)\r\nPotência:	750 W\r\nDimensões da ventoinha:	135 x 135 x 25 mm\r\nVelocidade da ventoinha:	0-2300 ± 10% RPM\r\nFluxo de ar da ventoinha:	93,02 CFM (Tpa.)\r\nRuído da ventoinha:	44,5 dBA máx\r\nRolamento da ventoinha:	Rolamento fluido dinâmico (FDB)\r\nClassificação:	80 Plus Gold\r\nEficiência:	20% de carregamento: 87% @ 115Vac\r\n50% de carregamento: 90,5% @ 115Vac\r\n100% de carregamento: 87,5% @ 115Vac\r\nCorreção PF:	Ativo @0,96\r\nMTBF:	100.000 horas\r\nTemperatura de operação:	0 - 50°C (redução de 100% a 80% de 40°C a 50°C)\r\nCabo:	24-pin ATX power: 600 mm, Nylon sleeving\r\n4+4-pin CPU power: 700 mm, Nylon sleeving\r\n6+2-pin PCIe power: 650 + 150 mm, Nylon sleeving\r\nSATA power: 500 + 150 mm\r\nPeripherals: 500 + 150 mm\r\nConectores:	1 x Alimentação ATX de 24 pinos\r\n2 x Potência da CPU de 4+4 pinos\r\n6 x Alimentação PCIe de 6+2 pinos\r\n6 x Potência SATA\r\n6 x Periféricos\r\nRegulamentos e certificações (EMC e segurança):	cTUV-SUDus / CUL (UL60950/62368-1) / TUV / (EN60950/62368-1) / CB/ (IEC 950/62368-1) / CCC / CEC / BSMI / RCM / EAC / CE / LVD / UKCA\r\nDimensões:	150 x 150 x 86 mm','images/c750.jpg',13),(13,2,'TECLADO MECANICO GAMER AKKO 6104S, RGB, SWITCH MARROM',839.99,'Marca:	Akko\r\nModelo:	AKKO-6140S-BROWN\r\nSwitch:	Cherry MX Marrom\r\nInterface:	USB Tipo C\r\nMacro:	Akko Macro V1.0\r\nRollover N-Key:	Compatível\r\nWinlock desativável:	Compatível\r\nRetroiluminado:	Compatível\r\nMaterial:	PBT\r\nTecnologia de impressão:	Sublimação de tinta\r\nPeso:	Aproximadamente 1.2KG\r\nDimensões:	461 x 172 x 38 mm','images/akko6104s.jpg',47),(14,2,'HEADSET GAMER REDRAGON PANDORA LUNAR WHITE, RGB, DRIVERS 50MM',209.99,'Marca:	Redragon\r\nModelo:	H350W-RGB\r\nCaracterísticas:	Drive para surround virtual 7.1.\r\nIluminação RGB\r\nMicrofone destacável com cancelamento de ruído\r\nUnidade de alta qualidade de reprodução de som Dinâmico stereo.\r\nCompatível com Sistemas Win10, Win8, Win7, WinXP\r\nCor:	Branco\r\nDiâmetro do driver:	50 mm\r\nMaterial das Earpads:	Couro sintético\r\nSensibilidade:	93 ± 3dB\r\nFrequência de resposta:	20Hz - 20KHz\r\nImpedância	24 Ohm ± 15%\r\nSensibilidade do microfone:	- 42 ± 4 dB (0dB = 1V/PA)\r\nPolar Pattern do microfone:	Omnidirecional\r\nIluminação:	RGB\r\nFunção de silenciar o microfone:	Controladora do headset.\r\nConexão:	USB\r\nComprimento do cabo:	2.1m','images/rpandora.jpg',19),(15,2,'MOUSE GAMER REDRAGON REAPING ELITE, RGB, 32000DPI, 6 BOTOES, PRETO',199.99,'Marca:	Redragon\r\nModelo:	M987P-K\r\nCaracterísticas:	Carcaça com design em colmeia ultraleve e cabo ultraleve.\r\nShape ergonômico e extremamente confortável até mesmo durante longos períodos de uso.\r\nEquipado com o sensor profissional de altíssimo desempenho PIXART PWM 3389 de até 32000 DPI o mouse Reaping eleva a sua experiência dentro dos games.\r\nIluminação RGB Redragon Chroma Mk.II trazendo mais brilho para seu setup.\r\nMouse feet de qualidade superior que oferece controle suave com baixo atrito e deslizamento consistente.\r\nSensor:	PMW3389\r\nDPI:	Até 32000 DPI\r\nPolling Rate:	Até 1000Hz\r\nBotões Programáveis:	6\r\nShape:	Ergonomico\r\nDesign:	Honeycomb Ultraleve\r\nPeso:	Aproximadamente 55g\r\nCor:	Preto\r\nSwitches principais:	Huano 20M\r\nCodificador do scroll:	F-SWITCH\r\nIluminação:	Redragon RGB Chroma Mk2\r\nSoftware:	Sim\r\nMateriais:	Plástico ABS\r\nConectividade:	USB 2.0\r\nComprimento do cabo:	Aproximadamente 1.90m\r\nTipo de cabo:	Paracord\r\nDimensões:	123,8 x 64,5 x 40,5 mm','images/reapingelite.jpg',77),(16,2,'CADEIRA GAMER COUGAR TERMINATOR, PRETO',5999.99,'Marca:	Cougar\r\nModelo:	3MTERNXB.0001\r\nCaracterísticas:	Excelente suporte para curva natural da coluna\r\nDesign de suporte lombar otimizado\r\nDesign de encosto ventilado\r\nEncosto flexível em PAFRP\r\nCouro sintético Hyper-Dura\r\nExcitação, desempenho revolucionário e excelente ergonomia\r\nDesign totalmente personalizável e ajustável\r\nUltra-estabilidade e durabilidade máxima\r\nMaterial:	Couro sintético Hyper-Dura\r\nApoio de braço:	4D\r\nTamanho da roda:	3\"\r\nPeso suportado:	135 kg\r\nLargura do encosto superior:	635 mm\r\nLargura do encosto inferior:	500 mm\r\nAltura do encosto:	835 mm\r\nAltura do chão até a base:	460 ~ 540 mm\r\nProfundidade do assento:	595 mm\r\nAltura total:	1295 ~ 1375 mm','images/cougarterminator.jpg',23),(17,2,'WEBCAM REDRAGON STREAMING APEX 2 FULL HD 1080P',419.99,'Marca:	Redragon\r\nModelo:	GW900-1\r\nCaracterísticas:	Webcam com resolução 1080p e ajuste de foco automático para boa experiência fora da caixa com resolução e qualidade sem a necessidade de ajustes.\r\nAcompanha apoio ajustável em 360° para instalação da webcam em monitores.\r\nPlug & Play sem a necessidade de drivers.\r\nRosca padronizada integrada para instalação da webcam em tripés convencionais.\r\nTamanho da lente:	1 / 2.7\"\r\nResolução:	1920 x 1080\r\nFormato de dados:	MJPG / YUY2\r\nTamanho do pixel:	3 x 3 μm\r\nLente:	FOV D = 76 °\r\nFoco:	Automático\r\nAlcance do foco:	7 cm até infinito\r\nTaxa de quadros:	30 FPS Máximo\r\nControle automático:	Saturação, Contraste, Acutância, Equilíbrio de branco, Exposição\r\nCompatibilidade do sistema:	Win XP (SP2, SP3), VISTA, Win 7, 8 10, Linux ou OS com driver UVC, MacOS 10.6 ou superior.','images/web.jpg',13),(18,2,'WEBCAM LOGITECH BRIO 4K PRO HDR RIGHTLIGHT 3',1239.99,'Marca:	Logitech\r\nModelo:	960-001178\r\nCaracterísticas:	A predefinição de 65° na diagonal é ideal para contato visual e conversas cara a cara perfeita para quando você quiser que o foco esteja em você e não no espaço de trabalho ao seu redor.\r\nA predefinição de 78° na diagonal revela mais o espaço, proporcionando uma visão mais completa do seu ambiente físico, ao mesmo tempo em que permite manter um excelente contato visual.\r\nA predefinição grande angular de 90° exibe ainda mais o ambiente e é ideal para mostrar objetos físicos e conteúdo em quadros brancos na câmera.\r\nResoluções:	4K/30 fps (até 4096 x 2160 pixels)\r\n1080p/30 ou 60 fps (até 1920 x 1080 pixels)\r\n720p/30, 60, ou 90 fps (até 1280 x 720 pixels) \r\nCompatibilidade:	Windows® 7 ou posterior (Windows 8.1 ou posterior necessário para resoluções maiores que 1080p) macOS 10.10 ou posterior\r\nChrome OS™ versão 29.0.1547.70 e posterior\r\n2 GB de RAM ou mais necessários para streaming de vídeo de 1080p\r\n1 GB é normalmente necessário para streaming de 720p\r\nUma porta USB 2 ou USB 3 (gravação e streaming de 4K requer uma porta USB 3.0 e compatibilidade com software de terceiros)\r\nFunciona com as plataformas de chamada mais populares','images/web2.jpg',23),(19,2,'TECLADO MECANICO REDRAGON LAKSHMI, RAINBOW, ABNT2, COMPACTO, SWITCH MARROM',169.99,'Marca:	Redragon\r\nModelo:	K606R-PT-BROWN\r\nCaracterísticas:	Para os gamers que procuram deixar o máximo de espaço possível sobre a mesa, o Redragon Lakshmi vem no layout compacto 60% ABNT2.\r\nContando com um cabo removível USB-C, o Lakshmi é um modelo muito portátil para aqueles usuários que buscam praticidade na hora levar seus equipamentos.\r\nSem deixar de lado a qualidade na sua construção, as keycaps do Lakshmi são feitas com o método de double shot injection para a longevidade das marcações.\r\nSwitches:	Redragon MK II\r\nAcionamento:	Mecânico\r\nDIY:	Sim\r\nCor:	Preto\r\nFormato:	60% (61 Teclas)\r\nDesign:	High Profile\r\nLayout:	ABNT2\r\nConectividade:	Cabo USB-C para USB-A removível\r\nSoftware:	Não\r\nAltura Ajustável:	Sim\r\nMateriais do case:	Plástico ABS\r\nIluminação:	Rainbow\r\nRollover:	N-Key\r\nComprimento do cabo:	1.8\r\nKeycaps:	Doubleshot ABS','images/REDRAGONLAKSHMI.jpg',39),(20,2,'MOUSEPAD GAMER CORSAIR MM700, RGB, EXTRA GRANDE, 930X400X4MM',535.29,'Marca:	Corsair\r\nModelo:	CH-9417070-WW\r\nMaterial:	Pano\r\nIluminação:	RGB\r\nDimensões:	930 x 400 x 4 mm\r\nMaterial da superfície:	Tecido resistente\r\nMaterial da base:	Borracha antiderrapante\r\nConectividade:	1 x USB Tipo-C\r\nCabo:	1,8m, trançado, removível\r\nUSB Tipo C a Tipo A','images/mousepad.jpg',22),(21,2,'REDRAGON KIT GAMER TECLADO E MOUSE',449.89,'Marca\r\nRedragon\r\n\r\nModelo\r\nID582\r\n\r\nMaterial \r\nPlástico ABS\r\n\r\nInterface\r\nUSB\r\n\r\nTipo de padrão\r\nABNT2\r\n\r\nTipo de teclado\r\nÓptico\r\n\r\nComprimento do cabo\r\n1,80m\r\n\r\nIluminação\r\nRedragon Chroma\r\n\r\nDimensões\r\n439 x 130 x 28 mm\r\n\r\nMouse\r\nMarca\r\nRedragon\r\n\r\nModelo\r\nID711\r\n\r\nSensor \r\nPMW3389\r\n\r\nDPI\r\nAté 16000DPI\r\n\r\nIluminação\r\nRGB Redragon Chroma\r\n\r\nNúmero de botões\r\n8\r\n\r\nDesign\r\nTradicional\r\n\r\nPeso\r\n89g\r\n\r\nMateriais\r\nPlástico ABS','images/kitredragon.jpg',36);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `senha` varchar(120) NOT NULL,
  `datanasc` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `CEP` int(8) NOT NULL,
  `endereco` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'GUSTAVO DE CARLI','$2y$10$DaivvWkLX4Aj.fJSH8WroOnfHBaHPKOIt4MZG/kTnTI1rh3brg7He','2004-04-27','gdecarli4@gmail.com','BENTO GONÇALVES',95707,'RUA SANTOS DUMONT');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 14:59:17
