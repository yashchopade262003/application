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

@WebServlet("/EmployeeReg")
public class EmployeeReg extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String mob = req.getParameter("mob");
		String designation = req.getParameter("designation");
		String sal = req.getParameter("sal");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");

		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("insert into employee values(?,?,?,?,?,?,?)");
			statement.setInt(1, Integer.parseInt(id));
			statement.setString(2, name);
			statement.setDouble(7, Double.parseDouble(mob));
			statement.setString(3, designation);
			statement.setDouble(4, Double.parseDouble(sal));
			statement.setString(5, email);
			statement.setString(6, pass);

			statement.execute();

			req.setAttribute("message", "data saved");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("EmployeeRegistered.jsp");
			requestDispatcher.forward(req, resp);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
