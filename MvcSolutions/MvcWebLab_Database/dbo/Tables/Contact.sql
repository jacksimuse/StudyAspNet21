CREATE TABLE [dbo].[Contact] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50)  NOT NULL,
    [Email]    VARCHAR (125)  NOT NULL,
    [Contents] NVARCHAR (MAX) NOT NULL,
    [RegDate]  DATETIME       CONSTRAINT [DF_Contacts_RegDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED ([Id] ASC)
);
