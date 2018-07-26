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
import javax.servlet.http.HttpSession;

public class LibrarianServlet extends HttpServlet {
	static ResultSet rs = null;
	static Connection conn = null;
	static String url;
	static Statement statement = null;


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
 
		try {
			if (request.getParameter("logout") != null) {
				response.sendRedirect("Welcome.jsp");
			}
			else if (request.getParameter("addBook") != null) {
				response.sendRedirect("AddBookPage.jsp");
			}
			else if (request.getParameter("deleteBook") != null) {
				response.sendRedirect("DeleteBookPage.jsp"); 
			}else if (request.getParameter("saveBook") != null) {
				StringBuffer saveBookQuery = new StringBuffer("Insert into book_details (bookname, author, category, IsReserved) values (");
				saveBookQuery.append("'" + request.getParameter("bookName") +"',");
				saveBookQuery.append("'" + request.getParameter("author") +"',");
				saveBookQuery.append("'" + request.getParameter("category") +"',");
				saveBookQuery.append(0 +")");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/UniversityOfCentralMissouriLibraries";
					try {
						conn = DriverManager.getConnection(url, "root", "root");
						statement = conn.createStatement(); // used to create a statement object used to execute queries
						int n = statement.executeUpdate(saveBookQuery.toString());// used to execute selected query
						if(n>0)
							System.out.println("Book inserted successfully");
						response.sendRedirect("AddBookPage.jsp");
						
					} catch (SQLException e) {
						System.out.println(e.getMessage());
					}
				} catch (ClassNotFoundException ex) {
					System.out.println(ex.getMessage());
				}

				
			}else if (request.getParameter("deleteBookFromDB") != null) {
				StringBuffer deleteBookQuery = new StringBuffer("delete from book_details where ");
				deleteBookQuery.append("bookname like");
				deleteBookQuery.append("'%" + request.getParameter("bookName") +"%' and ");
				deleteBookQuery.append("author like ");
				deleteBookQuery.append("'%" + request.getParameter("author") +"%'");
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/UniversityOfCentralMissouriLibraries";
					try {
						conn = DriverManager.getConnection(url, "root", "root");
						statement = conn.createStatement();
						int n = statement.executeUpdate(deleteBookQuery.toString());
					
						if(n>0)
							System.out.println("Book deleted successfully");
						response.sendRedirect("DeleteBookPage.jsp");
						
					} catch (SQLException e) {
						System.out.println(e.getMessage());
					}
				} catch (ClassNotFoundException ex) {
					System.out.println(ex.getMessage());
				}
			}
		}

		catch (Throwable ex) {
			System.out.println(ex.getMessage());
		}
	}
}