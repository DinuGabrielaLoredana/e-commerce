using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class StockEntry
    {
        public string StockId { get; set; }
        public string ProductId { get; set; }
        public int? RemainingStock { get; set; }

        public virtual Product Product { get; set; }
    }
}
