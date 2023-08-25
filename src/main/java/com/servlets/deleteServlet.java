package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.conn.Dbconfig;
import com.dao.StudentDAO;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/delete")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("id"));
		
		StudentDAO dao = new StudentDAO(Dbconfig.getConnection());
		
	    boolean result = dao.deleteStudent(id);
	    if(result) {
	    	response.sendRedirect("/Student_Portal/studentsList.jsp");
	    }else {
	    	response.sendRedirect("/Student_Portal/studentsList.jsp");
	    }
	}

	
	

}
