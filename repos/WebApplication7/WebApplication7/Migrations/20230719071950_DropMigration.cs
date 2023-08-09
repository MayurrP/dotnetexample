using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebApplication7.Migrations
{
    public partial class DropMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentMaster_Grade_GradeId",
                table: "StudentMaster");

            migrationBuilder.DropTable(
                name: "Grade");

            migrationBuilder.DropIndex(
                name: "IX_StudentMaster_GradeId",
                table: "StudentMaster");

            migrationBuilder.DropColumn(
                name: "GradeId",
                table: "StudentMaster");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "GradeId",
                table: "StudentMaster",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Grade",
                columns: table => new
                {
                    GradeId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    GradeName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Section = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Grade", x => x.GradeId);
                });

            migrationBuilder.CreateIndex(
                name: "IX_StudentMaster_GradeId",
                table: "StudentMaster",
                column: "GradeId");

            migrationBuilder.AddForeignKey(
                name: "FK_StudentMaster_Grade_GradeId",
                table: "StudentMaster",
                column: "GradeId",
                principalTable: "Grade",
                principalColumn: "GradeId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
