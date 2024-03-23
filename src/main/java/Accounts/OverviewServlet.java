package Accounts;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Servlet implementation class OverviewServlet
 */
public class OverviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OverviewServlet() {
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
		String accnumber=request.getParameter("acc");
		String action=request.getParameter("access");
		String a=null;
		String z=" ";
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
		    Statement s=c.createStatement();
		    s.execute("use jdbc");
		    ResultSet rs=s.executeQuery("select accnumber from bank where accnumber='"+accnumber+"';");
		   while(rs.next()) {
			  a=rs.getString("accnumber");
			  
		   }
			  if(a.equals(accnumber)) {
				  
				  if (action.equals("Account Balance")) {
						z="a";		
					}
					if (action.equals("Account Details")) {						
						z="b";
					}
			        if (action.equals("Transaction History")) {
			        	z="c";
			        }
			  
			        else {
				  out.println("<script>function showAlert(){\r\n"
							+ " alert(\"Someone Has already Registered with your 'email' or 'contact'\");\r\n"
							+ "						}\r\n"
							+ "showAlert();</script>");
		    	  
			  }
			       
		   } 
		}
		catch(Exception E){
			
		}
		request.setAttribute("acc", a);
        request.setAttribute("z", z);
        RequestDispatcher re= request.getRequestDispatcher("Overviewshow.jsp");
		  
		   re.forward(request, response);
	}

}
