using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Models;

namespace weStay.Interface
{
    public interface IBookingService
    {
        void AddBooking(BookingInfo bookingInfo);
    }
}
