 package com.qsp.custermer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/custmerlogin")
public class custmerlogin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("usename");
		String pass1 = req.getParameter("pass");
		PrintWriter writer = resp.getWriter();
		System.out.println(username);
		System.out.println(pass1);
		
		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("select * from customer where username =? and pass =?");
			statement.setString(1, username);
			statement.setString(2, pass1);
			
			ResultSet executeQuery = statement.executeQuery();
			
			if (executeQuery.next()) {
				System.out.println(executeQuery.getInt(1));
				System.out.println(executeQuery.getString(6));
				writer.print("login sucess");
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("custmerHome.jsp");
				requestDispatcher.forward(req, resp);
			} else {
				RequestDispatcher requestDispatcher1 = req.getRequestDispatcher("custermersignin.jsp");
				requestDispatcher1.include(req, resp);
						
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
