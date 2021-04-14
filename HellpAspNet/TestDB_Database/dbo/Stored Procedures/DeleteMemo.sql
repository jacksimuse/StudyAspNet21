Create Proc dbo.DeleteMemo
(
	@Num Int
)
As
	Delete Memos
	Where Num = @Num
