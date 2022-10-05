using MassTransit;
using Microsoft.EntityFrameworkCore;
using SalesBusiness.Api.Consumer;
using SalesBusiness.API.Data;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<SalesBusinessContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("SalesBusinessDBConnection"));
});

builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddMassTransit(x => {
    x.AddConsumer<ProductCreatedConsumer>();
    x.UsingRabbitMq((context, cfg) =>
    {
        cfg.Host(new Uri("rabbitmq://localhost:4001"), h => {
            h.Username("guest");
            h.Password("guest");
        });
        cfg.ReceiveEndpoint("event-listener", e =>
        {
            e.ConfigureConsumer<ProductCreatedConsumer>(context);
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
