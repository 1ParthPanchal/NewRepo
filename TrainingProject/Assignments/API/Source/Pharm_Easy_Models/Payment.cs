
using System.ComponentModel.DataAnnotations;


namespace Pharm_Easy_Models.Models
{
    public class payment
    {
        [Key]
        public int p_id { get; set; }
        public string p_method { get; set; }

    }
}
