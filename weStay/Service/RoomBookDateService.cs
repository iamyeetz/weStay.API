using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Interface;
using weStay.Models;

namespace weStay.Service
{
    public class RoomBookDateService : IRoomBookDateService
    {
        private readonly WeStayDbContext _db;
        public RoomBookDateService(WeStayDbContext db)
        {
            _db = db;
        }
        public List<RoomBookDate> getRoomBookDatesById(int id)
        {
           var toReturn = _db.RoomBookDate.Where(x => x.RoomId == id).ToList();
            return toReturn;        
        }
    }
}
