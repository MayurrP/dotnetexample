using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using WebApplication23.Data;
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<WebApplication23Context>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("WebApplication23Context") ?? throw new InvalidOperationException("Connection string 'WebApplication23Context' not found.")));

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
