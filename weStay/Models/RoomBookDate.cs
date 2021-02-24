using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.Models
{
    public class RoomBookDate
    {
        public int Id { get; set; }
        public int RoomId { get; set; }
        public Guid BookingInfoId { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }

      
        
    }
}
