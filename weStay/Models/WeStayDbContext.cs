using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace weStay.Models
{
    public class WeStayDbContext : DbContext
    {
        public DbSet<Photo> Photo { get; set; }
        public DbSet<BookingInfo> BookingInfo { get; set; }
        public DbSet<RoomBookDate> RoomBookDate { get; set; }
        public DbSet<Room> Room { get; set; }
  
        public WeStayDbContext(DbContextOptions options): base(options)
        {

        }



    }
}
