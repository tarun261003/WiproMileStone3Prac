<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="emp1" class="com.bean.Employee"></jsp:useBean>
<jsp:setProperty name="emp1" property="name" value="tarun"/>
<jsp:setProperty name="emp1" property="dept" value="CSD"/>
<jsp:setProperty name="emp1" property="location" value="Nuzvid"/>

<h1><jsp:getProperty name="emp1" property="name"/></h1>
<h1><jsp:getProperty name="emp1" property="dept"/></h1>
<h1><jsp:getProperty name="emp1" property="location"/></h1>

