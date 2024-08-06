<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles.css" type="text/css">
<title>Insert title here</title>

</head>
<body>
<%
session.invalidate();
%>
<div id="customAlert" class="alert">
    <div class="alert-content">
        <span class="closebtn" onclick="closeAlert()">&times;</span>
        <p id="alertMessage"></p>
        <span id="emoji"></span>
    </div>
</div>

<script type="text/javascript">
function createAlertBox() {
    var alertBox = document.createElement('div');
    alertBox.id = 'customAlert';
    alertBox.className = 'alert';
    alertBox.innerHTML = `
        <div class="alert-content">
            <span class="closebtn" onclick="closeAlert()">&times;</span>
            <p id="alertMessage"></p>
            <span id="emoji"></span>
        </div>
    `;
    document.body.appendChild(alertBox);
}

function showAlert(message) {
    var alertBox = document.getElementById('customAlert');
    if (!alertBox) {
        createAlertBox();
        alertBox = document.getElementById('customAlert');
    }
    document.getElementById('alertMessage').innerText = message;
    document.getElementById('emoji').innerHTML = "&#128532;"; // Sad face emoji
    alertBox.style.display = 'block';
}

function closeAlert() {
    var alertBox = document.getElementById('customAlert');
    if (alertBox) {
        alertBox.style.display = 'none';
    }
}

function logout() {
    showAlert("Thank You!");
    setTimeout(function() {
        window.location.href = "Login.html";
    }, 3000); // Redirect after 3 seconds
}

logout();
</script>
</body>
</html>
