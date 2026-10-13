package com.qsp.Employee;

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

@WebServlet("/EmployeeUpdate")
public class EmployeeUpdatepass extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pass = req.getParameter("pass");
		String mob = (String) req.getAttribute("mob1");

		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("update employee set pass=? where mobno=?");
			statement.setString(1, pass);
			statement.setLong(2, Long.parseLong(mob));

			statement.execute();

			req.setAttribute("msg", "update sucessfully");

			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Empresetsucess.jsp");
			requestDispatcher.forward(req, resp);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
