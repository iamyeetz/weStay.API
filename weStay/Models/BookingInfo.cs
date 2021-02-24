using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.Models
{
    public class BookingInfo
    {
        public Guid Id { get; set; }

        [Required]
        public string EmailAddress { get; set; }
        [Required]
        public int PeopleStaying { get; set; }

        public virtual RoomBookDate RoomBookDate { get; set; }

    }
}
