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
import javax.servlet.http.HttpSession;

@WebServlet("/EmployeeLogin")
public class EmployeeLogin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String un = req.getParameter("name");
		String pass = req.getParameter("pass");

		try {
			Class.forName("org.postgresql.Driver");

			Connection connection = DriverManager
					.getConnection("jdbc:postgresql://localhost:5432/shoppingkart?user=postgres&password=root");
			PreparedStatement statement = connection.prepareStatement("select * from employee where name=? and pass=?");
			statement.setString(1, un);
			statement.setString(2, pass);

			ResultSet res = statement.executeQuery();

			if (res.next()) {
				HttpSession session = req.getSession();
				session.setAttribute("un", un);
				session.setAttribute("pass", pass);

				RequestDispatcher requestDispatcher = req.getRequestDispatcher("EmployeeHome.jsp");
				requestDispatcher.forward(req, resp);

			} else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("EmployeeLogin.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
