package com.sk.registration;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail=request.getParameter("username");
		String upwd=request.getParameter("password");
		RequestDispatcher dispatcher=null;
		
		HttpSession session=request.getSession();
		
		try {
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon", "root", "sarankumarr007");
			 PreparedStatement pstmt = con.prepareStatement("select * from users where email = ? and password = ?");
		        pstmt.setString(1,uemail);
		        pstmt.setString(2,upwd );
		        
		       ResultSet rs= pstmt.executeQuery();
		       if(rs.next()) {
		    	   session.setAttribute("name",rs.getString("name"));
		    	   dispatcher=request.getRequestDispatcher("index.jsp");
		       }
		       else {
		    	  request.setAttribute("status","failed");
		    	  dispatcher=request.getRequestDispatcher("login.jsp");
		       }
		       dispatcher.forward(request, response);
	}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
}
