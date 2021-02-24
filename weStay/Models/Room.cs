using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.Models
{
    public class Room
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Column(TypeName ="varchar(50)")]
        public string Title { get; set; }
        [Required]
        [Column(TypeName = "varchar(500)")]
        public string Description { get; set; }
        [Required]
        [Column(TypeName = "varchar(100)")]
        public string Address { get; set; }
        [Required]
        public int RoomCapacity { get; set; }
        [Required]
        public decimal Price { get; set; }
        public virtual List<Photo> Photos { get; set; }
        public virtual List<RoomBookDate> RoomBookDates { get; set; }

    }
}
