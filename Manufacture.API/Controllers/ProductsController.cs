using Manufacture.API.Data;
using Manufacture.API.Data.Entities;
using MassTransit;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Shared_Project.RabbitMqModels;

namespace Manufacture.API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ProductsController : ControllerBase
    {
        private readonly ManufactureContext _manufactureContext;
        //public ProductsController(ManufactureContext manufactureContext)
        //{
        //    _manufactureContext = manufactureContext;
        //}
        private readonly IPublishEndpoint _publishEndpoint;
        public ProductsController(
        IPublishEndpoint publishEndpoint,
        ManufactureContext manufactureContext)
        {

            _publishEndpoint = publishEndpoint;
            _manufactureContext = manufactureContext;
        }

        [HttpPost]
        public async Task<IActionResult> PostAsync(Products newProduct)
        {
            _manufactureContext.Products.Add(newProduct);
            await _manufactureContext.SaveChangesAsync();
            await _publishEndpoint.Publish<ProductCreated>(new ProductCreated
            {
                Id = newProduct.Id,
                Name = newProduct.Name
            });

            return CreatedAtAction("Get", new { id = newProduct.Id }, newProduct);
        }

        //[HttpGet]
        //[Route("{id}")]
        //public async Task<IActionResult> GetAsync(int id)
        //{
        //    var product = await _manufactureContext.Products.FindAsync(id);
        //    return Ok(product);
        //}
        //[HttpGet]
        //public async Task<IActionResult> GetAsync()
        //{
        //    var products = await _manufactureContext.Products.ToListAsync();
        //    return Ok(products);
        //}

        //[HttpPost]
        //public async Task<IActionResult> PostAsync(Products newProduct)
        //{
        //    _manufactureContext.Products.Add(newProduct);
        //    await _manufactureContext.SaveChangesAsync();
        //    return CreatedAtAction("Get", new { id = newProduct.Id }, newProduct);
        //}
    }
}
