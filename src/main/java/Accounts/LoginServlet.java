package Accounts;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LoginServlet
 */

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acc=request.getParameter("acc");
		String password=request.getParameter("password");
		  String em="",p="o";
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
			    Statement s=c.createStatement();
			    s.execute("use jdbc");
			    ResultSet rs=s.executeQuery("select * from bank where accnumber="+acc+";");
			    
			    int count=0;
			    
				while(rs.next()) {
				 p=rs.getString("passcode");
				 em=rs.getString("accnumber");
			    
			   
			if (em.equals(acc) && p.equals(password)) {
				count++;
				
				RequestDispatcher re= request.getRequestDispatcher("Transaction.jsp");
				re.forward(request, response);
			}
			System.out.println("hi");
			if(count==0) {
				System.out.println("hi");
				PrintWriter out=response.getWriter();
				out.println("<script>"
						+ "function help(){\r\n"
						+ "    alert(\"Enter the valid Detail!!\");\r\n"
						+ "}\r\n"
						+ "help();</script>");
			}
				}    
				
		}
			catch(Exception E) {
				E.printStackTrace();
			}
		}
}
