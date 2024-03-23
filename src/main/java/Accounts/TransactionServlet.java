package Accounts;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class TransactionServlet
 */

public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
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
		String accnumber=request.getParameter("accno");
		String password=request.getParameter("password");
		int amount= Integer.parseInt(request.getParameter("amount"));
		String type=request.getParameter("type");
		
		java.util.Date date= new java.util.Date();
		java.sql.Date gg=new java.sql.Date(date.getTime());
		String with="Withdraw";
		String dep="Deposit";
		DateTimeFormatter dd=DateTimeFormatter.ofPattern("HH:mm");
		LocalDateTime ff=LocalDateTime.now();
		int bal=0;
		int count=0;
		int newbal=0;
		PrintWriter out=response.getWriter();
		 try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
			   Statement s=c.createStatement();
			   
			   s.execute("use jdbc");
			   PreparedStatement p;
			   ResultSet rs=s.executeQuery("select balance from bank where accnumber='"+accnumber+"';");
		      while(rs.next()) {
		    	  bal=rs.getInt("balance");
		    	
		      }
		     if (type.equals(dep)) {
		    	 newbal=amount+bal;
		 				 }
		   
			      if (type.equals(with))   {
			    	  if (bal>0) {
			    		  newbal=bal-amount;
					}
			    	  
			    	  
		      }
			      else {
			    	  out.println("<script>"
								+ "function help(){\r\n"
								+ "    alert(\"Enter the valid Detail!\");\r\n"
								+ "}\r\n"
								+ "help();</script>");
			    	  
			      }
			      String ry="select count(accnumber) as 'Rno' from history";
				     rs=s.executeQuery(ry);
				    
				    while(rs.next()) {
				    	count=rs.getInt("Rno");
				    }
			      String q="update bank set balance="+newbal+" where accnumber="+accnumber;  
			      s.execute(q);
			    
			   String query="insert into history values(?,?,?,?,?,?)";
			   p=c.prepareStatement(query);
			   p.setInt(1, count+1);
				p.setString(2, accnumber);
				p.setInt(3, amount);
				p.setString(4, type);
				p.setDate(5,gg);
				p.setString(6, dd.format(ff));
				int d=p.executeUpdate();
				
				if(d>0) {
					request.setAttribute("accnumber", accnumber);
					
					RequestDispatcher re= request.getRequestDispatcher("transactiondone.jsp");
					  
					   re.forward(request, response);
				}
				else {
					
					out.println("<script>"
							+ "function help(){\r\n"
							+ "    alert(\"Enter the valid Detail!!\");\r\n"
							+ "}\r\n"
							+ "help();</script>");
				}
		     	   }
		   catch(Exception E) {
			   E.printStackTrace();
		   }
			}
	}
