using System;

using System.ComponentModel.DataAnnotations;

using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using System.IO;

namespace Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account
{
    [AllowAnonymous]
    public class RegisterModel : PageModel
    {
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly ILogger<RegisterModel> _logger;
        public RegisterModel(
            UserManager<IdentityUser> userManager,
            SignInManager<IdentityUser> signInManager,
            ILogger<RegisterModel> logger)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _logger = logger;
        }

        [BindProperty]
        public InputModel Input { get; set; }

        public string ReturnUrl { get; set; }

        public class InputModel
        {
            [Required]
            [EmailAddress]
            [Display(Name = "Email")]
            public string Email { get; set; }

            [Required]
            [StringLength(100, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 6)]
            [DataType(DataType.Password)]
            [Display(Name = "Password")]
            public string Password { get; set; }

            [DataType(DataType.Password)]
            [Display(Name = "Confirm password")]
            [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
            public string ConfirmPassword { get; set; }
        }

        public void OnGet(string returnUrl = null)
        {
            ReturnUrl = returnUrl;
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {
            returnUrl = returnUrl ?? Url.Content("~/");
            if (ModelState.IsValid)
            {
                var user = new IdentityUser { UserName = Input.Email, Email = Input.Email };
                var result = await _userManager.CreateAsync(user, Input.Password);
                if (result.Succeeded)
                {
                    _logger.LogInformation("User created a new account with password.");
                    await _signInManager.SignInAsync(user, isPersistent: false);
                    string mySqlStatement2 = @"Insert into [User] values('"+user.Id+"','"+Input.Email+"','-','-',2)";
                    var jsonString = System.IO.File.ReadAllText(@"database_settings.json");
                    var myJObject = JObject.Parse(jsonString);
                    var connectionString = @myJObject.SelectToken("DatabasePath").Value<string>();
                   SqlCommand command2 = new SqlCommand(mySqlStatement2);
            
                    using (SqlConnection cnn = new SqlConnection(connectionString))
                    {
                        command2.Connection = cnn;
                        cnn.Open();
                        command2.ExecuteNonQuery();
                        cnn.Close();
                    }

                    string mySqlStatement3 = @"Insert into [AspNetUserRoles] values('" + user.Id + "','2')";
                    SqlCommand command3 = new SqlCommand(mySqlStatement3);

                    using (SqlConnection cnn = new SqlConnection(connectionString))
                    {
                        command3.Connection = cnn;
                        cnn.Open();
                        command3.ExecuteNonQuery();
                        cnn.Close();
                    }


                    return LocalRedirect(returnUrl);
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
               
            }

            // If we got this far, something failed, redisplay form
            return Page();
        }
    }
}
