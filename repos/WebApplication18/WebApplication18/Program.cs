var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

//4.Query String

app.MapWhen(context => context.Request.Query.ContainsKey("branch"), HandleBranch);

app.Run(async context =>
{
    await context.Response.WriteAsync("Hello fro non-map delegate");
});

app.Run();

static void HandleBranch(IApplicationBuilder app)
{
    app.Run(async context =>
    {
        var branchVar = context.Request.Query["branch"];
        await context.Response.WriteAsync($"Branch used ={branchVar}");
    });
}


//3.Routing
//app.Map("/map1", HandleMapTest1);

//app.Map("/map2", HandleMapTest2);

//app.Run(async context =>
//{
//    await context.Response.WriteAsync("Hello from non-map Delegate!");
//});

//app.Run();

//static void HandleMapTest1(IApplicationBuilder app)
//{
//    app.Run(async context=>
//        {
//        await context.Response.WriteAsync("Map Test 1");
//    });
//}

//static void HandleMapTest2(IApplicationBuilder app)
//{
//    app.Run(async context=>
//        {
//        await context.Response.WriteAsync("Map Test 2");
//    });
//}

//2.For Use
//app.Use(async (context, next) =>
//{ 
//    await next.Invoke();
//});

//app.Run(async context=>
//    {
//    await context.Response.WriteAsync("Hello from 2nd Delegate!");
//});


//1.for Run
//app.Run(async context =>
//{
//    await context.Response.WriteAsync("Hello World!");
//});

//old
//// Add services to the container.
//builder.Services.AddControllersWithViews();

//var app = builder.Build();

//// Configure the HTTP request pipeline.
//if (!app.Environment.IsDevelopment())
//{
//    app.UseExceptionHandler("/Home/Error");
//}
//app.UseStaticFiles();

//app.UseRouting();

//app.UseAuthorization();

//app.MapControllerRoute(
//    name: "default",
//    pattern: "{controller=Home}/{action=Index}/{id?}");

//app.Run();
