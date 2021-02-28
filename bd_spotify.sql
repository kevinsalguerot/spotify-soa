USE [spotify]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Creador] [varchar](100) NULL,
	[Imagen] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePlayList]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePlayList](
	[Id] [int] NOT NULL,
	[IdMusica] [int] NOT NULL,
	[IdPlayList] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturacion]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSuscripcion] [int] NOT NULL,
	[Numero] [nchar](10) NULL,
	[Importe] [decimal](18, 0) NULL,
	[TipoPago] [nchar](10) NULL,
	[NroOperacion] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musica]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](30) NULL,
	[Artista] [varchar](30) NULL,
	[Año] [int] NULL,
	[Archivo] [varchar](max) NULL,
	[IdAlbum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Imagen] [varchar](max) NULL,
	[CantSeguidores] [int] NULL,
	[IdUsuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planes]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](100) NULL,
	[Detalle] [varchar](max) NULL,
	[Precio] [decimal](18, 0) NULL,
	[Moneda] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
	[IdUsuario] [int] NOT NULL,
	[Acceso] [varchar](1) NULL,
	[imagen] [varchar](122) NULL,
 CONSTRAINT [PK__PlayList__3214EC072D724E65] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suscripcion]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suscripcion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPlan] [int] NOT NULL,
	[Fecha_Ini] [datetime] NULL,
	[Fecha_Fin] [datetime] NULL,
	[Tarjeta_codigo] [nchar](5) NULL,
	[Tarjeta_numero] [nchar](20) NULL,
	[Tarjeta_fech_ecp] [datetime] NULL,
	[Estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/02/2021 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nchar](30) NULL,
	[contrasena] [nchar](20) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[nombre_perfil] [nchar](50) NULL,
	[sexo] [nchar](1) NULL,
	[IdSuscripcion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([Id], [Nombre], [Creador], [Imagen]) VALUES (1, N'Cloud Nine', N'Kygo', N'')
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Musica] ON 

INSERT [dbo].[Musica] ([Id], [Titulo], [Artista], [Año], [Archivo], [IdAlbum]) VALUES (1, N'Firestone', N'KYGO, Conrad Sewell', 2018, N'https://open.spotify.com/embed/track/1I8tHoNBFTuoJAlh4hfVVE', 1)
INSERT [dbo].[Musica] ([Id], [Titulo], [Artista], [Año], [Archivo], [IdAlbum]) VALUES (2, N'Serious', N'Matt Corby', 2019, N'https://open.spotify.com/track/18YIDJGWXocUPFbAzTaq8g?si=vYMaW4JSRTGP7HdI04v2Tg', 1)
INSERT [dbo].[Musica] ([Id], [Titulo], [Artista], [Año], [Archivo], [IdAlbum]) VALUES (3, N'Fragile', N'Labrinth', 2015, N'https://open.spotify.com/track/6PyxrogMU9imKqVtKx6840?si=PuRj_F0tRR64pNbE7zJ6_Q', 1)
SET IDENTITY_INSERT [dbo].[Musica] OFF
GO
SET IDENTITY_INSERT [dbo].[Planes] ON 

INSERT [dbo].[Planes] ([Id], [Nombre], [Detalle], [Precio], [Moneda]) VALUES (1, N'Individual                                                                                          ', N'Escucha música sin anuncios, Reproduce tus canciones en cualquier lugar, incluso sin conexión', CAST(19 AS Decimal(18, 0)), N'PEN       ')
INSERT [dbo].[Planes] ([Id], [Nombre], [Detalle], [Precio], [Moneda]) VALUES (2, N'Duo                                                                                                 ', N'2 cuentas Premium para parejas que viven juntas, Duo Mix: una playlist para dos, actualizada periódicamente con la música que más les gusta', CAST(25 AS Decimal(18, 0)), N'PEN       ')
INSERT [dbo].[Planes] ([Id], [Nombre], [Detalle], [Precio], [Moneda]) VALUES (3, N'Familiar                                                                                            ', N'6 cuentas Premium para familias que viven juntas, Bloquea la música explícita', CAST(30 AS Decimal(18, 0)), N'PEN       ')
SET IDENTITY_INSERT [dbo].[Planes] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayList] ON 

