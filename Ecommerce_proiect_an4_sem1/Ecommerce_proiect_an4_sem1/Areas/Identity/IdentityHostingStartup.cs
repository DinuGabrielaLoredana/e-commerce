using Microsoft.AspNetCore.Hosting;

[assembly: HostingStartup(typeof(Ecommerce_proiect_an4_sem1.Areas.Identity.IdentityHostingStartup))]
namespace Ecommerce_proiect_an4_sem1.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
            });
        }
    }
}