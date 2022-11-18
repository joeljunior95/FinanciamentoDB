-- Criando as tabelas
CREATE TABLE [dbo].[Cliente](
       [id] [int] IDENTITY(1,1) NOT NULL,
       [nome] [nchar](100) NOT NULL,
       [cpf] [nchar](11) NOT NULL,
       [uf] [nchar](2) NOT NULL,
       [celular] [nchar](11) NOT NULL,
CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED
(
       [cpf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO

 
CREATE TABLE [dbo].[TipoFinanciamento](
       [id] [int] IDENTITY(1,1) NOT NULL,
       [descricao] [nchar](100) NOT NULL,
CONSTRAINT [PK_TipoFinanciamento] PRIMARY KEY CLUSTERED
(
       [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO

 
CREATE TABLE [dbo].[Financiamento](
       [id] [int] IDENTITY(1,1) NOT NULL,
       [cpf] [nchar](11) NOT NULL,
       [tipo] [int] NOT NULL,
       [vlTotal] [numeric](18, 2) NOT NULL,
       [dtUltVenc] [date] NOT NULL,
CONSTRAINT [PK_Financiamento] PRIMARY KEY CLUSTERED
(
       [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO

 
CREATE TABLE [dbo].[Parcela](
       [id] [int] IDENTITY(1,1) NOT NULL,
       [idFinanciamento] [int] NOT NULL,
       [NroParc] [int] NOT NULL,
       [VlParc] [numeric](18, 2) NOT NULL,
       [DtVenc] [date] NOT NULL,
       [DtPgo] [date],
CONSTRAINT [PK_Parcela] PRIMARY KEY CLUSTERED
(
       [id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO

 

-- Estabelecendo os relacionamentos
ALTER TABLE [dbo].[Financiamento] ADD CONSTRAINT FK_Financiamento_Cliente FOREIGN KEY(cpf) REFERENCES [dbo].[Cliente] (cpf);
ALTER TABLE [dbo].[Financiamento] ADD CONSTRAINT FK_Financiamento_Tipo FOREIGN KEY(tipo) REFERENCES [dbo].[TipoFinanciamento] (id);
ALTER TABLE [dbo].[Parcela] ADD CONSTRAINT FK_Parcela_Financiamento FOREIGN KEY(idFinanciamento) REFERENCES [dbo].[Financiamento] (id);