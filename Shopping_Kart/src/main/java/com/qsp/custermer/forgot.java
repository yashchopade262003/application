package com.qsp.custermer;

import java.io.IOException;
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

@WebServlet("/customerforgot")
public class forgot extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String mob = req.getParameter("mobno");
		req.setAttribute("mon", mob);
		RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("reset");
		requestDispatcher2.forward(req, resp);
//		System.out.println(mob);

		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("select * from customer where mobno=?");
			statement.setLong(1, Long.parseLong(mob));
			ResultSet executeQuery = statement.executeQuery();

			if (executeQuery.next()) {

				RequestDispatcher requestDispatcher = req.getRequestDispatcher("updatepass.jsp");
				requestDispatcher.forward(req, resp);

			} else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("forgot.jsp");
				requestDispatcher.forward(req, resp);

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
