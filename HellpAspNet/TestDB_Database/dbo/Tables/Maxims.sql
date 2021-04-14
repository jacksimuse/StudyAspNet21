CREATE TABLE [dbo].[Maxims] (
    [id]      INT           IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (25) NOT NULL,
    [Content] NVARCHAR (50) NOT NULL,
    [RegDate] DATETIME      NULL,
    CONSTRAINT [PK_Maxims] PRIMARY KEY CLUSTERED ([id] ASC)
);

