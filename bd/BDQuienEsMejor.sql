USE [master]
GO
/****** Object:  Database [BDQuienEsMejor]    Script Date: 13/09/2015 08:56:52 p.m. ******/
CREATE DATABASE [BDQuienEsMejor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDQuienEsMejor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012R2\MSSQL\DATA\BDQuienEsMejor.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDQuienEsMejor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012R2\MSSQL\DATA\BDQuienEsMejor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDQuienEsMejor] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDQuienEsMejor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDQuienEsMejor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BDQuienEsMejor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDQuienEsMejor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDQuienEsMejor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDQuienEsMejor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDQuienEsMejor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET RECOVERY FULL 
GO
ALTER DATABASE [BDQuienEsMejor] SET  MULTI_USER 
GO
ALTER DATABASE [BDQuienEsMejor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDQuienEsMejor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDQuienEsMejor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDQuienEsMejor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDQuienEsMejor', N'ON'
GO
USE [BDQuienEsMejor]
GO
/****** Object:  Table [dbo].[Contendor]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contendor](
	[IdTorneo] [bigint] NOT NULL,
	[IdContendor] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[RutaImagen] [nvarchar](max) NULL,
	[AgrupadorInicial] [smallint] NULL,
 CONSTRAINT [PK_Contendor_1] PRIMARY KEY CLUSTERED 
(
	[IdTorneo] ASC,
	[IdContendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fase]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fase](
	[IdFase] [bigint] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Fase] PRIMARY KEY CLUSTERED 
(
	[IdFase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Participante]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participante](
	[IdParticipante] [nvarchar](100) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[ApellidoPaterno] [nvarchar](25) NULL,
	[ApellidoMaterno] [nvarchar](25) NULL,
 CONSTRAINT [PK_Participante] PRIMARY KEY CLUSTERED 
(
	[IdParticipante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ParticipanteTorneo]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipanteTorneo](
	[IdParticipante] [nvarchar](100) NOT NULL,
	[IdTorneo] [bigint] NOT NULL,
	[IdContendor] [bigint] NOT NULL,
	[IdFase] [bigint] NOT NULL,
 CONSTRAINT [PK_ParticipanteXTorneo] PRIMARY KEY CLUSTERED 
(
	[IdParticipante] ASC,
	[IdTorneo] ASC,
	[IdContendor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Torneo](
	[IdTorneo] [bigint] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[CantParticipantes] [int] NULL,
	[CantContendores] [int] NULL,
	[CantFases] [int] NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[Enlace] [nvarchar](300) NULL,
	[Estado] [int] NULL,
	[IdUsuario] [bigint] NOT NULL,
 CONSTRAINT [PK_Torneo] PRIMARY KEY CLUSTERED 
(
	[IdTorneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [bigint] NOT NULL,
	[Correo] [nvarchar](60) NULL,
	[Nombre] [nvarchar](50) NULL,
	[ApellidoPaterno] [nvarchar](25) NULL,
	[ApellidoMaterno] [nchar](10) NULL,
	[Contraseña] [nvarchar](15) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Votacion]    Script Date: 13/09/2015 08:56:52 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votacion](
	[IdParticipante] [nvarchar](100) NOT NULL,
	[IdTorneo] [bigint] NOT NULL,
	[IdFase] [bigint] NOT NULL,
	[Secuencia] [int] NOT NULL,
	[IdContendor1] [bigint] NOT NULL,
	[IdContendor2] [bigint] NOT NULL,
	[IdContendorGanador] [bigint] NOT NULL,
 CONSTRAINT [PK_VotacionXFaseXTorneo] PRIMARY KEY CLUSTERED 
(
	[IdParticipante] ASC,
	[IdTorneo] ASC,
	[IdFase] ASC,
	[Secuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Contendor]  WITH CHECK ADD  CONSTRAINT [FK_Contendor_Torneo] FOREIGN KEY([IdTorneo])
REFERENCES [dbo].[Torneo] ([IdTorneo])
GO
ALTER TABLE [dbo].[Contendor] CHECK CONSTRAINT [FK_Contendor_Torneo]
GO
ALTER TABLE [dbo].[ParticipanteTorneo]  WITH CHECK ADD  CONSTRAINT [FK_ParticipanteTorneo_Contendor] FOREIGN KEY([IdTorneo], [IdContendor])
REFERENCES [dbo].[Contendor] ([IdTorneo], [IdContendor])
GO
ALTER TABLE [dbo].[ParticipanteTorneo] CHECK CONSTRAINT [FK_ParticipanteTorneo_Contendor]
GO
ALTER TABLE [dbo].[ParticipanteTorneo]  WITH CHECK ADD  CONSTRAINT [FK_ParticipanteTorneo_Participante] FOREIGN KEY([IdParticipante])
REFERENCES [dbo].[Participante] ([IdParticipante])
GO
ALTER TABLE [dbo].[ParticipanteTorneo] CHECK CONSTRAINT [FK_ParticipanteTorneo_Participante]
GO
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_Usuario]
GO
ALTER TABLE [dbo].[Votacion]  WITH CHECK ADD  CONSTRAINT [FK_Votacion_Contendor] FOREIGN KEY([IdTorneo], [IdContendor1])
REFERENCES [dbo].[Contendor] ([IdTorneo], [IdContendor])
GO
ALTER TABLE [dbo].[Votacion] CHECK CONSTRAINT [FK_Votacion_Contendor]
GO
ALTER TABLE [dbo].[Votacion]  WITH CHECK ADD  CONSTRAINT [FK_Votacion_Contendor1] FOREIGN KEY([IdTorneo], [IdContendor2])
REFERENCES [dbo].[Contendor] ([IdTorneo], [IdContendor])
GO
ALTER TABLE [dbo].[Votacion] CHECK CONSTRAINT [FK_Votacion_Contendor1]
GO
ALTER TABLE [dbo].[Votacion]  WITH CHECK ADD  CONSTRAINT [FK_Votacion_Contendor2] FOREIGN KEY([IdTorneo], [IdContendorGanador])
REFERENCES [dbo].[Contendor] ([IdTorneo], [IdContendor])
GO
ALTER TABLE [dbo].[Votacion] CHECK CONSTRAINT [FK_Votacion_Contendor2]
GO
ALTER TABLE [dbo].[Votacion]  WITH CHECK ADD  CONSTRAINT [FK_Votacion_Fase] FOREIGN KEY([IdFase])
REFERENCES [dbo].[Fase] ([IdFase])
GO
ALTER TABLE [dbo].[Votacion] CHECK CONSTRAINT [FK_Votacion_Fase]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo del participante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Participante', @level2type=N'COLUMN',@level2name=N'IdParticipante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo del participante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ParticipanteTorneo', @level2type=N'COLUMN',@level2name=N'IdParticipante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo del participante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Votacion', @level2type=N'COLUMN',@level2name=N'IdParticipante'
GO
USE [master]
GO
ALTER DATABASE [BDQuienEsMejor] SET  READ_WRITE 
GO
