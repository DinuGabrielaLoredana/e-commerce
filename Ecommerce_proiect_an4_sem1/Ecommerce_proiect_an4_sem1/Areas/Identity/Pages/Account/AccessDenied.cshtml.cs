using Microsoft.AspNetCore.Mvc.RazorPages;
using System;

namespace Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account
{
    public class AccessDeniedModel : PageModel
    {
        public void OnGet()
        {
            throw new NotSupportedException();
        }
    }
}

