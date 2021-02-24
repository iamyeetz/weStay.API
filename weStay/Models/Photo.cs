using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.Models
{
    public class Photo
    {
        [Key]
        public int Id { get; set; }
        public int RoomId { get; set; }
        public string FileName { get; set; }

    }
}
