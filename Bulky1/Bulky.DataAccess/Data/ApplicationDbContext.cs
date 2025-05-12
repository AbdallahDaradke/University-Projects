using Bulky.DataAccess.Data;
using Bulky.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Bulky.DataAccess.Data
{
    public class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        // base(options): like that we pass configurations to the base class of DbContext(Review the course
        //Lecture for more details)
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
                
        }

        public DbSet<Category> Categories { get; set; }//By this line, create this table automatically
        public DbSet<ApplicationUser> ApplicationUsers { get; set; }//By this line, create this table automatically

        public DbSet<Product> Products { get; set; }//By this line, create this table automatically

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);//We need the base.OnModelCreating line so the program can mapped the primary key if not it will show error
            //Here, we are seeding the table, The table is already created
            modelBuilder.Entity<Category>().HasData(
                new Category { Id = 1, Name = "Action", DisplayOrder = 1 },
                new Category { Id = 2, Name = "Active", DisplayOrder = 4 },
                new Category { Id = 3, Name = "SciFi", DisplayOrder = 2 },
                new Category { Id = 4, Name = "History", DisplayOrder = 3 }
                );

            modelBuilder.Entity<Product>().HasData(
                new Product
                {
                    Id = 1,
                    Title = "FOC",
                    Description = "Fundamentals Of Computing",
                    ISBN = "1234567890",
                    Author = "Abdallah Daradkeh",
                    ListPrice = 20.99,
                    Price50 = 18.99,
                    Price100 = 16.99,
                    CategoryId = 1,
                    ImageUrl=""
                },
                new Product
                {
                    Id = 2,
                    Title = "Programming",
                    Description = "Fundamentals Of Programming Using Java",
                    ISBN = "1244567890",
                    Author = "Mohammad Daradkeh",
                    ListPrice = 23.99,
                    Price50 = 22.99,
                    Price100 = 20.99,
                    CategoryId = 2,
                    ImageUrl = ""
                }
                );
        }
    }
}
