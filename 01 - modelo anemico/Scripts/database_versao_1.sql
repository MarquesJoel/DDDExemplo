USE [DDDTalk]
GO
/****** Object:  Table [dbo].[Alunos]    Script Date: 8/16/2018 8:19:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alunos](
	[Id] [varchar](36) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
 CONSTRAINT [PK_Alunos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscricoes]    Script Date: 8/16/2018 8:19:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscricoes](
	[Id] [varchar](36) NOT NULL,
	[AlunoId] [varchar](36) NOT NULL,
	[TurmaId] [varchar](36) NOT NULL,
	[IncritoEm] [datetime] NOT NULL,
 CONSTRAINT [PK_Inscricoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turmas]    Script Date: 8/16/2018 8:19:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turmas](
	[Id] [varchar](36) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[LimiteAlunos] [int] NOT NULL,
 CONSTRAINT [PK_Turmas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DDDTalk] SET  READ_WRITE 
GO
