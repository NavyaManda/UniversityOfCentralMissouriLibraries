package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentServlet extends HttpServlet {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection conn = null;
	static String url;
	static Statement statement = null;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, java.io.IOException {
		try {
			if (req.getParameter("register") != null) {
				StringBuffer insertStudentDetailsQuery = new StringBuffer("INSERT INTO student_details (firstName, "
						+ "lastName," + "studentId," + "username," + "password," + "emailId" + ")  " + "VALUES (");
				insertStudentDetailsQuery.append("'" + req.getParameter("fName") + "'" + ",");
				insertStudentDetailsQuery.append("'" + req.getParameter("lName") + "'" + ",");
				insertStudentDetailsQuery.append("'" + req.getParameter("studentId") + "'" + ",");
				insertStudentDetailsQuery.append("'" + req.getParameter("userName") + "'" + ",");
				insertStudentDetailsQuery.append("'" + req.getParameter("password") + "'" + ",");
				insertStudentDetailsQuery.append("'" + req.getParameter("emailId") + "')");
				System.out.println(insertStudentDetailsQuery);

				StringBuffer insertLoginDetails = new StringBuffer(
						"INSERT INTO user_login_details (username, " + "password," + "role" + ")  " + "VALUES (");
				insertLoginDetails.append("'" + req.getParameter("userName") + "'" + ",");
				insertLoginDetails.append("'" + req.getParameter("password") + "'" + ",");
				insertLoginDetails.append("'STUDENT'");
				insertLoginDetails.append(")");
				System.out.println(insertLoginDetails);
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/UniversityOfCentralMissouriLibraries";
					conn = DriverManager.getConnection(url, "root", "root");
					statement = conn.createStatement();
					int n = statement.executeUpdate(insertStudentDetailsQuery.toString());
					if (n > 0)
						System.out.println("Student Details inserted successfully");
					n = statement.executeUpdate(insertLoginDetails.toString());
					if (n > 0){
						System.out.println("Login Details inserted successfully");
						
						req.setAttribute("message","user registered successfully");
						req.getRequestDispatcher("ReserveBookPage.jsp").forward(req, res); 
					}
						
						res.sendRedirect("Welcome.jsp");

				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
			} else if (req.getParameter("borrowBook") != null) {
				res.sendRedirect("ReserveBookPage.jsp");
			} else if (req.getParameter("reserveBook") != null) {
				System.out.println("Currently working" );
				req.setAttribute("message","Book reserved successfully");
				req.getRequestDispatcher("Welcome.jsp").forward(req, res); 
			}else if (req.getParameter("logout") != null) {
				res.sendRedirect("Welcome.jsp");
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
}