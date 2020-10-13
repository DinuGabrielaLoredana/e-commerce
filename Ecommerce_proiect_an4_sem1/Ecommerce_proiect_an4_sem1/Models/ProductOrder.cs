using System;
using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class ProductOrder
    {
        public string OrderIdFk { get; set; }
        public string ProductIdFk { get; set; }
        public string IdProductOrder { get; set; }

        public virtual Order OrderIdFkNavigation { get; set; }
        public virtual Product ProductIdFkNavigation { get; set; }
    }
}
