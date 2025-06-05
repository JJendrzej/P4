using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Scout.Migrations
{
    /// <inheritdoc />
    public partial class Updatev5ScoutDB : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "League",
                table: "Players",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "League",
                table: "Players");
        }
    }
}
