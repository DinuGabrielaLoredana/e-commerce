using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class Category
    {
        public Category()
        {
            ProductCategory = new HashSet<ProductCategory>();
        }

        public string CategoryId { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<ProductCategory> ProductCategory { get; set; }
    }
}
