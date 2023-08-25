package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.xml.crypto.Data;

import com.entity.student;
import com.google.gson.Gson;

/**
 * Servlet implementation class desmoServlet
 */
@WebServlet("/demo")
public class desmoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public desmoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  sent = "Hello world from servlet to react js";
		response.addHeader("Access-Control-Allow-Origin", "http://localhost:3000");
		
		student student = new student();
		
		Map<String,Object> data = new HashMap<String, Object>();
		data.put("student", student);
		
		Gson gson = new Gson();
		String data1 = gson.toJson(data);
		response.getWriter().print(data1);
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
