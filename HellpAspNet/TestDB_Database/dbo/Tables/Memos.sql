CREATE TABLE [dbo].[Memos] (
    [Num]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (25)  NOT NULL,
    [Email]    NVARCHAR (100) NULL,
    [Title]    NVARCHAR (150) NOT NULL,
    [PostDate] DATETIME       DEFAULT (getdate()) NULL,
    [PostIP]   NVARCHAR (15)  NULL,
    PRIMARY KEY CLUSTERED ([Num] ASC)
);

