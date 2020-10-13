using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class ProductCategory
    {
        public string ProductId { get; set; }
        public string CategoryId { get; set; }
        public string IdProductCategory { get; set; }

        public virtual Category Category { get; set; }
        public virtual Product Product { get; set; }
    }
}
