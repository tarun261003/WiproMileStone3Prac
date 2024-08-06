<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String name=request.getParameter("uname");
String email=request.getParameter("email");
String passw=request.getParameter("passw");
session.setAttribute("name", name);
session.setAttribute("email", email);
response.sendRedirect("Home.jsp");
%>