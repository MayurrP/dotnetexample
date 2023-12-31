﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebApplication24.Data;

#nullable disable

namespace WebApplication24.Migrations
{
    [DbContext(typeof(WebApplication24Context))]
    [Migration("20230727123818_initialcreate")]
    partial class initialcreate
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.20")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("WebApplication23.Models.InstructorList", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int?>("Age")
                        .HasColumnType("int");

                    b.Property<int?>("Experience")
                        .HasColumnType("int");

                    b.Property<string>("InstructorName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("SportsId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("SportsId");

                    b.ToTable("InstructorList");
                });

            modelBuilder.Entity("WebApplication23.Models.Player", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int?>("Age")
                        .HasColumnType("int");

                    b.Property<int?>("InstructorId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("SportsId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("InstructorId");

                    b.HasIndex("SportsId");

                    b.ToTable("Player");
                });

            modelBuilder.Entity("WebApplication23.Models.SportsList", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("SportsName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("SportsList");
                });

            modelBuilder.Entity("WebApplication23.Models.InstructorList", b =>
                {
                    b.HasOne("WebApplication23.Models.SportsList", "Sports")
                        .WithMany("InstructorLists")
                        .HasForeignKey("SportsId");

                    b.Navigation("Sports");
                });

            modelBuilder.Entity("WebApplication23.Models.Player", b =>
                {
                    b.HasOne("WebApplication23.Models.InstructorList", "Instructor")
                        .WithMany("Players")
                        .HasForeignKey("InstructorId");

                    b.HasOne("WebApplication23.Models.SportsList", "Sports")
                        .WithMany("Players")
                        .HasForeignKey("SportsId");

                    b.Navigation("Instructor");

                    b.Navigation("Sports");
                });

            modelBuilder.Entity("WebApplication23.Models.InstructorList", b =>
                {
                    b.Navigation("Players");
                });

            modelBuilder.Entity("WebApplication23.Models.SportsList", b =>
                {
                    b.Navigation("InstructorLists");

                    b.Navigation("Players");
                });
#pragma warning restore 612, 618
        }
    }
}
