using DotNetNote.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetNote.Board
{
    public partial class BoardList : System.Web.UI.Page
    {
        private DbRepository _repo;
        // 검색모드이면 true, 보통 false
        public bool SearchMode { get; set; } = false;
        public string SearchField { get; set; }
        public string SearchQuery { get; set; }

        public int RecordCount = 0; // 총 레코드 수
        public int PageIndex = 0; // 페이징 할때 값, 현재 보여줄 페이지 번호
        public BoardList()
        {
            _repo = new DbRepository(); // SqlConnection 생성
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // 검색모드 결정 true 검색, false 일반모드
            SearchMode = (!string.IsNullOrEmpty(Request["SearchField"]) &&
                            !string.IsNullOrEmpty(Request["SearchQuery"]));

            if (SearchMode)
            {
                SearchField = Request["SearchField"];
                SearchQuery = Request["SearchQuery"];
            }

            if (!SearchMode)
            {
                RecordCount = _repo.GetCountAll();
            }
            else
            {
                RecordCount = _repo.GetCountBySearch(SearchField, SearchQuery);
            }
            LblTotalRecord.Text = $"Total Record : {RecordCount}";

            if (Request["Page"] != null)
            {
                PageIndex = Convert.ToInt32(Request["Page"]) - 1;
            }
            else
            {
                PageIndex = 0; // 1페이지
            }

            // TODO : 쿠키 사용해서 리스트 페이지번호 유지

            // 페이징 처리
            PagingControl.PageIndex = PageIndex;
            PagingControl.RecordCount = RecordCount;

            if (!Page.IsPostBack)
            {
                DisplayData();
            }
        }

        private void DisplayData()
        {
            if (!SearchMode)
            {
                GrvNotes.DataSource = _repo.GetAll(PageIndex); // 페이지는 0부터 시작
            }
            else
            {
                GrvNotes.DataSource = _repo.GetSeachAll(PageIndex, SearchField, SearchQuery); // 검색 결과 리스트
            }
            GrvNotes.DataBind(); // 데이터바인딩 끝
        }
    }
}