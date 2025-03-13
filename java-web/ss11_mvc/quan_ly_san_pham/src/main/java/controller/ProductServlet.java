package controller;

import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
            case "create":
                showCreateForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "delete":
                showDeleteForm(req, resp);
                break;
            case "view":
                viewProduct(req, resp);
            case "find":
                showFormFindProduct(req, resp);
            default:
                showListProduct(req, resp);
                break;
        }
    }

    private void showListProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void showFormFindProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void viewProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) {
    }

    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(req, resp);
                break;
            case "update":
                updateProduct(req, resp);
                break;
            case "delete":
                deleteProduct(req, resp);
                break;
            case "find":
                findProduct(req, resp);
                break;
            default:
                break;
        }
    }

    private void findProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) {
    }
}
