package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getProducts();
    boolean addProduct(Product product);
    Product findProductById(int id);
    List<Product> findProductByName(String name);
    boolean updateProductById(int id, Product product);
    boolean deleteProductById(int id);
}
