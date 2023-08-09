using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebApplication7.Migrations
{
    public partial class TableMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Student_Grade_GradeId",
                table: "Student");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Student",
                table: "Student");

            migrationBuilder.RenameTable(
                name: "Student",
                newName: "StudentMaster");

            migrationBuilder.RenameIndex(
                name: "IX_Student_GradeId",
                table: "StudentMaster",
                newName: "IX_StudentMaster_GradeId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_StudentMaster",
                table: "StudentMaster",
                column: "StudentId");

            migrationBuilder.AddForeignKey(
                name: "FK_StudentMaster_Grade_GradeId",
                table: "StudentMaster",
                column: "GradeId",
                principalTable: "Grade",
                principalColumn: "GradeId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_StudentMaster_Grade_GradeId",
                table: "StudentMaster");

            migrationBuilder.DropPrimaryKey(
                name: "PK_StudentMaster",
                table: "StudentMaster");

            migrationBuilder.RenameTable(
                name: "StudentMaster",
                newName: "Student");

            migrationBuilder.RenameIndex(
                name: "IX_StudentMaster_GradeId",
                table: "Student",
                newName: "IX_Student_GradeId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Student",
                table: "Student",
                column: "StudentId");

            migrationBuilder.AddForeignKey(
                name: "FK_Student_Grade_GradeId",
                table: "Student",
                column: "GradeId",
                principalTable: "Grade",
                principalColumn: "GradeId",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
