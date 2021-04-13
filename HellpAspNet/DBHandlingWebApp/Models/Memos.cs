using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DBHandlingWebApp.Models
{
    public class Memos
    {
        public int Num { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Title { get; set; }
        public DateTime PostDate { get; set; }
        public string PostIP { get; set; }
    }
}