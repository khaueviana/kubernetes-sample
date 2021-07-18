namespace TestApp.Api.Controllers
{
    using Microsoft.AspNetCore.Mvc;

    [ApiController]
    [Route("")]
    public class HomeController : Controller
    {
        [HttpGet]
        public string Get()
        {
            return "test";
        }
    }
}
