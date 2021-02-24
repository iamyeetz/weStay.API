using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Interface;
using weStay.Models;

namespace weStay.Service
{
    public class RoomService : IRoomService
    {
        private readonly WeStayDbContext _db;
        private readonly IPhotoService _photoService;
        public RoomService(WeStayDbContext db, IPhotoService photoService)
        {
            _photoService = photoService;
            _db = db;
        }
        public List<Room> getAllRooms()
        {
            var toReturn = _db.Room.ToList();

            toReturn.ForEach(x =>
            {
                x.Photos = _photoService.getPhotosById(x.Id).ToList();
                x.RoomBookDates = _db.RoomBookDate.Where(b => b.RoomId == x.Id).ToList();

            });

            return toReturn;
        }
    }
}
