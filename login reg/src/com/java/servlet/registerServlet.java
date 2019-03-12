package com.java.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.model.login;
import com.java.model.register;
import com.java.service.registerDao;
import com.java.service.registerDaoImpl;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session= request.getSession();
		String memberChk = request.getParameter("memberCheck");
		String subType   = request.getParameter("submit");
		String encPass = "";
		crypt cry = new crypt(); 
		String key = "Bar12345Bar12345";
		
		if(memberChk.equals("student")) {
			
			registerDao cd = new registerDaoImpl();
			
			String email = request.getParameter("uname");
			String password = request.getParameter("passwd");
			try {
				encPass = cry.encrypt(password, key);
			} catch (Exception e1) {
				System.out.println("Exception in pass: "+e1);
			}
			System.out.println("Password check 1: "+encPass+" Uname check: "+email);
			register c = cd.getUser(email, encPass);
			
			if(subType.equals("login") && c != null && c.getName() != null) {
				

				try {
					
					PreparedStatement ps;
					System.out.println("3");
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
					System.out.println("4");
					ps = (con).prepareStatement("select * from customer where Email=? and Password=? ");
					ps.setString(1, email);
					System.out.println("5");
					ps.setString(2, encPass);
					
					 
					
					System.out.println("1"+c.getName());
					session.setAttribute("member", memberChk);
					request.getSession().setAttribute("username", c.getName());
					session.setAttribute("name", c.getName());
					session.setAttribute("email",c.getEmail());
					session.setAttribute("password",c.getPassword());
					session.setAttribute("address",c.getAddress());
					session.setAttribute("province", c.getProvince());
					session.setAttribute("phone",c.getPhone());
					session.setAttribute("nic",c.getNic());
					request.getRequestDispatcher("index.jsp").forward(request, response);
					return;
					
				}catch(Exception e){
					System.out.println("LoginRegister(Exception customer Login) : "+e);	
				}
				
			}else if(subType.equals("register")) {
				
				String nic = request.getParameter("nic");
				String password1 = request.getParameter("password2");
				
				String name=request.getParameter("name");
				String address = request.getParameter("address");
				String province = request.getParameter("province");
				String phone = request.getParameter("phone");
				
				if(email==""|| name==""|| password==""||password1==""||address==""||province==""|| phone=="" || nic=="" ){
					request.setAttribute("message2","Please fill all the fields");
					request.getRequestDispatcher("register.jsp").forward(request, response);
					return;
				}

					
				
				if(!password.equals(password1)){
					request.setAttribute("message3","password does not match ");
					request.getRequestDispatcher("register.jsp").forward(request, response);
					return;
				}
				int length=phone.length();
				if(length!=10){
					
					request.setAttribute("message3","Give a valid phone number");
					request.getRequestDispatcher("register.jsp").forward(request, response);
					return;
				}
				int length1=nic.length();
				
				if(length1!=10 ){
					
					System.out.println("kjhk");
					request.setAttribute("message3","Give a valid NIC");
					request.getRequestDispatcher("register.jsp").forward(request, response);
					return;
					 }
				
				try {
		
					Class.forName("com.mysql.jdbc.Driver");
					System.out.println("piuy");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cabledb","root","root");
					System.out.println("piuy");
					Statement stmt =((java.sql.Connection) con).createStatement();
					String SQL=("select *from customer where Email='"+email+"'");
					System.out.println("piuy");
					ResultSet rs=stmt.executeQuery(SQL);
				if(rs.next()){

						request.setAttribute("message3","given email is already have an account");
						request.getRequestDispatcher("register.jsp").forward(request, response);
						return;
						}
				else{
									//encryption happens here if all validations have passed
							password = cry.encrypt(password, key);
					
							System.out.println("pop");
							c.setName(name);
							c.setPassword(password);
							c.setEmail(email);
							c.setAddress(address);
							c.setProvince(request.getParameter("province"));
							c.setPhone(Integer.parseInt(request.getParameter("phone")));
							c.setNic(request.getParameter("nic"));
							cd.insertLecturer(c);
							request.setAttribute("message2","Registration successful");
							request.getRequestDispatcher("login.jsp").forward(request, response);
							return;
							}	}				

					
					catch(Exception e){
						System.out.println("LoginRegister(Exception in register customer) : "+e);
					}

			
				
			}else {
					 System.out.println("qweqwe");
				request.setAttribute("message","DATA NOT FOUND,PLEASE SIGN IN");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
				
			}
			
			
		}else if(memberChk.equals("lecturer")) {
			
			String usern = request.getParameter("uname");
			String pass = request.getParameter("passwd");
			String pwd="";
			try {
				pwd = cry.encrypt(pass, key);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(subType.equals("login")) {
				
				if(request.getParameter("uname").equals("admin")) {
					if(request.getParameter("uname").equals("admin") && request.getParameter("passwd").equals("admin")) {
					request.getSession().setAttribute("username", "Admin");
					session.setAttribute("member", "Admin");
					request.getRequestDispatcher("course.jsp").forward(request,response);
					}else {
						request.setAttribute("messagefail", "Login Failed (No employee record found. Please register.)");
						
						request.getRequestDispatcher("login.jsp").forward(request, response);
						return;
					}
				}else {
					
					
					login em = new login();
					//String email;
					//String password;
					em.setEmail(usern);
					em.setPassword(pwd);
					System.out.println("Password Emp : "+pwd);
					
					if(em.checkEmployee()) {
						session.setAttribute("member",request.getParameter("memberCheck"));
						request.getSession().setAttribute("username", request.getParameter("uname"));
						request.getRequestDispatcher("login.jsp").forward(request,response);
					}
					else {
						request.setAttribute("messagefail", "Login Failed (No employee record found. Please register.)");
						request.getRequestDispatcher("login.jsp").forward(request, response);
						return;
					}
				}
			}
		}
		else {
			
		}
	}

}
