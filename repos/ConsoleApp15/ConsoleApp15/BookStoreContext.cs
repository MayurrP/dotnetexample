using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace ConsoleApp15
{
    public partial class BookStoreContext : DbContext
    {
        public BookStoreContext()
        {
        }

        public BookStoreContext(DbContextOptions<BookStoreContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Address> Addresses { get; set; } = null!;
        public virtual DbSet<Book> Books { get; set; } = null!;
        public virtual DbSet<Checkout> Checkouts { get; set; } = null!;
        public virtual DbSet<Review> Reviews { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=BookStore");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>(entity =>
            {
                entity.HasKey(e => e.UserId)
                    .HasName("PK__addresse__B9BE370F6F00394C");

                entity.ToTable("addresses");

                entity.Property(e => e.UserId).HasColumnName("user_id");

                entity.Property(e => e.City)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("city");

                entity.Property(e => e.State)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("state");

                entity.Property(e => e.Street)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("street");
            });

            modelBuilder.Entity<Book>(entity =>
            {
                entity.ToTable("books");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Author)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("author");

                entity.Property(e => e.Isbn)
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .HasColumnName("isbn");

                entity.Property(e => e.PublishedDate).HasColumnName("published_date");

                entity.Property(e => e.Title)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("title");
            });

            modelBuilder.Entity<Checkout>(entity =>
            {
                entity.ToTable("checkouts");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.BookId).HasColumnName("book_id");

                entity.Property(e => e.CheckoutDate).HasColumnName("checkout_date");

                entity.Property(e => e.ReturnDate).HasColumnName("return_date");

                entity.Property(e => e.UserId).HasColumnName("user_id");

                entity.HasOne(d => d.Book)
                    .WithMany(p => p.Checkouts)
                    .HasForeignKey(d => d.BookId)
                    .HasConstraintName("FK__checkouts__book___34C8D9D1");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Checkouts)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK__checkouts__user___33D4B598");
            });

            modelBuilder.Entity<Review>(entity =>
            {
                entity.ToTable("reviews");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.BookId).HasColumnName("book_id");

                entity.Property(e => e.Content)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("content");

                entity.Property(e => e.PulishDate).HasColumnName("pulish_date");

                entity.Property(e => e.Raitng).HasColumnName("raitng");

                entity.Property(e => e.ReviewerName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("reviewer_name");

                entity.HasOne(d => d.Book)
                    .WithMany(p => p.Reviews)
                    .HasForeignKey(d => d.BookId)
                    .HasConstraintName("FK__reviews__book_id__2D27B809");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("users");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Enabled).HasColumnName("enabled");

                entity.Property(e => e.FullName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("full_name");

                entity.Property(e => e.LastLogin).HasColumnName("last_login");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
