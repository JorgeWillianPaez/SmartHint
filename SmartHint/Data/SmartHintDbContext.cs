using Microsoft.EntityFrameworkCore;
using SmartHint.Models;

namespace SmartHint.Data
{
    public class SmartHintDbContext : DbContext
    {
        public SmartHintDbContext(DbContextOptions options) : base(options)
        {

        }
        public DbSet<Cliente> Clientes { get; set; } = null!;
    }
}
