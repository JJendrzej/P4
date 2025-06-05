using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Scout.Migrations
{
    /// <inheritdoc />
    public partial class Updatev8ScoutDB : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsPriority",
                table: "Players");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsPriority",
                table: "Players",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
