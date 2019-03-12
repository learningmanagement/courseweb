package com.java.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.register;
//import com.sun.corba.se.pept.transport.Connection;

public  class registerDaoImpl implements registerDao{
	public int stat;
	static Connection con;
	static PreparedStatement ps;
	
	@Override
	public int insertLecturer(register c) {
		int status=0;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
			ps=con.prepareStatement("insert into customer(Name,Email,Password,Address,Province,Phone) values(?,?,?,?,?,?)");
			//ps.setString(1, c.setUserId());
			ps.setString(1, c.getName());
			ps.setString(2, c.getEmail());
			ps.setString(3, c.getPassword());
			ps.setString(4,c.getAddress());
			ps.setString(5,c.getProvince());
			ps.setString(6,Integer.toString((c.getPhone())));
			ps.execute();
			con.close();
				
		}catch(Exception e) {
			System.out.println("lolo"+e);
		}
		
		return status;
	}

	@Override
	public register getUser(String email, String password) {
		register c=new register();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
			ps=con.prepareStatement("select * from customer where Email=? and Password=? ");
			ps.setString(1,email);
			ps.setString(2,password);
			
				System.out.println("CDAO email "+email+"CDAO pass"+password);	
			ResultSet rs=ps.executeQuery();
					while(rs.next()) {
						c.setName(rs.getString("Name"));
						c.setEmail(rs.getString("Email"));
						System.out.println(rs.getString("Name")+rs.getString("Email")+rs.getString("Password")+Integer.parseInt(rs.getString("Phone"))+rs.getString("Address")+rs.getString("Province"));
						c.setPassword(rs.getString("Password"));
						System.out.println("sys");
						c.setPhone(Integer.parseInt(rs.getString("Phone")));
						c.setAddress(rs.getString("Address"));
						c.setProvince(rs.getString("Province"));
					}
							
				}catch(Exception e) {
					System.out.println("lol00"+e);
					
				}	
		return c;
	}

	@Override
	public void updateUser(register c) {
		
		
		try{		
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Qwer");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
		ps=con.prepareStatement("update customer set Name=?,Address=?,Province=?,Phone=? where Email=?");
		ps.setString(1,c.getName());
		ps.setString(5,c.getEmail());
		ps.setString(2, c.getAddress());
		ps.setString(4, Integer.toString(c.getPhone()));
		ps.setString(3, c.getProvince());
		ps.execute();
		con.close();
		System.out.println("apoutr");
			
	}catch(Exception e) {
		System.out.println("haiyoo"+e);
	}
	

	}

	@Override
	public void deleteUser(register c) {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
			ps=con.prepareStatement("delete from customer where Password=?");
			ps.setString(1, c.getPassword());
			
			ps.execute();
			con.close();
			System.out.println("delete");
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	
	public int updateAddress(register c) {
		int status=0;
		
		try{		
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Qweras");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
				ps=con.prepareStatement("update customer set Address=?,Province=? where Name=?");
				ps.setString(3,c.getName());
				ps.setString(1, c.getAddress());
				ps.setString(2, c.getProvince());
				ps.execute();
				con.close();
				System.out.println("modify");
					
			}catch(Exception e) {
				System.out.println("haiyoo"+e);
			}
			return status;
	}

	

	


	/*public int insertpackage(customer c) {
		int status=0;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cabledb","root","root");
			ps=con.prepareStatement("insert into bonuspackage(Name,Email,Package,Price) values(?,?,?,?)");
			
			ps.setString(1, c.getName());
			ps.setString(2, c.getEmail());
			ps.setString(3,c.getPackage());
			ps.setString(4,c.getPrice());
			
			System.out.println("nic");
			ps.execute();
			con.close();
			
			
			
		}catch(Exception e) {
			System.out.println("lolo"+e);
		}
		
		
		return status;
	
	}
	public void deleteCustomerfrmun(register c) {
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/cabledb","root","root");
			ps=((java.sql.Connection) con).prepareStatement("delete from customer where Name=?");
			ps.setString(1, c.getName());
			
			ps.execute();
			con.close();
			System.out.println("delete");
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}*/

	}


