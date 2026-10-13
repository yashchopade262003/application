package com.qsp.Employee;

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

@WebServlet("/empreset")
public class EmpResetpass extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mob = req.getParameter("mob");
		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("select * from employee where mob=?");
			statement.setLong(1, Long.parseLong(mob));
			ResultSet executeQuery = statement.executeQuery();

			if (executeQuery.next()) {
				req.setAttribute("mob1", mob);
				RequestDispatcher requestDispatcher2 = req.getRequestDispatcher("EmployeeUpdate");
				requestDispatcher2.forward(req, resp);
				
				RequestDispatcher requestDispatcher1 = req.getRequestDispatcher("Employeeupdatepass.jsp");
				requestDispatcher2.forward(req, resp);
				

			} else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("empforgot.jsp");
				requestDispatcher.forward(req, resp);

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
