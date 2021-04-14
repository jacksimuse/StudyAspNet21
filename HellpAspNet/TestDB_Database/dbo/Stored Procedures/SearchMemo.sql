Create Proc dbo.SearchMemo
(
	@SearchField NVarChar(10),
	@SearchQuery NVarChar(50)
)
-- With Encryption -- 현재 SP문 암호화
As
	Declare @strSql NVarChar(250) -- 변수 선언
	Set @strSql = 
		'
		Select Num, Name, Email, Title, PostDate, PostIP 
		From Memos
		Where ' + @SearchField + ' Like 
			N''%' + @SearchQuery + '%''
		Order By Num Desc
		'
	--Print @strSql
	Exec (@strSql) --완성된 SQL문 실행
