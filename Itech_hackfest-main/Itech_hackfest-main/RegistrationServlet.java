package com.sk.registration;
import java.io.*;
import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String phno=request.getParameter("contact");
//	  PrintWriter out=response.getWriter();
//	  out.print(name+" "+email+" "+pass+" "+phno);
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try {
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon", "root", "sarankumarr007");
			 PreparedStatement pstmt = con.prepareStatement("INSERT INTO users (name,email,password,phno) VALUES(?,?,?,?)");
		        pstmt.setString(1,name);
		        pstmt.setString(2,email );
		        pstmt.setString(3,pass );
		        pstmt.setString(4,phno );
		       int rowcount= pstmt.executeUpdate();
		       dispatcher=request.getRequestDispatcher("registration.jsp");
		       if(rowcount>0) {
		    	   request.setAttribute("status","success");
		       }
		       else {
		    	   request.setAttribute("status","failed");
		       }
		       dispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
       
		
	}

}
