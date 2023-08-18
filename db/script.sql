USE [master]
GO
/****** Object:  Database [banco provincia banca pyme]    Script Date: 18/8/2023 13:21:42 ******/
CREATE DATABASE [banco provincia banca pyme]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'xd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\xd.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'xd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\xd_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [banco provincia banca pyme] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [banco provincia banca pyme].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [banco provincia banca pyme] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET ARITHABORT OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banco provincia banca pyme] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [banco provincia banca pyme] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET  DISABLE_BROKER 
GO
ALTER DATABASE [banco provincia banca pyme] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banco provincia banca pyme] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [banco provincia banca pyme] SET  MULTI_USER 
GO
ALTER DATABASE [banco provincia banca pyme] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [banco provincia banca pyme] SET DB_CHAINING OFF 
GO
ALTER DATABASE [banco provincia banca pyme] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [banco provincia banca pyme] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [banco provincia banca pyme] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [banco provincia banca pyme] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [banco provincia banca pyme] SET QUERY_STORE = ON
GO
ALTER DATABASE [banco provincia banca pyme] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [banco provincia banca pyme]
GO
/****** Object:  Table [dbo].[caja_ahorro]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caja_ahorro](
	[numr_tarjeta] [bigint] NULL,
	[usuarios_id] [int] NULL,
	[CVV] [int] NULL,
	[monto_disp] [int] NULL,
	[tipo_tarjeta] [varchar](4) NULL,
	[limite] [int] NULL,
	[fecha_emision] [date] NULL,
	[fecha_vencimiento] [date] NULL,
	[estado_tarjeta] [varchar](10) NULL,
	[moneda] [varchar](14) NULL,
	[fecha_alta] [date] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credito]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credito](
	[id] [int] NULL,
	[usuarios_id] [int] NULL,
	[CVV] [int] NULL,
	[tipo_tarjeta] [varchar](4) NULL,
	[limite_crediticio] [int] NULL,
	[fecha_emision] [date] NULL,
	[fecha_vencimiento] [date] NULL,
	[estado] [varchar](10) NULL,
	[moneda] [varchar](14) NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plazo_fijo]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plazo_fijo](
	[id] [int] NULL,
	[usuario_id] [int] NULL,
	[monto] [int] NULL,
	[tasa_interes] [int] NULL,
	[plazo] [int] NULL,
	[moneda] [varchar](14) NULL,
	[intereses_generados] [int] NULL,
	[nro_referencia] [int] NULL,
	[fecha_alta] [date] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestamos]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestamos](
	[prestamo_id] [int] NULL,
	[nro_prestamo] [int] NULL,
	[usuario_id] [int] NULL,
	[monto] [int] NULL,
	[cuotas] [int] NULL,
	[intereses] [int] NULL,
	[total_pagar] [int] NULL,
	[total_pagado] [int] NULL,
	[plazo_tiempo] [int] NULL,
	[descripcion_prestamo] [text] NULL,
	[tasa_interes] [int] NULL,
	[fecha_alta] [date] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transacciones]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transacciones](
	[id_transaccion] [int] NULL,
	[fecha_hora] [date] NULL,
	[cuenta_origen] [int] NULL,
	[cuenta_destino] [int] NULL,
	[tipo_transaccion] [varchar](13) NULL,
	[monto] [int] NULL,
	[descripcion] [text] NULL,
	[estado] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 18/8/2023 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] NULL,
	[DNI] [int] NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[clave] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[nro_seguro_social] [bigint] NULL,
	[preguntas_seguridad] [text] NULL,
	[fecha_alta] [date] NULL,
	[fecha_baja] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9412445785339079, 1, 123, 231493, N'VISA', 100000, CAST(N'2012-06-13' AS Date), CAST(N'2026-03-30' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2019-06-21' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9280130175076040, 12, 801, 847999, N'VISA', 100000, CAST(N'2010-05-09' AS Date), CAST(N'2025-07-17' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2012-02-01' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9063806249426055, 14, 231, 1942518, N'VISA', 100000, CAST(N'2012-02-15' AS Date), CAST(N'2027-02-10' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2014-11-11' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9393674959172466, 15, 505, 495576, N'VISA', 100000, CAST(N'2011-02-07' AS Date), CAST(N'2027-03-05' AS Date), N'habilitada', N'Dolar', CAST(N'2020-05-20' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9102790471050286, 12, 533, 1313187, N'VISA', 100000, CAST(N'2010-06-22' AS Date), CAST(N'2027-06-10' AS Date), N'bloqueada', N'Peso Argentino', CAST(N'2019-03-07' AS Date), CAST(N'2022-09-07' AS Date))
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9487678145707285, 11, 608, 846918, N'VISA', 100000, CAST(N'2012-06-03' AS Date), CAST(N'2026-08-23' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2018-06-07' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9698516100868343, 2, 273, 1172003, N'VISA', 100000, CAST(N'2010-10-19' AS Date), CAST(N'2024-02-12' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2013-01-24' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9470132552165830, 10, 159, 1729272, N'VISA', 100000, CAST(N'2012-02-23' AS Date), CAST(N'2026-03-18' AS Date), N'pausada', N'Peso Argentino', CAST(N'2013-01-17' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9008633168218445, 5, 650, 104605, N'VISA', 100000, CAST(N'2011-05-03' AS Date), CAST(N'2026-12-18' AS Date), N'habilitada', N'Dolar', CAST(N'2022-05-30' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9947200681663303, 18, 533, 1651340, N'VISA', 100000, CAST(N'2012-10-19' AS Date), CAST(N'2025-02-08' AS Date), N'pausada', N'Peso Argentino', CAST(N'2013-12-28' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9108905504885557, 16, 107, 1083885, N'VISA', 100000, CAST(N'2011-07-11' AS Date), CAST(N'2024-05-05' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2012-01-17' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9281584351062836, 15, 109, 663009, N'VISA', 100000, CAST(N'2011-09-05' AS Date), CAST(N'2027-04-07' AS Date), N'habilitada', N'Dolar', CAST(N'2018-11-28' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9801494123577617, 11, 622, 824763, N'VISA', 100000, CAST(N'2010-11-14' AS Date), CAST(N'2027-07-25' AS Date), N'habilitada', N'Dolar', CAST(N'2011-09-26' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9444545709939264, 20, 313, 1488254, N'VISA', 100000, CAST(N'2012-03-03' AS Date), CAST(N'2026-04-13' AS Date), N'habilitada', N'Dolar', CAST(N'2010-01-07' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9028778274394882, 11, 909, 478850, N'VISA', 100000, CAST(N'2012-10-22' AS Date), CAST(N'2027-06-19' AS Date), N'pausada', N'Dolar', CAST(N'2022-03-05' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9008612615782931, 11, 936, 1334156, N'VISA', 100000, CAST(N'2010-11-06' AS Date), CAST(N'2027-04-16' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2011-12-15' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9905215659879409, 20, 890, 1421857, N'VISA', 100000, CAST(N'2012-06-20' AS Date), CAST(N'2024-09-11' AS Date), N'pausada', N'Dolar', CAST(N'2019-05-27' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9853552574253666, 16, 559, 965822, N'VISA', 100000, CAST(N'2011-04-26' AS Date), CAST(N'2026-04-27' AS Date), N'habilitada', N'Dolar', CAST(N'2020-01-26' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9499997748530813, 17, 763, 473180, N'VISA', 100000, CAST(N'2010-01-13' AS Date), CAST(N'2024-12-07' AS Date), N'habilitada', N'Dolar', CAST(N'2023-03-26' AS Date), NULL)
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9810301662981351, 9, 374, 417834, N'VISA', 100000, CAST(N'2012-12-20' AS Date), CAST(N'2026-07-19' AS Date), N'bloqueada', N'Peso Argentino', CAST(N'2019-01-13' AS Date), CAST(N'2023-07-12' AS Date))
INSERT [dbo].[caja_ahorro] ([numr_tarjeta], [usuarios_id], [CVV], [monto_disp], [tipo_tarjeta], [limite], [fecha_emision], [fecha_vencimiento], [estado_tarjeta], [moneda], [fecha_alta], [fecha_baja]) VALUES (9636434374829233, 13, 689, 1042742, N'VISA', 100000, CAST(N'2012-04-08' AS Date), CAST(N'2027-03-29' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2015-09-06' AS Date), NULL)
GO
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (1, 25, 160, N'VISA', 649939, CAST(N'2013-09-04' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (2, 23, 797, N'VISA', 417583, CAST(N'2010-12-07' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (3, 9, 986, N'VISA', 617935, CAST(N'2013-04-09' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (4, 27, 223, N'VISA', 359379, CAST(N'2011-05-23' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (5, 23, 933, N'VISA', 735786, CAST(N'2013-07-30' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (6, 16, 596, N'VISA', 399492, CAST(N'2012-02-20' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (7, 4, 458, N'VISA', 370575, CAST(N'2010-09-05' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (8, 21, 641, N'VISA', 386931, CAST(N'2012-08-20' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (9, 3, 909, N'VISA', 293984, CAST(N'2014-02-04' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (10, 16, 618, N'VISA', 680559, CAST(N'2013-12-08' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (11, 20, 811, N'VISA', 509573, CAST(N'2011-11-07' AS Date), CAST(N'2023-08-04' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (12, 3, 964, N'VISA', 614539, CAST(N'2012-01-19' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (13, 21, 539, N'VISA', 380924, CAST(N'2012-01-22' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (14, 6, 622, N'VISA', 632358, CAST(N'2011-10-05' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (15, 18, 561, N'VISA', 294829, CAST(N'2013-11-30' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (16, 19, 433, N'VISA', 395590, CAST(N'2011-09-11' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (17, 26, 858, N'VISA', 547568, CAST(N'2013-12-01' AS Date), CAST(N'2023-08-04' AS Date), N'habilitada', N'Peso Argentino', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (18, 12, 770, N'VISA', 615826, CAST(N'2012-07-11' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (19, 16, 838, N'VISA', 778775, CAST(N'2010-08-23' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (20, 5, 590, N'VISA', 503042, CAST(N'2013-04-08' AS Date), CAST(N'2023-08-04' AS Date), N'bloqueada', N'Peso Argentino', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (21, 25, 685, N'VISA', 675270, CAST(N'2010-10-12' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (22, 1, 710, N'VISA', 247008, CAST(N'2013-08-05' AS Date), NULL, N'pausada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (23, 21, 545, N'VISA', 467313, CAST(N'2011-10-16' AS Date), NULL, N'habilitada', N'Peso Argentino', NULL)
INSERT [dbo].[credito] ([id], [usuarios_id], [CVV], [tipo_tarjeta], [limite_crediticio], [fecha_emision], [fecha_vencimiento], [estado], [moneda], [fecha_baja]) VALUES (24, 6, 920, N'VISA', 514645, CAST(N'2011-11-04' AS Date), NULL, N'habilitada', N'Peso Argentino', CAST(N'2023-08-04' AS Date))
GO
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (1, 23, 27082, 105, 13, N'Peso Argentino', 51556, 9896, CAST(N'2018-11-19' AS Date), CAST(N'2020-11-19' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (2, 9, 28120, 10, 6, N'Dolar', 46008, 5040, CAST(N'2018-04-10' AS Date), CAST(N'2019-04-10' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (3, 14, 21367, 101, 23, N'Peso Argentino', 49991, 6000, CAST(N'2017-07-26' AS Date), CAST(N'2022-07-26' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (4, 2, 23928, 95, 6, N'Peso Argentino', 50911, 1938, CAST(N'2016-05-11' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (5, 2, 27217, 105, 21, N'Peso Argentino', 45385, 1445, CAST(N'2017-12-19' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (6, 20, 21349, 101, 10, N'Peso Argentino', 46337, 9810, CAST(N'2019-02-18' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (7, 19, 28676, 104, 9, N'Peso Argentino', 40481, 4381, CAST(N'2019-02-11' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (8, 6, 28332, 96, 23, N'Peso Argentino', 48212, 4370, CAST(N'2015-10-13' AS Date), CAST(N'2021-10-13' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (9, 16, 27307, 100, 15, N'Peso Argentino', 46080, 2073, CAST(N'2017-02-11' AS Date), CAST(N'2019-02-11' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (10, 21, 23068, 95, 18, N'Peso Argentino', 47224, 3866, CAST(N'2017-09-14' AS Date), CAST(N'2018-09-14' AS Date))
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (11, 23, 29792, 95, 14, N'Peso Argentino', 47806, 3071, CAST(N'2016-02-18' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (12, 7, 25391, 97, 12, N'Peso Argentino', 54443, 2249, CAST(N'2018-01-11' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (13, 24, 27055, 98, 8, N'Peso Argentino', 45880, 3920, CAST(N'2015-11-06' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (14, 9, 24591, 104, 12, N'Peso Argentino', 47807, 4685, CAST(N'2020-02-06' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (15, 15, 24750, 96, 12, N'Peso Argentino', 44114, 9575, CAST(N'2019-05-28' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (16, 11, 24791, 96, 21, N'Peso Argentino', 56044, 9655, CAST(N'2016-10-22' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (17, 17, 28279, 95, 24, N'Peso Argentino', 41583, 8464, CAST(N'2017-07-30' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (18, 2, 21674, 105, 12, N'Peso Argentino', 55873, 9897, CAST(N'2016-01-07' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (19, 25, 21888, 10, 16, N'Dolar', 52525, 8473, CAST(N'2017-02-17' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (20, 14, 22253, 100, 8, N'Peso Argentino', 41373, 4989, CAST(N'2016-12-07' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (21, 3, 20002, 95, 22, N'Peso Argentino', 42378, 4896, CAST(N'2020-05-18' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (22, 16, 27808, 103, 14, N'Peso Argentino', 57551, 5335, CAST(N'2019-10-09' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (23, 6, 25974, 95, 20, N'Peso Argentino', 50663, 3775, CAST(N'2019-01-23' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (24, 16, 22284, 99, 24, N'Peso Argentino', 49951, 8301, CAST(N'2019-08-20' AS Date), NULL)
INSERT [dbo].[plazo_fijo] ([id], [usuario_id], [monto], [tasa_interes], [plazo], [moneda], [intereses_generados], [nro_referencia], [fecha_alta], [fecha_baja]) VALUES (25, 20, 22132, 99, 23, N'Peso Argentino', 48716, 2130, CAST(N'2016-08-15' AS Date), NULL)
GO
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (1, 6080389, 22, 65, 17, 769327, 28724, 7829, 11, N'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 50, CAST(N'2015-01-28' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (2, 7793062, 6, 69, 14, 298924, 446437, 31245, 17, N'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 38, CAST(N'2015-11-08' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (3, 6833486, 9, 11, 26, 39178, 240605, 54894, 23, N'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 26, CAST(N'2011-09-08' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (4, 6492032, 5, 29, 31, 757331, 333612, 2191, 21, N'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 23, CAST(N'2013-07-05' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (5, 5341490, 12, 95, 14, 195763, 164179, 54576, 12, N'Nunc purus.', 25, CAST(N'2009-03-14' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (6, 8701477, 12, 48, 25, 277821, 144310, 21334, 15, N'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 26, CAST(N'2023-07-04' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (7, 1916979, 19, 69, 35, 555338, 403580, 48399, 24, N'Duis consequat dui nec nisi volutpat eleifend.', 50, CAST(N'2012-06-05' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (8, 8260329, 8, 87, 30, 785945, 151167, 37572, 19, N'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 38, CAST(N'2016-08-14' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (9, 8580829, 18, 91, 15, 173296, 98181, 15628, 24, N'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 42, CAST(N'2008-11-02' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (10, 6864972, 5, 58, 12, 897667, 294694, 25743, 20, N'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 43, CAST(N'2006-12-14' AS Date), CAST(N'2007-12-24' AS Date))
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (11, 8772039, 2, 88, 21, 155662, 64035, 19123, 13, N'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 26, CAST(N'2019-07-01' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (12, 3282155, 24, 34, 30, 319440, 331069, 1387, 8, N'Pellentesque viverra pede ac diam.', 29, CAST(N'2014-03-26' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (13, 4183622, 21, 46, 16, 982260, 377140, 53777, 13, N'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 24, CAST(N'2009-01-12' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (14, 7043285, 20, 32, 16, 538116, 82224, 47590, 11, N'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 32, CAST(N'2014-09-30' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (15, 5627032, 13, 17, 26, 310414, 506347, 39739, 10, N'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 33, CAST(N'2022-02-03' AS Date), CAST(N'2006-09-18' AS Date))
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (16, 5319570, 17, 5, 21, 536871, 471567, 44874, 14, N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 37, CAST(N'2009-09-21' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (17, 4554251, 1, 52, 18, 398905, 66028, 28705, 16, N'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 37, CAST(N'2009-11-19' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (18, 4199760, 4, 98, 19, 757252, 408086, 9172, 12, N'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 23, CAST(N'2015-08-19' AS Date), CAST(N'2020-04-19' AS Date))
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (19, 5742541, 25, 17, 18, 116280, 235097, 35040, 18, N'Donec ut dolor.', 20, CAST(N'2017-07-18' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (20, 6994917, 2, 7, 17, 445380, 545325, 37227, 22, N'Suspendisse accumsan tortor quis turpis.', 40, CAST(N'2013-12-30' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (21, 5434242, 3, 11, 23, 852129, 187280, 26507, 15, N'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 33, CAST(N'2006-06-28' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (22, 6528428, 23, 71, 29, 203618, 340695, 24044, 22, N'Phasellus sit amet erat.', 38, CAST(N'2002-09-06' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (23, 2258047, 18, 16, 32, 177426, 508563, 35949, 9, N'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 50, CAST(N'2020-03-18' AS Date), NULL)
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (24, 9722445, 3, 14, 27, 485667, 83074, 55539, 21, N'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 29, CAST(N'2002-10-21' AS Date), CAST(N'2007-10-11' AS Date))
INSERT [dbo].[prestamos] ([prestamo_id], [nro_prestamo], [usuario_id], [monto], [cuotas], [intereses], [total_pagar], [total_pagado], [plazo_tiempo], [descripcion_prestamo], [tasa_interes], [fecha_alta], [fecha_baja]) VALUES (25, 7786602, 20, 41, 30, 217995, 191046, 17661, 9, N'Pellentesque viverra pede ac diam.', 34, CAST(N'2009-03-17' AS Date), CAST(N'2012-09-13' AS Date))
GO
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (1, CAST(N'2023-05-24' AS Date), 2, 37, N'transferencia', 53748, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (2, CAST(N'2022-10-21' AS Date), 4, 59, N'transferencia', 68281, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (3, CAST(N'2023-02-14' AS Date), 18, 63, N'transferencia', 56581, N'Duis at velit eu est congue elementum.', N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (4, CAST(N'2023-06-23' AS Date), 3, 50, N'transferencia', 66074, NULL, N'denegada')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (5, CAST(N'2023-03-09' AS Date), 3, 24, N'transferencia', 53680, N'Nam nulla.', N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (6, CAST(N'2022-11-07' AS Date), 15, NULL, N'retiro', 32330, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (7, CAST(N'2022-10-29' AS Date), 3, NULL, N'retiro', 19954, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (8, CAST(N'2023-03-29' AS Date), 13, NULL, N'retiro', 5260, N'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (9, CAST(N'2023-04-18' AS Date), 15, 26, N'transferencia', 84681, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (10, CAST(N'2023-05-24' AS Date), 18, NULL, N'retiro', 22378, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (11, CAST(N'2023-03-28' AS Date), 15, 77, N'transferencia', 33061, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (12, CAST(N'2023-06-23' AS Date), 20, NULL, N'retiro', 74546, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (13, CAST(N'2022-09-24' AS Date), 10, 73, N'transferencia', 25912, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (14, CAST(N'2022-09-05' AS Date), 16, 35, N'transferencia', 78649, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (15, CAST(N'2023-01-28' AS Date), 20, 45, N'transferencia', 29490, N'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (16, CAST(N'2023-03-05' AS Date), 19, NULL, N'retiro', 52165, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (17, CAST(N'2022-10-12' AS Date), 17, NULL, N'retiro', 22972, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (18, CAST(N'2022-09-09' AS Date), 10, 95, N'transferencia', 81949, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (19, CAST(N'2023-01-08' AS Date), 18, 99, N'transferencia', 90519, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (20, CAST(N'2023-03-02' AS Date), 8, NULL, N'retiro', 64487, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (21, CAST(N'2022-09-26' AS Date), 20, NULL, N'retiro', 10181, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (22, CAST(N'2023-01-13' AS Date), 8, 53, N'transferencia', 70617, N'In blandit ultrices enim.', N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (23, CAST(N'2022-08-14' AS Date), 20, 78, N'transferencia', 61213, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (24, CAST(N'2022-08-06' AS Date), 16, 53, N'transferencia', 53376, NULL, N'exitosa')
INSERT [dbo].[transacciones] ([id_transaccion], [fecha_hora], [cuenta_origen], [cuenta_destino], [tipo_transaccion], [monto], [descripcion], [estado]) VALUES (25, CAST(N'2022-11-24' AS Date), 9, NULL, N'retiro', 18338, NULL, N'exitosa')
GO
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (1, 68519637, N'Ardis', N'Fortescue', N'afortescue0@photobucket.com', CAST(N'1967-06-29' AS Date), N'mU5{}T4g', N'+62 105 981 0278', N'8 Buena Vista Way', 14506615719, N'Duis bibendum. Morbi non quam nec dui luctus rutrum.', CAST(N'2017-02-27' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (2, 66455970, N'Elnore', N'Wharf', N'ewharf1@free.fr', CAST(N'1961-04-09' AS Date), N'hV3&tbx9bWgl2', N'+60 287 332 3472', N'63548 Dunning Crossing', 19745988391, N'Maecenas rhoncus aliquam lacus.', CAST(N'2006-11-26' AS Date), CAST(N'2023-03-13' AS Date))
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (3, 85631119, N'Byrle', N'Mallall', N'bmallall2@auda.org.au', CAST(N'1979-01-02' AS Date), N'qX3_uWi075kO`L8l', N'+86 810 486 6522', N'96067 Duke Pass', 11920647487, N'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', CAST(N'2020-04-07' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (4, 29043814, N'Beatrisa', N'Menco', N'bmenco3@cyberchimps.com', CAST(N'1967-01-09' AS Date), N'vO1/=QEbkpdgW/4', N'+86 884 940 9732', N'34895 Thompson Junction', 13017032134, N'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', CAST(N'2004-11-20' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (5, 34236318, N'Joshuah', N'Culross', N'jculross4@yellowbook.com', CAST(N'1980-02-10' AS Date), N'aM9)|KB\"(Jb#z5', N'+595 288 814 5771', N'412 Haas Trail', 16205660239, N'Maecenas pulvinar lobortis est.', CAST(N'2021-04-30' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (6, 23189785, N'Ann-marie', N'Rizzello', N'arizzello5@dailymail.co.uk', CAST(N'1983-05-18' AS Date), N'kP0)"_X*w.EJDYe', N'+7 628 467 8104', N'37001 Westend Parkway', 13659037364, N'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', CAST(N'2020-09-05' AS Date), CAST(N'2022-10-18' AS Date))
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (7, 47487958, N'Margette', N'Birkhead', N'mbirkhead6@wisc.edu', CAST(N'1993-10-29' AS Date), N'zX8\CH<!z\_r2.}*', N'+62 869 221 5990', N'54324 Anhalt Street', 19686984262, N'In hac habitasse platea dictumst.', CAST(N'2011-09-11' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (8, 91052336, N'Robinette', N'Gillbanks', N'rgillbanks7@dedecms.com', CAST(N'1961-10-19' AS Date), N'aJ9@g7<i"p2vW_29', N'+63 104 455 6828', N'4 Katie Way', 12385312074, N'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', CAST(N'2012-09-13' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (9, 51744403, N'Ned', N'Lux', N'nlux8@bluehost.com', CAST(N'1997-08-29' AS Date), N'oI7`"|O2', N'+51 581 875 6768', N'95 Starling Drive', 12417436750, N'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', CAST(N'2006-09-19' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (10, 24687703, N'Shelli', N'Fairclough', N'sfairclough9@cnn.com', CAST(N'1989-10-09' AS Date), N'xV1{hM)Tre', N'+297 733 999 4310', N'03259 Bluejay Avenue', 12233060799, N'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', CAST(N'2000-12-08' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (11, 82972633, N'Alexandro', N'Lewzey', N'alewzeya@weibo.com', CAST(N'1996-01-19' AS Date), N'pD7>idSY', N'+62 404 188 0365', N'646 Dottie Road', 12936760142, N'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', CAST(N'2002-03-26' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (12, 22286780, N'Noemi', N'Newlin', N'nnewlinb@un.org', CAST(N'1962-10-30' AS Date), N'fY1>ro4%d,sXvI3', N'+63 964 518 4524', N'72506 Southridge Parkway', 11129986417, N'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', CAST(N'2010-09-17' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (13, 39972134, N'Serena', N'Neaverson', N'sneaversonc@booking.com', CAST(N'1984-06-21' AS Date), N'cV8$@PY@APG!B', N'+86 642 943 8195', N'7 Morning Street', 11161193622, N'Integer ac leo. Pellentesque ultrices mattis odio.', CAST(N'2015-04-22' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (14, 86315013, N'Matilda', N'Duffree', N'mduffreed@4shared.com', CAST(N'1994-05-27' AS Date), N'bJ4\p{eT|fR`{', N'+62 383 515 5053', N'0 Texas Street', 15807529059, N'Duis consequat dui nec nisi volutpat eleifend.', CAST(N'2022-07-03' AS Date), CAST(N'2023-06-21' AS Date))
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (15, 86574976, N'Ada', N'Walkinshaw', N'awalkinshawe@last.fm', CAST(N'1985-10-26' AS Date), N'gR7''#E.8$r{1', N'+84 377 849 4932', N'3935 Ohio Place', 11934335251, N'Donec posuere metus vitae ipsum.', CAST(N'2012-11-10' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (16, 61627156, N'Elizabet', N'Dawbury', N'edawburyf@cafepress.com', CAST(N'1981-12-10' AS Date), N'lI7=`b''hNuK', N'+55 444 723 2045', N'34 Kingsford Place', 12474068127, N'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', CAST(N'2006-08-25' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (17, 56314875, N'Jakob', N'Cheesman', N'jcheesmang@narod.ru', CAST(N'1976-01-23' AS Date), N'cQ4$tnZQG*3*7.J', N'+599 224 774 2853', N'1 Forest Run Junction', 13743570919, N'Integer ac neque. Duis bibendum.', CAST(N'2017-10-19' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (18, 44795768, N'Arda', N'Ziehms', N'aziehmsh@de.vu', CAST(N'1999-06-13' AS Date), N'wW8$LjW9(@#', N'+7 765 998 7429', N'2 Merry Place', 11633211923, N'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', CAST(N'2002-04-25' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (19, 66599601, N'Norris', N'Heineken', N'nheinekeni@tinypic.com', CAST(N'1978-04-10' AS Date), N'kI6}\w2wdm_A', N'+86 331 245 2717', N'032 Northport Alley', 19408482997, N'Morbi porttitor lorem id ligula.', CAST(N'2002-09-13' AS Date), NULL)
INSERT [dbo].[Usuarios] ([ID], [DNI], [nombre], [apellido], [email], [fecha_nacimiento], [clave], [telefono], [direccion], [nro_seguro_social], [preguntas_seguridad], [fecha_alta], [fecha_baja]) VALUES (20, 86304640, N'Sheeree', N'Isakovitch', N'sisakovitchj@aol.com', CAST(N'1971-06-21' AS Date), N'aL2.q3JD~', N'+54 171 299 8673', N'85328 South Pass', 11714086080, N'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', CAST(N'2019-07-22' AS Date), CAST(N'2022-11-23' AS Date))
GO
USE [master]
GO
ALTER DATABASE [banco provincia banca pyme] SET  READ_WRITE 
GO
