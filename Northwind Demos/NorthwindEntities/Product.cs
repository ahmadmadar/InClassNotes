using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NorthwindEntities
{
    [Table("Products")] // Attribute
    public class Product
    {
        public int ProductID { get; set; }
        [Required] 
        [StringLength(40)]
        public string ProductName { get; set; }
        public int? SupplierID { get; set; }
        public int? CategoryID { get; set; }
        public string QuantityPerUnit { get; set; }
        public decimal UnitPrice { get; set; }
        public short? UnitsInStock { get; set; }
        public short? UnitsOnOrder { get; set; }
        public short? ReorderLevel { get; set; }
        public bool Discontinued { get; set; }

        [NotMapped] // tells EF to NOT associate this property with a specific column in the database.
        public string ProductInfo
        {
            get
            {
                string info;
                if (!string.IsNullOrWhiteSpace(QuantityPerUnit))
                    info = ProductName;
                else
                    info = $"{ProductName} ({QuantityPerUnit})";
                return info;
            }
        }
    }
}
