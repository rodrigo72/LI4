using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class requiredStartDateLot : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4741));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4780));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4782));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4833));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4838));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 11, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4846), new DateTime(2024, 1, 21, 3, 29, 24, 390, DateTimeKind.Local).AddTicks(4842) });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
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
                column: "DateAdded",
                value: new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4757));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4762));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 11, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4770), new DateTime(2024, 1, 21, 3, 18, 21, 173, DateTimeKind.Local).AddTicks(4767) });
        }
    }
}
