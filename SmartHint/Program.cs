using Microsoft.EntityFrameworkCore;
using SmartHint.Components;
using SmartHint.Data;
using Microsoft.AspNetCore.Identity;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services.AddDbContext<SmartHintDbContext>(options => options.UseMySQL("server=localhost;user=root;database=smarthint;password=m98686766;"));
//builder.Services.AddDbContext<SmartHintDbContext>(x => x.UseInMemoryDatabase(databaseName: "SmartHint"));
//builder.Services.AddDbContext<SmartHintDbContext>(options => options.UseMySQL("server=your_server;user=your_user;database=your_database_name;password=your_password;"));

builder.Services.AddServerSideBlazor().AddCircuitOptions(option => { option.DetailedErrors = true; });

builder.Services.AddQuickGridEntityFrameworkAdapter();

builder.Services.AddBlazorBootstrap();

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);

    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();
