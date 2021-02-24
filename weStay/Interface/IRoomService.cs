using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using weStay.Models;

namespace weStay.Interface
{
    public interface IRoomService
    {
        List<Room> getAllRooms();
    }
}
