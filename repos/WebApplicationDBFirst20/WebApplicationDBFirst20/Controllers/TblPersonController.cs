using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplicationDBFirst20.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TblPersonController : ControllerBase
    {
        private readonly ConsoleApp11DataContext _context; 
        public TblPersonController(ConsoleApp11DataContext context) 
        {
            this._context = context;    
        }

        [HttpGet]
        public List<TblPerson> GetAll() 
        {
            return _context.TblPerson.ToList();
        }
    }
}
