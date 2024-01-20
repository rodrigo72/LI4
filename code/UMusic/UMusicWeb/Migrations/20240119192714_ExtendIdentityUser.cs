using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class ExtendIdentityUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Address",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "City",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Discriminator",
                table: "AspNetUsers",
                type: "nvarchar(13)",
                maxLength: 13,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "Name",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PostalCode",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(463));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(504));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(506));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(561));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(566));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 9, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(574), new DateTime(2024, 1, 19, 19, 27, 13, 617, DateTimeKind.Local).AddTicks(570) });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Address",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "City",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Discriminator",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "PostalCode",
                table: "AspNetUsers");

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2257));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2321));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2323));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2391));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2396));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 9, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2403), new DateTime(2024, 1, 19, 19, 14, 28, 288, DateTimeKind.Local).AddTicks(2400) });
        }
    }
}
