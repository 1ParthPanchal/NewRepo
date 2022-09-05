//using Microsoft.EntityFrameworkCore.Migrations;

//namespace Pharm_Easy_Models.Migrations
//{
//    public partial class pharmeasy2443parth : Migration
//    {
//        //protected override void Up(MigrationBuilder migrationBuilder)
//        //{
//        //    migrationBuilder.DropForeignKey(
//        //        name: "FK_carts_offers_Off_Id1",
//        //        table: "carts");

//        //    migrationBuilder.DropForeignKey(
//        //        name: "FK_carts_orders_o_quantityo_Id",
//        //        table: "carts");

//        //    migrationBuilder.DropIndex(
//        //        name: "IX_carts_o_quantityo_Id",
//        //        table: "carts");

//        //    migrationBuilder.DropIndex(
//        //        name: "IX_carts_Off_Id1",
//        //        table: "carts");

//        //    migrationBuilder.DropColumn(
//        //        name: "Off_Id1",
//        //        table: "carts");

//        //    migrationBuilder.DropColumn(
//        //        name: "o_quantityo_Id",
//        //        table: "carts");

//        //    migrationBuilder.AddColumn<int>(
//        //        name: "Pr_Id",
//        //        table: "carts",
//        //        type: "int",
//        //        nullable: false,
//        //        defaultValue: 0);

//        //    migrationBuilder.AddColumn<string>(
//        //        name: "o_Details",
//        //        table: "carts",
//        //        type: "nvarchar(max)",
//        //        nullable: true);

//        //    migrationBuilder.AddColumn<int>(
//        //        name: "o_quantity",
//        //        table: "carts",
//        //        type: "int",
//        //        nullable: false,
//        //        defaultValue: 0);
//        //}

//        //protected override void Down(MigrationBuilder migrationBuilder)
//        //{
//        //    migrationBuilder.DropColumn(
//        //        name: "Pr_Id",
//        //        table: "carts");

//        //    migrationBuilder.DropColumn(
//        //        name: "o_Details",
//        //        table: "carts");

//        //    migrationBuilder.DropColumn(
//        //        name: "o_quantity",
//        //        table: "carts");

//        //    migrationBuilder.AddColumn<int>(
//        //        name: "Off_Id1",
//        //        table: "carts",
//        //        type: "int",
//        //        nullable: true);

//        //    migrationBuilder.AddColumn<int>(
//        //        name: "o_quantityo_Id",
//        //        table: "carts",
//        //        type: "int",
//        //        nullable: true);

//        //    migrationBuilder.CreateIndex(
//        //        name: "IX_carts_o_quantityo_Id",
//        //        table: "carts",
//        //        column: "o_quantityo_Id");

//        //    migrationBuilder.CreateIndex(
//        //        name: "IX_carts_Off_Id1",
//        //        table: "carts",
//        //        column: "Off_Id1");

//        //    migrationBuilder.AddForeignKey(
//        //        name: "FK_carts_offers_Off_Id1",
//        //        table: "carts",
//        //        column: "Off_Id1",
//        //        principalTable: "offers",
//        //        principalColumn: "Off_Id",
//        //        onDelete: ReferentialAction.Restrict);

//        //    migrationBuilder.AddForeignKey(
//        //        name: "FK_carts_orders_o_quantityo_Id",
//        //        table: "carts",
//        //        column: "o_quantityo_Id",
//        //        principalTable: "orders",
//        //        principalColumn: "o_Id",
//        //        onDelete: ReferentialAction.Restrict);
//        //}
//    }
//}
