package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private static ProductService productService = new ProductService();
//    static {
//        productService.add(new Product(1, "Laptop", 30000000, "Laptop Nitro 5", "Acer"));
//        productService.add(new Product(2, "Iphone 16", 25000000, "Màu trắng", "Apple"));
//        productService.add(new Product(3, "Tablet", 20000000, "Máy tính bảng", "Samsung"));
//    }


    @Override
    public List<Product> findAll() {
        return productService.findAll();
    }

    @Override
    public boolean add(Product product) {
        return productService.add(product);
    }

    @Override
    public boolean delete(int id) {
        return productService.delete(id);
    }

    @Override
    public boolean update(int id, Product product) {
        return productService.update(id, product);
    }

    @Override
    public List<Product> search(String name) {
        return productService.search(name);
    }
}
