using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class User
    {
        public User()
        {
            Order = new HashSet<Order>();
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string CardNumber { get; set; }
        public int RoleId { get; set; }

        public virtual Role Role { get; set; }
        public virtual ICollection<Order> Order { get; set; }
    }
}
