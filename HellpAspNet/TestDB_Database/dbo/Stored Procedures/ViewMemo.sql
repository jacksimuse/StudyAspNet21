Create Proc dbo.ViewMemo
(
	@Num Int
)
As
	Select Num, Name, Email, Title, PostDate, PostIP 
	From Memos 
	Where Num = @Num
