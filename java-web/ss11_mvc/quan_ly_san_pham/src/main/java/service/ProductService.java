package service;

import model.Product;
import repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private static ProductRepository productRepository = new ProductRepository();
//    static {
//        productService.add(new Product(1, "Laptop", 30000000, "Laptop Nitro 5", "Acer"));
//        productService.add(new Product(2, "Iphone 16", 25000000, "Màu trắng", "Apple"));
//        productService.add(new Product(3, "Tablet", 20000000, "Máy tính bảng", "Samsung"));
//    }


    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public boolean add(Product product) {
        return productRepository.add(product);
    }

    @Override
    public boolean delete(int id) {
        return productRepository.delete(id);
    }

    @Override
    public boolean update(int id, Product product) {
        return productRepository.update(id, product);
    }

    @Override
    public List<Product> search(String name) {
        return productRepository.search(name);
    }
}
