using Manufacture.API.Data;
using MassTransit;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddDbContext<ManufactureContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("ManufactureDBConnection"));
});

builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddMassTransit(options => {
    options.UsingRabbitMq((context, cfg) => {
        cfg.Host(new Uri("rabbitmq://localhost:4001"), h => {
            h.Username("guest");
            h.Password("guest");
        });

    });
});

var app = builder.Build();


if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
