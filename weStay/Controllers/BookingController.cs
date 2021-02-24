using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Routing;
using weStay.Interface;
using weStay.Models;
using weStay.ViewModels;

namespace weStay.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookingController : ControllerBase
    {
        private readonly IBookingService _bookingService;
        public BookingController(IBookingService bookingService)
        {
            _bookingService = bookingService;
        }

        [HttpPost]
        [Route("BookRoom")]
        public JsonResult BookRoom(BookingInfoViewModel bookingInfo)
        {
            string result = string.Empty;
            try
            {
                var a = DateTime.Now;
                var generatedBookingId = Guid.NewGuid();
                var toInsert = new BookingInfo
                {
                    Id = generatedBookingId,
                    EmailAddress = bookingInfo.EmailAddress,
                    PeopleStaying = bookingInfo.PeopleStaying,
                    RoomBookDate = new RoomBookDate
                    {
                        BookingInfoId = generatedBookingId,
                        CreatedDate = DateTime.Now,
                        DateFrom = DateTime.Parse(bookingInfo.DateFrom),
                        DateTo = DateTime.Parse(bookingInfo.DateFrom).AddDays(1),
                        RoomId = bookingInfo.RoomId
                    }
                };

                _bookingService.AddBooking(toInsert);
                result = "Successfully proccesed your booking. Thankyou very much!";
            }
            catch (Exception ex)
            {

                result = "Cannot process your booking as of the moment. Please try again later.";
            }
 
            return new JsonResult(result);
        }
    }
}