INSERT [dbo].[PlayList] ([Id], [Nombre], [Descripcion], [IdUsuario], [Acceso], [imagen]) VALUES (18, N'Baladas             ', N'Baladas de Oro                                                                                      ', 2, N's', N'/imagen/balada.jpg')
INSERT [dbo].[PlayList] ([Id], [Nombre], [Descripcion], [IdUsuario], [Acceso], [imagen]) VALUES (19, N'Rock Español', N'Rock de los 90                                                                                      ', 2, N'p', N'/imagen/rock.jpg')
INSERT [dbo].[PlayList] ([Id], [Nombre], [Descripcion], [IdUsuario], [Acceso], [imagen]) VALUES (20, N'Rock Ingles         ', N'Rock de los 90                                                                                      ', 2, N'p', N'/imagen/rock.jpg')
INSERT [dbo].[PlayList] ([Id], [Nombre], [Descripcion], [IdUsuario], [Acceso], [imagen]) VALUES (21, N'Rock Suave          ', N'Rock Clasico                                                                                        ', 2, N'p', N'/imagen/rock.jpg')
SET IDENTITY_INSERT [dbo].[PlayList] OFF
GO
SET IDENTITY_INSERT [dbo].[Suscripcion] ON 

INSERT [dbo].[Suscripcion] ([Id], [IdPlan], [Fecha_Ini], [Fecha_Fin], [Tarjeta_codigo], [Tarjeta_numero], [Tarjeta_fech_ecp], [Estado]) VALUES (1, 1, CAST(N'2021-02-27T00:00:00.000' AS DateTime), CAST(N'2021-03-27T00:00:00.000' AS DateTime), N'123  ', N'12312321            ', CAST(N'2021-12-12T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Suscripcion] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [email], [contrasena], [fecha_nacimiento], [nombre_perfil], [sexo], [IdSuscripcion]) VALUES (2, N'elromeok@gmail.com            ', N'1234123             ', CAST(N'1993-10-08T00:00:00.000' AS DateTime), N'Kevins                                            ', N'M', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[DetallePlayList]  WITH CHECK ADD  CONSTRAINT [FK_DetallePlayList_Musica] FOREIGN KEY([IdMusica])
REFERENCES [dbo].[Musica] ([Id])
GO
ALTER TABLE [dbo].[DetallePlayList] CHECK CONSTRAINT [FK_DetallePlayList_Musica]
GO
ALTER TABLE [dbo].[DetallePlayList]  WITH CHECK ADD  CONSTRAINT [FK_DetallePlayList_PlayList] FOREIGN KEY([IdPlayList])
REFERENCES [dbo].[PlayList] ([Id])
GO
ALTER TABLE [dbo].[DetallePlayList] CHECK CONSTRAINT [FK_DetallePlayList_PlayList]
GO
ALTER TABLE [dbo].[Facturacion]  WITH CHECK ADD  CONSTRAINT [FK_Facturacion_Suscripcion] FOREIGN KEY([IdSuscripcion])
REFERENCES [dbo].[Suscripcion] ([Id])
GO
ALTER TABLE [dbo].[Facturacion] CHECK CONSTRAINT [FK_Facturacion_Suscripcion]
GO
ALTER TABLE [dbo].[Musica]  WITH CHECK ADD  CONSTRAINT [FK_Musica_Album] FOREIGN KEY([IdAlbum])
REFERENCES [dbo].[Album] ([Id])
GO
ALTER TABLE [dbo].[Musica] CHECK CONSTRAINT [FK_Musica_Album]
GO
ALTER TABLE [dbo].[Perfil]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Perfil] CHECK CONSTRAINT [FK_Perfil_Usuario]
GO
ALTER TABLE [dbo].[PlayList]  WITH CHECK ADD  CONSTRAINT [FK_PlayList_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[PlayList] CHECK CONSTRAINT [FK_PlayList_Usuario]
GO
ALTER TABLE [dbo].[Suscripcion]  WITH CHECK ADD  CONSTRAINT [FK_Suscripcion_Planes] FOREIGN KEY([IdPlan])
REFERENCES [dbo].[Planes] ([Id])
GO
ALTER TABLE [dbo].[Suscripcion] CHECK CONSTRAINT [FK_Suscripcion_Planes]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Suscripcion] FOREIGN KEY([IdSuscripcion])
REFERENCES [dbo].[Suscripcion] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Suscripcion]
GO
