Create Proc dbo.ModifyMemo
(
	@Name NVarChar(25),
	@Email NVarChar(100),
	@Title NVarChar(150),
	@Num Int 
)
As
Begin Transaction
	Update Memos 
	Set 
		Name = @Name, 
		Email = @Email,
		Title = @Title
	Where Num = @Num
Commit Transaction
