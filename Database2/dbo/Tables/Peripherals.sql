CREATE TABLE [dbo].[Peripherals] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Vendor]      NVARCHAR (MAX) NOT NULL,
    [DateCreated] DATETIME2 (7)  NOT NULL,
    [Status]      INT            NOT NULL,
    [GatewayId]   INT            NOT NULL,
    CONSTRAINT [PK_Peripherals] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Peripherals_Gateways_GatewayId] FOREIGN KEY ([GatewayId]) REFERENCES [dbo].[Gateways] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Peripherals_GatewayId]
    ON [dbo].[Peripherals]([GatewayId] ASC);

