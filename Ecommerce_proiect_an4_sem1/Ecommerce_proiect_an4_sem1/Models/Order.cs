using System.Collections.Generic;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class Order
    {
        public Order()
        {
            ProductOrder = new HashSet<ProductOrder>();
        }

        public string OrderId { get; set; }
        public int HasBeenPlaced { get; set; }
        public string ClientId { get; set; }
        public string HasBeenConfirmed { get; set; }
        public int Quantity { get; set; }

        public virtual User Client { get; set; }
        public virtual ICollection<ProductOrder> ProductOrder { get; set; }
    }
}
