package com.java.model;

import com.java.service.loginDaoImpl;

public class login {

	private String email;
	/*private String EID;
	private String Name;
	private String dept;
	private int phone;
	private String email;
	private String password;
	private String address;
	private String province;
	private String nic;
	private String dob;
	
	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}*/
	private String password;

	public boolean checkEmployee() {
		
		boolean decision=false;
		try {
		String[] returnArrFrmDao = new String[2];
		String[] empArr = new String[2];
		
		empArr[0]= this.email;
		empArr[1]= this.password;
		
		employeeDaoImpl empD = new employeeDaoImpl();
		
		returnArrFrmDao = empD.findEmployee(this);

		String em =(String) returnArrFrmDao[0];
		String pass =(String) returnArrFrmDao[1];
		
		decision = em.equals(this.email) && pass.equals(this.password);
		}catch(NullPointerException e) {
		System.out.println("Nullpointer caught in Employee Model : "+e);
		}
		return(decision);

		
	}

	public void setPassword(String pwd) {
		// TODO Auto-generated method stub
		
	}

	public void setEmail(String usern) {
		// TODO Auto-generated method stub
		
	}

	
	