package com.sessions;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Read
 */
@WebServlet("/Read")
public class Read extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		String name,email,passw;
		name=request.getParameter("uname");
		email=request.getParameter("email");
		passw=request.getParameter("passw");
		HttpSession session = request.getSession();
		session.setAttribute("uname", name);
		session.setAttribute("email", email);
		session.setAttribute("passw", passw);
		PrintWriter out = response.getWriter();
		out.print("<style>");
		out.print("a { text-decoration: none; color: blue; font-size: 20px; margin-right: 20px; display: inline;  }");
		out.print("a:hover { color: green; }");
		out.print("</style>");
		out.print("<a href='./Oops'>Java</a>");
		out.print("<a href='./Python'>Python</a>");
		out.print("<a href='./Spring'>Spring</a>");

	}

}
