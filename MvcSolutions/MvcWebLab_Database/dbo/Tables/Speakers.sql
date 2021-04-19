CREATE TABLE [dbo].[Speakers] (
    [SpeakerId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (MAX) NULL,
    [RoomId]    INT            NOT NULL,
    CONSTRAINT [PK_Speakers] PRIMARY KEY CLUSTERED ([SpeakerId] ASC),
    CONSTRAINT [FK_Speakers_Rooms_RoomId] FOREIGN KEY ([RoomId]) REFERENCES [dbo].[Rooms] ([RoomId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Speakers_RoomId]
    ON [dbo].[Speakers]([RoomId] ASC);

