package Accounts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
public class Data {
	public boolean sign(request next) {
	boolean check=false;
	String name=next.getName();
	String email=next.getEmail();
	String phone=next.getPhone();
	String bankname=next.getBankname();
	String location=next.getLocation();
	String password=next.getPassword();
	String accnumber=next.getAccnumber();
	long ifsc;
	int count=0;
	Random as= new Random();
	long aa=Math.abs(as.nextLong()%1000000000000002L);
 ifsc=Math.abs(as.nextLong()%10478340001L);
	
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","Jones2003!");
	    Statement s=c.createStatement();
	    s.execute("use jdbc");
	    String ry="select count(uname) as 'Rno' from bank";
	    ResultSet rs=s.executeQuery(ry);
	    
	    while(rs.next()) {
	    	count=rs.getInt("Rno");
	    }
	    
	    String qry="insert into bank values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement p=c.prepareStatement(qry);
		p.setInt(1, count+1);
		p.setString(2, name);
		p.setString(3, email);
		p.setString(4, phone);
		p.setString(5, password);
		p.setString(6, accnumber);
		p.setString(7, bankname);
		p.setLong(8, ifsc);
		p.setString(9, location);
		p.setInt(10, 0);
		String type="opening bal";
		
		int d=p.executeUpdate();
		if(d>0) {
			String query="insert into history values(?,?,?,?)";
			p=c.prepareStatement(query);
			
			p.setString(1, name);
			p.setString(2, accnumber);
			p.setInt(3,0);
			p.setString(4,type);
			check=true;
			c.close();
		}
	}
		 catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return check;
	}
}
