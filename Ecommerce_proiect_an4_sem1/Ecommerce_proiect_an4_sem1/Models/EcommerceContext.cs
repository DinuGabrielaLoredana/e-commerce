using System;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Newtonsoft.Json.Linq;

namespace Ecommerce_proiect_an4_sem1.Models
{
    public partial class EcommerceContext : IdentityDbContext<IdentityUser>
    {
        public EcommerceContext()
        {
        }

        public EcommerceContext(DbContextOptions<EcommerceContext> options)
            : base(options)
        {
        }

       
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductCategory> ProductCategory { get; set; }
        public virtual DbSet<ProductOrder> ProductOrder { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<StockEntry> StockEntry { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                var jsonString = System.IO.File.ReadAllText(@"database_settings.json");
                var myJObject = JObject.Parse(jsonString);
                var connectionString = @myJObject.SelectToken("DatabasePath").Value<string>();
                optionsBuilder.UseSqlServer(connectionString);
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.HasAnnotation("ProductVersion", "2.2.2-servicing-10034");
           
            modelBuilder.Entity<Category>(entity =>
            {
                entity.Property(e => e.CategoryId)
                    .HasColumnName("category_id")
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasColumnName("category_name")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.Property(e => e.OrderId)
                    .HasColumnName("order_id")
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.ClientId)
                    .IsRequired()
                    .HasColumnName("client_id")
                    .HasMaxLength(200);

                entity.Property(e => e.HasBeenPlaced).HasColumnName("has_been_placed");

                entity.Property(e => e.HasBeenConfirmed).HasColumnName("has_been_confirmed");

                entity.Property(e => e.Quantity).HasColumnName("quantity");

                entity.HasOne(d => d.Client)
                    .WithMany(p => p.Order)
                    .HasForeignKey(d => d.ClientId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("Order_fk0");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.Property(e => e.ProductId)
                    .HasColumnName("product_id")
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.Price)
                    .HasColumnName("price")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.ProductDescription)
                    .IsRequired()
                    .HasColumnName("product_description")
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.ProductName)
                    .IsRequired()
                    .HasColumnName("product_name")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.ProductPicture)
                    .IsRequired()
                    .HasColumnName("product_picture")
                    .HasMaxLength(150)
                    .IsUnicode(false);
                entity.Property(e => e.SpecificationFile)
                    .IsRequired()
                    .HasColumnName("specification_file")
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<ProductCategory>(entity =>
            {
                entity.HasKey(e => e.IdProductCategory)
                    .HasName("pk_IdProduct_Category");

                entity.ToTable("product_category");

                entity.Property(e => e.IdProductCategory)
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.CategoryId)
                    .IsRequired()
                    .HasColumnName("category_id")
                    .HasMaxLength(200);

                entity.Property(e => e.ProductId)
                    .IsRequired()
                    .HasColumnName("product_id")
                    .HasMaxLength(200);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.ProductCategory)
                    .HasForeignKey(d => d.CategoryId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_category_fk1");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductCategory)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_category_fk0");
            });

            modelBuilder.Entity<ProductOrder>(entity =>
            {
                entity.HasKey(e => e.IdProductOrder)
                    .HasName("pk_IdProductOrder");

                entity.Property(e => e.IdProductOrder)
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.OrderIdFk)
                    .IsRequired()
                    .HasColumnName("OrderIdFK")
                    .HasMaxLength(200);

                entity.Property(e => e.ProductIdFk)
                    .IsRequired()
                    .HasColumnName("ProductIdFK")
                    .HasMaxLength(200);

                entity.HasOne(d => d.OrderIdFkNavigation)
                    .WithMany(p => p.ProductOrder)
                    .HasForeignKey(d => d.OrderIdFk)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("order_product_fk0");

                entity.HasOne(d => d.ProductIdFkNavigation)
                    .WithMany(p => p.ProductOrder)
                    .HasForeignKey(d => d.ProductIdFk)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("order_product_fk1");
            });

            modelBuilder.Entity<Role>(entity =>
            {
                entity.Property(e => e.RoleId)
                    .HasColumnName("role_id")
                    .ValueGeneratedNever();

                entity.Property(e => e.Role1)
                    .IsRequired()
                    .HasColumnName("role")
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<StockEntry>(entity =>
            {
                entity.HasKey(e => e.StockId)
                    .HasName("PK_STOCK");

                entity.ToTable("Stock_Entry");

                entity.Property(e => e.StockId)
                    .HasColumnName("stock_id")
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.ProductId)
                    .IsRequired()
                    .HasColumnName("product_id")
                    .HasMaxLength(200);

                entity.Property(e => e.RemainingStock).HasColumnName("remaining_stock");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.StockEntry)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("stock_entry_fk0");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasColumnName("id")
                    .HasMaxLength(200)
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(150)
                    .IsUnicode(false);

                entity.Property(e => e.CardNumber)
                    .IsRequired()
                    .HasColumnName("Card_Number")
                    .HasMaxLength(19)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.RoleId).HasColumnName("role_id");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.User)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("User_fk0");
            });
        }
    }
}
