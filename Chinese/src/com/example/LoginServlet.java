package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String piccode = (String)request.getSession().getAttribute("piccode");
		
		String checkcode = request.getParameter("checkcode"); //get请求默认用iso8859-1格式编码，需要先转为UTF-8
		checkcode = new String(checkcode.getBytes("iso8859-1"), "UTF-8");
		
		response.setContentType("text/html;charset=UTF-8"); //设置本文格式，防止出现乱码
		PrintWriter out = response.getWriter();
		if (checkcode.equals(piccode)) {
			response.sendRedirect("../index.jsp");
		}
		else {
			response.sendRedirect("../login.jsp");
		}
		out.flush();
		out.close();
	}
	
}
