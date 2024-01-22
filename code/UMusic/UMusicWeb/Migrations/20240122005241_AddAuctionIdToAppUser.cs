using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class AddAuctionIdToAppUser : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "JoinedAuctionId",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1484));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1530));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1532));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1594));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1599));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 12, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1607), new DateTime(2024, 1, 22, 0, 52, 39, 972, DateTimeKind.Local).AddTicks(1603) });

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_JoinedAuctionId",
                table: "AspNetUsers",
                column: "JoinedAuctionId");

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers",
                column: "JoinedAuctionId",
                principalTable: "Auctions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_JoinedAuctionId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "JoinedAuctionId",
                table: "AspNetUsers");

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
    }
}
