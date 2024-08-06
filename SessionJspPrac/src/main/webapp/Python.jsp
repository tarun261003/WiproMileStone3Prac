<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Python</title>
<link rel="stylesheet" href="styles.css" type="text/css">
<link rel="icon" href="https://raw.githubusercontent.com/tarun261003/Portfolio/main/tr.ico">
</head>
<body>
<a href='Home.jsp'>Home</a>
<a href='Oops.jsp'>Java</a>
<a href='Python.jsp'>Python</a>
<a href='Spring.jsp'>Spring</a>
<a href='Logout.jsp' id="logout"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="24" height="24">
<path d="M0 0 C1.32 0 2.64 0 4 0 C3.67 0.70125 3.34 1.4025 3 2.125 C1.88118207 5.34160154 1.63242462 7.61830655 2 11 C3 13 3 13 5 14 C8.14924548 14.39365568 10.11909116 14.52854531 12.875 12.875 C14.52448897 10.12585171 14.31571787 8.15717868 14 5 C13.08742694 2.21433941 13.08742694 2.21433941 12 0 C13.32 0 14.64 0 16 0 C18.83953044 4.25929566 18.73987876 8.00382943 18 13 C16.125 16.125 16.125 16.125 13 18 C7.97377154 18.98876625 4.29486216 18.7769173 -0.125 16.125 C-2.71523135 11.80794774 -2.79383407 7.93012739 -2 3 C-1.34 2.01 -0.68 1.02 0 0 Z " fill="#000000" transform="translate(4,4)"/>
<path d="M0 0 C0.66 0 1.32 0 2 0 C2 3.63 2 7.26 2 11 C1.34 11 0.68 11 0 11 C0 7.37 0 3.74 0 0 Z " fill="#000000" transform="translate(11,2)"/>
</svg></a><% 
if (session != null) {
    String name = (String) session.getAttribute("name");
    String email = (String) session.getAttribute("email");

    // Display user information
    if (name != null && email != null) {
%>
        <div class='welcome'>
            <br>Welcome, <%= name %>!
            <br>
            You can learn Python here.
        </div>
<%
    } else {
%>
        <div class='welcome'>
            <br>Session attributes are missing!
        </div>
<%
    }
} else {
%>
    <div class='welcome'>
        <br>No session found. Please log in.
    </div>
<%
}
%>

</body>
<script>
window.onload = function() {
	var welcomeBox = document.querySelector('.welcome');
	if (welcomeBox) { welcomeBox.classList.add('show');
	}
	}
</script>
</html>