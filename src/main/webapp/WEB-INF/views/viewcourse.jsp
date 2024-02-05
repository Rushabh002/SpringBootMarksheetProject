<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="springMarksheet.Entities.Courses" %> <!-- Update the package accordingly -->
<%@ page import="springMarksheet.Entities.Teachers" %> <!-- Update the package accordingly -->

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Courses & Teachers</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #456990;
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
            color: #2ecc71;
        }

        h2 {
            color: #2ecc71;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #555;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2ecc71;
            color: #fff;
        }

        tbody tr:hover {
            background-color: #f5f5f5;
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

    <h2>Course List</h2>

    <% List<Courses> courselist = (List<Courses>) request.getAttribute("courselist"); %>

    <% if (courselist != null && !courselist.isEmpty()) { %>
        <table border="1">
            <thead>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Teacher Name</th>
                </tr>
            </thead>
            <tbody>
                <% for (Courses course : courselist) { %>
                    <tr>
                        <td><%= course.getCourseId() %></td>
                        <td><%= course.getCourseName() %></td>
                        <td><%= course.getTeachers().getTeacherName() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } else { %>
        <p>No courses available.</p>
    <% } %>
</body>
</html>
