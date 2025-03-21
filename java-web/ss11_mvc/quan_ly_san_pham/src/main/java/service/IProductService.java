package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    boolean add(Product product);

    boolean delete(int id);

    boolean update(int id, Product product);

    List<Product> search(String name);
}
