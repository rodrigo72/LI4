using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class AddDateStartLot : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "DateStart",
                table: "Lots",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4661));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4703));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4706));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "DateAdded", "DateStart" },
                values: new object[] { new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4757), new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) });

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                columns: new[] { "DateAdded", "DateStart" },
                values: new object[] { new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4762), new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) });

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale", "DateStart" },
                values: new object[] { new DateTime(2024, 1, 11, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4770), new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4767), new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified) });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DateStart",
                table: "Lots");

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4126));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4173));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4175));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4226));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4232));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 10, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4240), new DateTime(2024, 1, 20, 2, 53, 39, 667, DateTimeKind.Local).AddTicks(4236) });
        }
    }
}
