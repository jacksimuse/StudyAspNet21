CREATE TABLE [dbo].[Account] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (20) NOT NULL,
    [Email]    VARCHAR (125) NOT NULL,
    [Password] VARCHAR (200) NOT NULL,
    [Grade]    CHAR (1)      NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([Id] ASC)
);

