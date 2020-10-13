using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class Product
    {
        public Product()
        {
            ProductCategory = new HashSet<ProductCategory>();
            ProductOrder = new HashSet<ProductOrder>();
            StockEntry = new HashSet<StockEntry>();
        }

        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public string ProductPicture { get; set; }
        public decimal Price { get; set; }
        public decimal Sales  { get; set; }
        public decimal Nprice { get; set; }
        public string SpecificationFile { get; set; }


        public virtual ICollection<ProductCategory> ProductCategory { get; set; }
        public virtual ICollection<ProductOrder> ProductOrder { get; set; }
        public virtual ICollection<StockEntry> StockEntry { get; set; }
    }
}
