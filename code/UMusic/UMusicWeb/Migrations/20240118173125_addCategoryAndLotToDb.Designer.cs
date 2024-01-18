﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using UMusicWeb.Data;

#nullable disable

namespace UMusicWeb.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20240118173125_addCategoryAndLotToDb")]
    partial class addCategoryAndLotToDb
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("UMusicWeb.Models.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<int>("DisplayOrder")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Categories");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            DisplayOrder = 1,
                            Name = "Action"
                        },
                        new
                        {
                            Id = 2,
                            DisplayOrder = 2,
                            Name = "SciFi"
                        },
                        new
                        {
                            Id = 3,
                            DisplayOrder = 3,
                            Name = "History"
                        });
                });

            modelBuilder.Entity("UMusicWeb.Models.Lot", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<DateTime>("DateAdded")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("DateSale")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(300)
                        .HasColumnType("nvarchar(300)");

                    b.Property<float?>("FinalValue")
                        .HasColumnType("real");

                    b.Property<float>("IncrementValue")
                        .HasColumnType("real");

                    b.Property<float>("InitialValue")
                        .HasColumnType("real");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<int>("QueueTime")
                        .HasColumnType("int");

                    b.Property<int>("State")
                        .HasColumnType("int");

                    b.Property<int>("Visibility")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("Lots");

                    b.HasData(
                        new
                        {
                            Id = 1,
                            DateAdded = new DateTime(2024, 1, 18, 17, 31, 24, 452, DateTimeKind.Local).AddTicks(8407),
                            Description = "Random description",
                            IncrementValue = 100f,
                            InitialValue = 1000f,
                            Name = "Lot_1",
                            QueueTime = 15,
                            State = 2,
                            Visibility = 1
                        },
                        new
                        {
                            Id = 2,
                            DateAdded = new DateTime(2024, 1, 18, 17, 31, 24, 452, DateTimeKind.Local).AddTicks(8458),
                            Description = "Random description",
                            IncrementValue = 200f,
                            InitialValue = 2000f,
                            Name = "Lot_2",
                            QueueTime = 30,
                            State = 1,
                            Visibility = 1
                        },
                        new
                        {
                            Id = 3,
                            DateAdded = new DateTime(2024, 1, 8, 17, 31, 24, 452, DateTimeKind.Local).AddTicks(8516),
                            DateSale = new DateTime(2024, 1, 18, 17, 31, 24, 452, DateTimeKind.Local).AddTicks(8508),
                            Description = "Random description",
                            FinalValue = 3100.23f,
                            IncrementValue = 100f,
                            InitialValue = 1000f,
                            Name = "Lot_3",
                            QueueTime = 15,
                            State = 3,
                            Visibility = 0
                        });
                });
#pragma warning restore 612, 618
        }
    }
}
