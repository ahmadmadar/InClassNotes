using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NorthwindEntities
{
    [Table("Categories")]
    public class Category
    {
        [Key] // "Annotation" - Primary Key
        public int CategoryID { get; set; }

        [Required, StringLength(15)]
        public string CategoryName { get; set; }
        public string Description { get; set; }
        public byte[] Picture { get; set; }

        [StringLength(40)]
        public string PictureMimeType { get; set; }

    }
}
