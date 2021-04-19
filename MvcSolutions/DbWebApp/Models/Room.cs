using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DbWebApp.Models
{
    public class Room
    {
        [Key]
        public int RoomId { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Speaker> Speakers { get; set; }
    }

    public class Speaker
    {
        [Key]
        public int SpeakerId { get; set; }
        public string Name { get; set; }
        public int RoomId { get; set; }
        public virtual Room Room { get; set; }
    }
}
