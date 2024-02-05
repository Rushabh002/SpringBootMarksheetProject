<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="springMarksheet.Entities.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Students</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #343a40; /* Dark background color */
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #2ecc71; /* Highlight color on hover */
        }

        h2 {
            color: #2ecc71; /* Header color */
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2ecc71; /* Header background color */
            color: #fff;
        }

        tbody tr:hover {
            background-color: #f5f5f5; /* Row background color on hover */
        }

        p {
            color: #555;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <nav>
        <a href="/">Home</a>
        <a href="/about">About</a>
    </nav>

    <h2>Student List</h2>

    <% List<Student> studentList = (List<Student>) request.getAttribute("list"); %>

    <% if (studentList != null && !studentList.isEmpty()) { %>
        <table border="1">
            <thead>
                <tr>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Standard</th>
                </tr>
            </thead>
            <tbody>
                <% for (Student student : studentList) { %>
                    <tr>
                        <td><%= student.getRollNo() %></td>
                        <td><%= student.getName() %></td>
                        <td><%= student.getAge() %></td>
                        <td><%= student.getStandard() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } else { %>
        <p>No students available.</p>
    <% } %>
</body>
</html>
