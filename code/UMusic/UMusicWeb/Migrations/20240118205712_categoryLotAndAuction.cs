using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class categoryLotAndAuction : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Auctions",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StartDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    EndDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(300)", maxLength: 300, nullable: false),
                    AutomaticInitialization = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Auctions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DisplayOrder = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Lots",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(300)", maxLength: 300, nullable: false),
                    Visibility = table.Column<int>(type: "int", nullable: false),
                    State = table.Column<int>(type: "int", nullable: false),
                    IncrementValue = table.Column<float>(type: "real", nullable: false),
                    InitialValue = table.Column<float>(type: "real", nullable: false),
                    FinalValue = table.Column<float>(type: "real", nullable: true),
                    QueueTime = table.Column<int>(type: "int", nullable: false),
                    DateSale = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DateAdded = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lots", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Auctions",
                columns: new[] { "Id", "AutomaticInitialization", "Description", "EndDate", "Name", "StartDate" },
                values: new object[,]
                {
                    { 1, true, "Random description", null, "Random name 1", new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6169) },
                    { 2, false, "Random description", null, "Random name 2", new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6176) },
                    { 3, false, "Random description", null, "Random name 3", new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6181) }
                });

            migrationBuilder.InsertData(
                table: "Categories",
                columns: new[] { "Id", "DisplayOrder", "Name" },
                values: new object[,]
                {
                    { 1, 1, "Action" },
                    { 2, 2, "SciFi" },
                    { 3, 3, "History" }
                });

            migrationBuilder.InsertData(
                table: "Lots",
                columns: new[] { "Id", "DateAdded", "DateSale", "Description", "FinalValue", "IncrementValue", "InitialValue", "Name", "QueueTime", "State", "Visibility" },
                values: new object[,]
                {
                    { 1, new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6025), null, "Random description", null, 100f, 1000f, "Lot_1", 15, 2, 1 },
                    { 2, new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6089), null, "Random description", null, 200f, 2000f, "Lot_2", 30, 1, 1 },
                    { 3, new DateTime(2024, 1, 8, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6106), new DateTime(2024, 1, 18, 20, 57, 11, 277, DateTimeKind.Local).AddTicks(6099), "Random description", 3100.23f, 100f, 1000f, "Lot_3", 15, 3, 0 }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Auctions");

            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "Lots");
        }
    }
}
