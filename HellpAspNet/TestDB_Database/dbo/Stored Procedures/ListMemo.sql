--[b] 메모 출력용 저장 프로시저
Create Proc dbo.ListMemo
As
	Select Num, Name, Email, Title, PostDate, PostIP
	From Memos Order By Num Desc
