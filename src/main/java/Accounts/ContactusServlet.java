package Accounts;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContactusServlet
 */

public class ContactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactusServlet() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        String name=request.getParameter("name");
				String email=request.getParameter("email");
				String text=request.getParameter("text");
				PrintWriter t=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
		    Statement s=c.createStatement();
		    s.execute("use jdbc");
		    String qry="insert into contact values(?,?,?)";
			PreparedStatement p=c.prepareStatement(qry);
			p.setString(1, name);
			p.setString(2, email);
			p.setString(3, text);
			int d=p.executeUpdate();
			
			if(d==1){
				RequestDispatcher re= request.getRequestDispatcher("feedbacksubmit.jsp");
				re.forward(request, response);
				
				System.out.println(d);
			}
		}
			 catch (SQLException e) {
				e.printStackTrace();
			}
		 catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}		
	}
	
}
