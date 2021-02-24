using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Interface;
using weStay.Models;

namespace weStay.Service
{
    public class BookingService : IBookingService
    {
        private readonly WeStayDbContext _db;
        public BookingService(WeStayDbContext db)
        {
            _db = db;
        }
        public void AddBooking(BookingInfo bookingInfo)
        {
            _db.Add(bookingInfo);
            _db.SaveChanges();
        }
    }
}
