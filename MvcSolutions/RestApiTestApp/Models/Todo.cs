using System;
using System.ComponentModel.DataAnnotations;

namespace RestApiTestApp.Models
{
    public class Todo
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "제목은 필수입니다")]
        public string Title { get; set; }
        public bool IsDone { get; set; }
        public DateTime CreationDate { get; set; }
    }
}
