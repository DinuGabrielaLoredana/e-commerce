using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class Role
    {
        public Role()
        {
            User = new HashSet<User>();
        }

        public int RoleId { get; set; }
        public string Role1 { get; set; }

        public virtual ICollection<User> User { get; set; }
    }
}
