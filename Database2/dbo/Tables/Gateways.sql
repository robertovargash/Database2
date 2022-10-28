CREATE TABLE [dbo].[Gateways] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [SerialNumber] NVARCHAR (MAX) NOT NULL,
    [Name]         NVARCHAR (MAX) NOT NULL,
    [IPv4Address]  NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Gateways] PRIMARY KEY CLUSTERED ([Id] ASC)
);

