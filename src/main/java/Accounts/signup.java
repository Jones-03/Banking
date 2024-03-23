package Accounts;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signup
 */

public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String bankname=request.getParameter("Bank");
		String location=request.getParameter("location");
		String password=request.getParameter("password");
		Random as= new Random();
		String accnumber;
		long aa=Math.abs(as.nextLong()%1000000000000002L);
		accnumber=String.format("%016d", aa);
		request next= new  request(name, email, phone, bankname, location,  password, accnumber);
		Data d=new Data();
		PrintWriter out=response.getWriter();
		String execute=" ";
		try {
		if(d.sign(next)) {
	     	RequestDispatcher re= request.getRequestDispatcher("Detail.jsp");
			re.forward(request, response);
	}
		else {
		execute="<script>function showAlert(){\r\n"
					+ " alert(\"Someone Has already Registered with your 'email' or 'contact'\");\r\n"
					+ "						}\r\n"
					+ "showAlert();</script>";
		}
		}
		catch(Exception E ) {
			response.sendRedirect("Signup.jsp");
			
		}
		out.println(execute);
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
	}
	}
  
