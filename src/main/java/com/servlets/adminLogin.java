package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.util.Iterator;

import com.conn.Dbconfig;
import com.dao.adminDAO;

/**
 * Servlet implementation class adminLogin
 */
@WebServlet("/loginAdmin")
public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		try {
			
			
			com.entity.adminLogin admin = new com.entity.adminLogin(email, password);
			adminDAO dao = new adminDAO(Dbconfig.getConnection());
			
			boolean result = dao.addAdmin(admin);
			
			HttpSession session = request.getSession();
			Cookie cookie = new Cookie("cookie", "true");
			if(result) {
				cookie.setAttribute("status", "true");
				session.setAttribute("status", "true");
				response.sendRedirect("/Student_Portal/");
			}else {
				cookie.setAttribute("status", "false");
				session.setAttribute("status", "false");
				response.sendRedirect("/Student_Portal/login");
			}
			response.addCookie(cookie);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
