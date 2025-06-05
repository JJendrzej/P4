using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Microsoft.Extensions.Options;

namespace Scout.Model
{
    public class ScoutDbContext : DbContext
    {
        public DbSet<Player> Players { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = "Server=Endriu;Database=Scout;Integrated Security=True;TrustServerCertificate=True;";

            optionsBuilder.UseSqlServer(connectionString);
        }

        
    }

    
}
