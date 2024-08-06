<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="stud1" class="com.bean.StudentDetails"></jsp:useBean>
<jsp:setProperty name="stud1" property="id" value="4439"/>
<jsp:setProperty name="stud1" property="name" value="Tarun"/>
<jsp:setProperty name="stud1" property="dept" value="CSD"/>
<jsp:setProperty name="stud1" property="clg" value="NRI"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 20px;
        }
        table {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Student Details</h2>
    <table>
        <tr>
            <th>Field</th>
            <th>Details</th>
        </tr>
        <tr>
            <td>Student Id</td>
            <td><jsp:getProperty name="stud1" property="id"/></td>
        </tr>
        <tr>
            <td>Student Name</td>
            <td><jsp:getProperty name="stud1" property="name"/></td>
        </tr>
        <tr>
            <td>Department Name</td>
            <td><jsp:getProperty name="stud1" property="dept"/></td>
        </tr>
        <tr>
            <td>College Name</td>
            <td><jsp:getProperty name="stud1" property="clg"/></td>
        </tr>
    </table>
</body>
</html>
