CREATE TABLE [dbo].[Rooms] (
    [RoomId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED ([RoomId] ASC)
);

