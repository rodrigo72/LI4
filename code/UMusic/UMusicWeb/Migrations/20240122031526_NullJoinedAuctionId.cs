using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace UMusicWeb.Migrations
{
    /// <inheritdoc />
    public partial class NullJoinedAuctionId : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers");

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 1,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9249));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 2,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9299));

            migrationBuilder.UpdateData(
                table: "Auctions",
                keyColumn: "Id",
                keyValue: 3,
                column: "StartDate",
                value: new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9302));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 1,
                column: "DateAdded",
                value: new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9368));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 2,
                column: "DateAdded",
                value: new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9373));

            migrationBuilder.UpdateData(
                table: "Lots",
                keyColumn: "Id",
                keyValue: 3,
                columns: new[] { "DateAdded", "DateSale" },
                values: new object[] { new DateTime(2024, 1, 12, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9381), new DateTime(2024, 1, 22, 3, 15, 23, 44, DateTimeKind.Local).AddTicks(9377) });

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers",
                column: "JoinedAuctionId",
                principalTable: "Auctions",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers");

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

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Auctions_JoinedAuctionId",
                table: "AspNetUsers",
                column: "JoinedAuctionId",
                principalTable: "Auctions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
