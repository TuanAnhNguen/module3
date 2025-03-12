package controller;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customers = new ArrayList<>();
    static {
        customers.add(new Customer(1, "Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs2fuCSHPi9h3oOW_LBw2TATexlV6CthMSUg&s"));
        customers.add(new Customer(2, "Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://instasize.com/_next/image?url=%2FV169WnBir5QwcI5uGBAp%2Fs%2Ff9441ab6a2b96b2ae169206a33323f1c337bb6904179bc81fbb8151d7abe5c47&w=828&q=75"));
        customers.add(new Customer(3, "Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl3t3id3Ar4AeT_MwOQNvyTwhvp5RHsulSUQ&s"));
        customers.add(new Customer(4, "Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://instasize.com/_next/image?url=%2FV169WnBir5QwcI5uGBAp%2Fs%2Fcbb07b87f77d89afe79fe9efea8a900ea91a22fc89e9e91334c4ed3b54621cdc&w=828&q=75"));
        customers.add(new Customer(5, "Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://res.cloudinary.com/munkee/image/upload/v1677114782/instasize-website/learn/v2tgdaf0k1voqv5bvwb6.webp"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("customers", customers);
        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
