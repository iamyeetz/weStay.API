using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.ViewModels
{
    public class BookingInfoViewModel
    {

        public int Id { get; set; }
        [Required]
        public string EmailAddress { get; set; }
        [Required]
        public int PeopleStaying { get; set; }
        public int RoomId { get; set; }
        public string CreatedDate { get; set; }
        public string DateFrom { get; set; }
        public string DateTo { get; set; }
    }
}
