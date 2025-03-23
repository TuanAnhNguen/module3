package controller;

import model.Product;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    private static ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showCreateForm":
                showCreateForm(req, resp);
                break;
            case "createProduct":
                createProduct(req, resp);
                break;
            case "deleteProduct":
                deleteProduct(req, resp);
                break;
            case "updateProduct":
                updateProduct(req, resp);
            case "searchProduct":
                searchProduct(req, resp);
                break;
            default:
                showListProduct(req, resp);
        }
    }

    private void showListProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("view/product/list.jsp").forward(req, resp);
    }

    private void searchProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        List<Product> searchProduct = productService.search(name);
        req.setAttribute("products", searchProduct);
        req.getRequestDispatcher("view/product/list.jsp").forward(req, resp);
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int price = Integer.parseInt(req.getParameter("price"));
        String description = req.getParameter("description");
        String manufacturer = req.getParameter("manufacturer");
        productService.update(id, new Product(id, name, price, description, manufacturer));
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("view/product/list.jsp").forward(req, resp);
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        productService.delete(id);
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("view/product/list.jsp").forward(req, resp);
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int price = Integer.parseInt(req.getParameter("price"));
        String description = req.getParameter("description");
        String manufacturer = req.getParameter("manufacturer");
        productService.add(new Product(id, name, price, description, manufacturer));
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("view/product/list.jsp").forward(req, resp);
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/product/create.jsp").forward(req, resp);
    }


}
