using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using weStay.Interface;
using weStay.Models;

namespace weStay.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RoomController : ControllerBase
    {
        private readonly IRoomService _roomService;
        private readonly IRoomBookDateService _roomBookDateService;
        public RoomController(IRoomService roomService, IRoomBookDateService roomBookDateService)
        {
            _roomBookDateService = roomBookDateService;
            _roomService = roomService;
        }

        [HttpGet]
        [Route("GetAllRooms")]
        public JsonResult GetAllRooms()
        {
            var schema = HttpContext.Request.Scheme + @":\\";
            var host = HttpContext.Request.Host.Value;
            var a = Path.Combine(HttpContext.Request.Host.Value, "Images");
            var toReturn = _roomService.getAllRooms();
            toReturn.ForEach(x =>
            {
                x.Photos.ForEach(a =>
                {
                    a.FileName = Path.Combine(schema, host, "Images", a.FileName);
                    
                });
                x.RoomBookDates = _roomBookDateService.getRoomBookDatesById(x.Id);
            });
            return new  JsonResult(toReturn);

        }
    }
}