using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Scout.Model
{
    public class Player
    {
        [Key]
        public int PlayerId { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public string Surname { get; set; }
        [Required]
        public int Age { get; set; }
        [Required]
        public string Position { get; set; }
        public string? Club { get; set; }
        public string? League { get; set; }
        public string? Potential { get; set; }

        public string ClubDisplay => string.IsNullOrEmpty(Club) ? "Brak klubu" : Club;
        public string LeagueDisplay => string.IsNullOrEmpty(Club) ? "Brak ligi" : Club;


    }
    
}
