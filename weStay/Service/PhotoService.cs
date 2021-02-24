using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Interface;
using weStay.Models;

namespace weStay.Service
{
    public class PhotoService : IPhotoService
    {
        private readonly WeStayDbContext _db;
        public PhotoService(WeStayDbContext db)
        {
            _db = db;
        }
        public List<Photo> getPhotosById(int id)
        {
            var toReturn = _db.Photo.Where(x => x.RoomId == id).ToList();
            return toReturn;
        }
    }
}
