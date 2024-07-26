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
 * Servlet implementation class Python
 */
@WebServlet("/Python")
public class Python extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Set response content type
	    response.setContentType("text/html");
	    
	    // Get the session
	    HttpSession session = request.getSession(false);
	    
	    // Prepare output writer
	    PrintWriter out = response.getWriter();
	    
	    // Add CSS styles
	    out.print("<style>");
	    out.print("a { text-decoration: none; color: blue; font-size: 20px; margin: 20px; display: inline; }");
	    out.print("a:hover { color: green; }");
	    out.print("body { font-family: Arial, sans-serif; font-size:20px;color:green;}");
	    out.print(".welcome { display: none; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 20px; box-shadow: 0px 0px 10px rgba(0,0,0,0.5); z-index: 1000; }");
	    out.print(".welcome.show { display: block; animation: popUp 0.5s ease-in-out; }");
	    out.print("@keyframes popUp { from { opacity: 0; transform: translate(-50%, -60%); } to { opacity: 1; transform: translate(-50%, -50%); } }");
	    out.print("</style>");
	    out.print("<script>");
	    out.print("window.onload = function() {");
	    out.print("  var welcomeBox = document.querySelector('.welcome');");
	    out.print("  if (welcomeBox) { welcomeBox.classList.add('show'); }");
	    out.print("}");
	    out.print("</script>");

	    // Add links
	    out.print("<a href='./Oops'>Java</a>");
	    out.print("<a href='./Python'>Python</a>");
	    out.print("<a href='./Spring'>Spring</a>");
	    
	    
	    // Get session attributes
	    if (session != null) {
	        String name = (String) session.getAttribute("uname");
	        String email = (String) session.getAttribute("email");
	        
	        // Display user information
	        if (name != null && email != null) {
	            out.print("<div class='welcome'>");
	            out.print("<br>Welcome, " + name + "!");
	            out.print("<br>");
	            out.print("Confirm your email: " + email);
	            out.print("<br>");
	            out.print("You can learn Python here.");
	            out.print("</div>");
	        } else {
	            out.print("<div class='welcome'>");
	            out.print("<br>Session attributes are missing!");
	            out.print("</div>");
	        }
	    } else {
	        out.print("<div class='welcome'>");
	        out.print("<br>No session found. Please log in.");
	        out.print("</div>");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
