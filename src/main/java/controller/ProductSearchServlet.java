package controller;

import model.Product;
import model.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ProductSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String keyword = request.getParameter("keyword");
        System.out.println("搜尋關鍵字：" + keyword);

        ProductDAO dao = new ProductDAO();
        List<Product> results = dao.searchProducts(keyword);

        request.setAttribute("products", results);
        request.setAttribute("keyword", keyword);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
