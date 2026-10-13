package com.qsp.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class deleteproduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        PrintWriter writer = resp.getWriter();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/shoppingkart", "postgres", "root");
            PreparedStatement statement = connection.prepareStatement("DELETE FROM product WHERE pid = ?");
            statement.setInt(1, Integer.parseInt(id));
            int executeUpdate = statement.executeUpdate();
            
            if (executeUpdate == 1) {
                writer.print("Delete unsuccessful. No product found with id: " + id);
            } else {
                req.setAttribute("message", "Product deleted successfully!");
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("EmployeeDetails.jsp");
                requestDispatcher.forward(req, resp);
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            writer.print("An error occurred: " + e.getMessage());
        }
    }
}
