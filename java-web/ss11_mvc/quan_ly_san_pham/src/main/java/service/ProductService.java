package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private static List<Product> products = new ArrayList<>();
    static {
        products.add(new Product(1, "Laptop", 30000000, "Laptop Nitro 5", "Acer"));
        products.add(new Product(2, "Iphone 16", 25000000, "Màu trắng", "Apple"));
        products.add(new Product(3, "Tablet", 20000000, "Máy tính bảng", "Samsung"));
    }


    @Override
    public List<Product> getProducts() {
        return products;
    }

    @Override
    public boolean addProduct(Product product) {
        return products.add(product);
    }

    @Override
    public Product findProductById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public List<Product> findProductByName(String name) {
        List<Product> products = new ArrayList<>();
        for (Product product : products) {
            if (product.getName().equals(name)) {
                products.add(product);
            }
        }
        if (products.isEmpty()) {
            return null;
        }
        return products;
    }

    @Override
    public boolean updateProductById(int id, Product product) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                products.set(i, product);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean deleteProductById(int id) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                products.remove(i);
                return true;
            }
        }
        return false;
    }
}
