package com.qsp.custermer;

import java.io.IOException; 
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
@WebServlet("/custermerRegester1")
public class custermerRegester extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String mobno = req.getParameter("mobno");
		String email = req.getParameter("email");
		String username = req.getParameter("username");
		String pass = req.getParameter("pass");

	String name= new String ("abs");
		try {
			Class.forName("org.postgresql.Driver");
			Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("insert into customer values(?,?,?,?,?,?)");
			System.out.println(connection);
			statement.setInt(1, Integer.parseInt(id));
			statement.setString(2, name);
			statement.setLong(3, Long.parseLong(mobno));
			statement.setString(4, email);
			statement.setString(5, username);
			statement.setString(6, pass);
			statement.execute();
			req.setAttribute("message", "data saved");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("custmer.jsp");
			requestDispatcher.forward(req, resp);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

