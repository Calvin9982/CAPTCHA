package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int piccode = (int)request.getSession().getAttribute("result");
		
		int checkcode = Integer.parseInt(request.getParameter("checkcode"));
		
		response.setContentType("text/html;charset=UTF-8"); //设置本文格式，防止出现乱码
		PrintWriter out = response.getWriter();
		if (checkcode == piccode) {
			response.sendRedirect("../index.jsp");
		}
		else {
			response.sendRedirect("../login.jsp");
		}
		out.flush();
		out.close();
	}
	
}
