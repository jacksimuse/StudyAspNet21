Create Table dbo.Users
(
	[UID] Int Identity(1, 1) Primary Key Not Null,
	[UserID] NVarChar(25) Not Null,
	[Password] NVarChar(20) Not Null
    
)