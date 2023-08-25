package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.conn.Dbconfig;
import com.dao.StudentDAO;
import com.entity.student;

/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/update")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String branch = request.getParameter("branch");
		String address = request.getParameter("addres");
		String age = request.getParameter("age");
		String phone = request.getParameter("phone"); 
		String value = request.getParameter("status");
		
		
		
		int id = Integer.parseInt(request.getParameter("id"));

		student stu = new student(id,name, email, phone, age, address, branch);
		
		StudentDAO dao = new StudentDAO(Dbconfig.getConnection());
		boolean result = dao.updateUser(stu);
		
		HttpSession session = request.getSession();
		
		if(result) {
			session.setAttribute("success", "Register successfully");
			response.sendRedirect("/Student_Portal/studentsList.jsp");
		}else {
			session.setAttribute("error", "Error in server");
			response.sendRedirect("/Student_Portal/register.jsp");
		}
	}

		
	}

