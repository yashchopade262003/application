package com.qsp.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class addproduct extends HttpServlet{
	
	@Override
	protected
	 void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String pname = req.getParameter("pname");
		String category = req.getParameter("category");
		PrintWriter writer = resp.getWriter();
		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("insert into product values(?,?,?)");
			statement.setInt(1, Integer.parseInt(id));
			statement.setString(2, pname);
			statement.setString(3, category);
			
			int executeUpdate = statement.executeUpdate();
			if(executeUpdate==1) {
				writer.print("product added");
			}else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("addproduct.jsp");
				requestDispatcher.forward(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
