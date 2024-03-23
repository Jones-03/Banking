package Accounts;

public class request {
  String name, email, phone, bankname, location, pay, password, reenter,accnumber;

public request(String name, String email, String phone, String bankname, String location, String password,
		 String accnumber) {
	super();
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.bankname = bankname;
	this.location = location;
	
	this.password = password;
	
	
	this.accnumber=accnumber;
}
public String getAccnumber() {
	return accnumber;
}
public void setAccnumber(String accnumber) {
	this.accnumber = accnumber;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getBankname() {
	return bankname;
}
public void setBankname(String bankname) {
	this.bankname = bankname;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}



public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}


  
	

}
