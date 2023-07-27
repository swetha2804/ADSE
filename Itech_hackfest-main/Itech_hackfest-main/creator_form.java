package com.sk.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class creator_form
 */
@WebServlet("/creator_form")
public class creator_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cre_name=request.getParameter("cre_name");
		String cre_id=request.getParameter("cre_id");
		String cre_plat=request.getParameter("cre_plat");
		String age=request.getParameter("age");
		String cre_channel=request.getParameter("cre_channel");
		String cre_count=request.getParameter("cre_count");
		String sub=request.getParameter("sub");
		String email=request.getParameter("email");
		String desc=request.getParameter("desc");
//	  PrintWriter out=response.getWriter();
//	  out.print(name+" "+email+" "+pass+" "+phno);
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try {
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon", "root", "sarankumarr007");
			 PreparedStatement pstmt = con.prepareStatement("INSERT INTO creator  VALUES(?,?,?,?,?,?,?,?,?)");
		        pstmt.setString(1,cre_name);
		        pstmt.setString(2,cre_id );
		        pstmt.setString(3,cre_plat );
		        pstmt.setString(4,age );
		        pstmt.setString(4,cre_channel );
		        pstmt.setString(4,cre_count );
		        pstmt.setString(4,sub );
		        pstmt.setString(4,email );
		        pstmt.setString(4,desc );
		       int rowcount= pstmt.executeUpdate();
		       
		      
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
