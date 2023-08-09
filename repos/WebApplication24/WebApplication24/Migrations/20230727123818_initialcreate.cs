using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebApplication24.Migrations
{
    public partial class initialcreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "SportsList",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SportsName = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SportsList", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "InstructorList",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    InstructorName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Experience = table.Column<int>(type: "int", nullable: true),
                    Age = table.Column<int>(type: "int", nullable: true),
                    SportsId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_InstructorList", x => x.Id);
                    table.ForeignKey(
                        name: "FK_InstructorList_SportsList_SportsId",
                        column: x => x.SportsId,
                        principalTable: "SportsList",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Player",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Age = table.Column<int>(type: "int", nullable: true),
                    SportsId = table.Column<int>(type: "int", nullable: true),
                    InstructorId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Player", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Player_InstructorList_InstructorId",
                        column: x => x.InstructorId,
                        principalTable: "InstructorList",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_Player_SportsList_SportsId",
                        column: x => x.SportsId,
                        principalTable: "SportsList",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateIndex(
                name: "IX_InstructorList_SportsId",
                table: "InstructorList",
                column: "SportsId");

            migrationBuilder.CreateIndex(
                name: "IX_Player_InstructorId",
                table: "Player",
                column: "InstructorId");

            migrationBuilder.CreateIndex(
                name: "IX_Player_SportsId",
                table: "Player",
                column: "SportsId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Player");

            migrationBuilder.DropTable(
                name: "InstructorList");

            migrationBuilder.DropTable(
                name: "SportsList");
        }
    }
}
