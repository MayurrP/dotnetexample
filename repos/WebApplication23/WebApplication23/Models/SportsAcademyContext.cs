using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace WebApplication23.Models
{
    public partial class SportsAcademyContext : DbContext
    {
        public SportsAcademyContext()
        {
        }

        public SportsAcademyContext(DbContextOptions<SportsAcademyContext> options)
            : base(options)
        {
        }

        public virtual DbSet<InstructorList> InstructorLists { get; set; } = null!;
        public virtual DbSet<Player> Players { get; set; } = null!;
        public virtual DbSet<SportsList> SportsLists { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=(localdb)\\MSSQLLocalDB;Database=SportsAcademy;Trusted_Connection=true;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<InstructorList>(entity =>
            {
                entity.ToTable("InstructorList");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Age).HasColumnName("age");

                entity.Property(e => e.Experience).HasColumnName("experience");

                entity.Property(e => e.InstructorName)
                    .HasMaxLength(60)
                    .IsUnicode(false)
                    .HasColumnName("instructor_name");

                entity.Property(e => e.SportsId).HasColumnName("sports_id");

                entity.HasOne(d => d.Sports)
                    .WithMany(p => p.InstructorLists)
                    .HasForeignKey(d => d.SportsId)
                    .HasConstraintName("FK__Instructo__sport__38996AB5");
            });

            modelBuilder.Entity<Player>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Age).HasColumnName("age");

                entity.Property(e => e.InstructorId).HasColumnName("instructor_id");

                entity.Property(e => e.Name)
                    .HasMaxLength(60)
                    .IsUnicode(false)
                    .HasColumnName("name");

                entity.Property(e => e.SportsId).HasColumnName("sports_id");

                entity.HasOne(d => d.Instructor)
                    .WithMany(p => p.Players)
                    .HasForeignKey(d => d.InstructorId)
                    .HasConstraintName("FK__Players__instruc__3C69FB99");

                entity.HasOne(d => d.Sports)
                    .WithMany(p => p.Players)
                    .HasForeignKey(d => d.SportsId)
                    .HasConstraintName("FK__Players__sports___3B75D760");
            });

            modelBuilder.Entity<SportsList>(entity =>
            {
                entity.ToTable("SportsList");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.SportsName)
                    .HasMaxLength(60)
                    .IsUnicode(false)
                    .HasColumnName("sports_name");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
